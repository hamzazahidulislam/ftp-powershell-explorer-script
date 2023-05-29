# # Import the necessary UI Automation assemblies
# Add-Type -AssemblyName UIAutomationClient
# Add-Type -AssemblyName UIAutomationTypes

# # Define the form field values
# $field1 = "Value 1"
# $field2 = "Value 2"

# # Start the application (replace 'YourApplication.exe' with the actual application name or path)
# $application = Start-Process -FilePath "explorer.exe" -PassThru

# # Wait for the application to start and become responsive
# $null = $application.WaitForInputIdle()

# # Get the application main window
# $mainWindow = Get-UIAutomationWindow -ProcessId $application.Id

# # Find and populate the first field
# $textField1 = $mainWindow | Get-UIAutomationElement -ControlType 'Edit' | Select-Object -First 1
# $textField1 | Set-UIAutomationValue -Value $field1

# # Find and populate the second field
# $textField2 = $mainWindow | Get-UIAutomationElement -ControlType 'Edit' | Select-Object -Skip 1 -First 1
# $textField2 | Set-UIAutomationValue -Value $field2

# # Submit the form (replace 'SubmitButton' with the actual name or ID of the submit button)
# $submitButton = $mainWindow | Get-UIAutomationElement -Name 'SubmitButton'
# $submitButton | Invoke-UIAutomationButtonClick
# # Prompt the user to enter credentials

# ---

# $credential = Get-Credential -Message "Enter your credentials"

# # Extract the username and password from the entered credentials
# $username = $credential.UserName
# $password = $credential.GetNetworkCredential().Password

# # Display the entered values
# Write-Output "Username: $username"
# Write-Output "Password: $password"

# ----

Start-Process "Log On As"
 
#Step1: input the name “Anna Smith”
Get-UIAWindow -Name 'Log On As' | Get-UIAEdit -AutomationId 'textBox1' -Name 'User name:'|Set-UIATextBoxText "xyz"
 
#Step1: input the name “Anna Smith”
Get-UIAWindow -Name 'Log On As' | Get-UIAEdit -AutomationId 'textBox2' -Name 'Password:'|Set-UIATextBoxText "xyz"
 
#Step4: click “Submit”
Get-UIAWindow -Name 'Log On As' | Get-UIAButton -Name 'Log On'|


# Submit the form (replace 'SubmitButton' with the actual name or ID of the submit button)
$submitButton = $mainWindow | Get-UIAutomationElement -Name 'Log On'
$submitButton | Invoke-UIAutomationButtonClick
# Prompt the user to enter credentials


# ref https://www.softwaretestinghelp.com/desktop-application-ui-automation-with-powershell/