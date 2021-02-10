# Send inline image in email

## Description
The script can automate the task of posting performance metric charts to slack channels or any other collaboration tools if only email is allowed.

## Usage
img2emailbody.sh will embed .PNG image_file.png to an email as inline image.
send_email.sh will invoke img2emailbody.sh and send the email with sendmail

## Customization
To modify the template, please send a designed email to Gmail and show original of the email, then you can see how the image can be embedded as Content-ID object.
