const vscode = require('vscode');
const fs = require('fs-extra');
const path = require('path');
const { exec } = require('child_process');

function activate(context) {
    let disposable = vscode.commands.registerCommand('extension.createProjectStructure', async () => {
        const projectName = 'lib';
      

        const templatesDir = path.join(__dirname, 'templates');
        const templates = fs.readdirSync(templatesDir);

        const selectedTemplate = await vscode.window.showQuickPick(templates, {
            placeHolder: 'Select a template'
        });

        if (!selectedTemplate) return;

        const sourcePath = path.join(templatesDir, selectedTemplate);
        const targetPath = path.join(vscode.workspace.rootPath || '.', projectName);

        try {
            // نسخ القالب إلى المجلد الجديد
            fs.copySync(sourcePath, targetPath);

            // استبدال المتغيرات الديناميكية في الملفات (مثل {{projectName}})
            replaceVariablesInFiles(targetPath, { projectName, date: new Date().toISOString() });

            vscode.window.showInformationMessage(`Project "${projectName}" created with template "${selectedTemplate}"`);
        } catch (error) {
            vscode.window.showErrorMessage(`Failed to create project: ${error.message}`);
        }
    });

    context.subscriptions.push(disposable);
}

// استبدال المتغيرات في الملفات
function replaceVariablesInFiles(dirPath, variables) {
    const files = fs.readdirSync(dirPath);

    for (const file of files) {
        const filePath = path.join(dirPath, file);
        if (fs.statSync(filePath).isDirectory()) {
            replaceVariablesInFiles(filePath, variables);
        } else {
            let content = fs.readFileSync(filePath, 'utf8');
            for (const [key, value] of Object.entries(variables)) {
                content = content.replace(new RegExp(`{{${key}}}`, 'g'), value);
            }
            fs.writeFileSync(filePath, content);
        }
    }
}

function deactivate() {}

module.exports = {
    activate,
    deactivate
};