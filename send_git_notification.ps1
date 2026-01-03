# Git Commit Email Notification Script
# This script sends an email notification about git changes to rijuvan.ansari@gmail.com

$commitHash = "0be035cddcddc0fe5bc3ca21067f29066ca536d3"
$commitMessage = "Amount test cases added"
$branch = "delete-tax-calc"
$filesChanged = "src/test/java/CalculateTaxTest.java"
$changes = "1 file changed, 11 insertions(+), 2 deletions(-)"

$emailBody = @"
Dear Rijuvan,

This is to inform you about the recent changes committed to the git repository.

Commit Details:
- Commit Hash: $commitHash
- Branch: $branch
- Commit Message: $commitMessage
- Files Changed: $filesChanged
- Changes: $changes

Summary:
Amount test cases have been added to CalculateTaxTest.java. The test cases include:
- testCalculateTaxForAmount200000: Tests tax calculation for amount 200000.0
- testCalculateTaxForAmountNegative100000: Tests tax calculation for negative amount -100000.0

The changes have been successfully committed to the repository.

Best regards,
Automated Git Notification
"@

$to = "rijuvan.ansari@gmail.com"
$subject = "Git Commit Notification: Amount test cases added"

# Try to send email - you need to configure SMTP settings below
# For Gmail, you need to use an App Password (not your regular password)
# Go to: Google Account > Security > 2-Step Verification > App passwords

Write-Host "Attempting to send email notification..." -ForegroundColor Cyan

# Uncomment and configure these variables with your SMTP settings:
# $smtpServer = "smtp.gmail.com"  # For Gmail
# $smtpPort = 587
# $username = "your-email@gmail.com"
# $password = "your-app-password"  # Use App Password for Gmail
# $from = "your-email@gmail.com"

# If you want to use Yahoo (since git config shows yahoo.com):
# $smtpServer = "smtp.mail.yahoo.com"
# $smtpPort = 587
# $username = "rijuvan.ansari@yahoo.com"
# $password = "your-app-password"  # Yahoo also requires App Password
# $from = "rijuvan.ansari@yahoo.com"

# Uncomment the following lines once you've configured SMTP settings above:
# try {
#     $securePassword = ConvertTo-SecureString $password -AsPlainText -Force
#     $credential = New-Object System.Management.Automation.PSCredential($username, $securePassword)
#     
#     Send-MailMessage -SmtpServer $smtpServer -Port $smtpPort -UseSsl -Credential $credential -From $from -To $to -Subject $subject -Body $emailBody -BodyAsHtml:$false
#     
#     Write-Host "Email sent successfully to $to" -ForegroundColor Green
# } catch {
#     Write-Host "Error sending email: $_" -ForegroundColor Red
#     Write-Host "Please check your SMTP configuration and credentials." -ForegroundColor Yellow
# }

# Display email content for manual sending if needed
Write-Host "`nEmail Content (for manual sending if needed):" -ForegroundColor Yellow
Write-Host "=" * 60
Write-Host "To: $to"
Write-Host "Subject: $subject"
Write-Host "`n$emailBody"
Write-Host "=" * 60

Write-Host "`nNote: To send email automatically, uncomment and configure SMTP settings in this script." -ForegroundColor Yellow

