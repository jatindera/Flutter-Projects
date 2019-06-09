# Chatbot using Flutter and Dialogflow

Please follow the instructions below.

## Getting Started

1. Open [dialogflow.com](https://www.dialogflow.com) and create a new agent. I am assuming that you have some basic knowledge of dialoglfow.com. Please do google if you need. To run program quickly, enable smalltalk on dialogflow.com. Later, you can program dialogflow the way you want. 

2. While creating agent on Dialogflow.com, it will ask you to either create a new Google project or choose the existing Google project. Create new project and open google developer console. [Click here to go to Google developer console](https://console.developers.google.com)

3. In the top menu, you will see a drop down. Make sure your new project is selected. If you don't see your project, search it by typing initial letters of your project and you will get it.

4. Click "Credentials" from left hand side menu bar.

5. Click on "Create Credentials" button. Choose "Create Service Account Key"

6. Choose "DialogFlow Integrations" and select "JSON". Click Create.

7. Rename file as "credentials.json". The entry with same name is there in pubspec.yaml. If you choose some other name, make sure to change name in pubspec.yaml.

8. Create a folder named "config" in root of your flutter project. Paste "credential.json" in the config folder. To clarify, both lib and config folder should be at same level.

9. Open Android/app/build.gradle and make sure that min sdk is 21

That is it. Run your flutter app and you are good to go. Thanks.
