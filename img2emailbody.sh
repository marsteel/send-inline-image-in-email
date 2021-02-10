# convert the png image to base64 encode
# https://superuser.com/questions/1225134/why-does-the-base64-of-a-string-contain-n

script_path="/root/scripts/"

#img_encoded is to store the base64 code of the image file
img_encoded=$(/usr/bin/base64 -w 0 ${script_path}/image_file.png)

#HERE DOC to create a compliant email with inline image for sendmail
cat <<ADDTEXT
FROM: from@example.com
TO: to@example.com
Bcc: bcc@example.com
SUBJECT: 24hr Performance Report
Content-Type: multipart/related; boundary="_004_VI1P122MB01251A309A862029F780A1E8EF8D9VI1P122MB0125EURP_"; type="multipart/alternative"
MIME-Version: 1.0


--_004_VI1P122MB01251A309A862029F780A1E8EF8D9VI1P122MB0125EURP_
Content-Type: multipart/alternative; boundary="_000_VI1P122MB01251A309A862029F780A1E8EF8D9VI1P122MB0125EURP_"

--_000_VI1P122MB01251A309A862029F780A1E8EF8D9VI1P122MB0125EURP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

[cid:image001.jpg@01D70001.B612C650]


--_000_VI1P122MB01251A309A862029F780A1E8EF8D9VI1P122MB0125EURP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
</head>
<body>
<img width=3D"822" height=3D"701" style=3D"width:8.5=
583in;height:7.3in" id=3D"Picture_x0020_1" src=3D"cid:image001.jpg@01D70001.B612C650">
</body>
</html>

--_000_VI1P122MB01251A309A862029F780A1E8EF8D9VI1P122MB0125EURP_--
--_004_VI1P122MB01251A309A862029F780A1E8EF8D9VI1P122MB0125EURP_
Content-Type: image/jpeg; name="image001.jpg"
Content-Description: image001.jpg
Content-Disposition: inline; filename="image001.jpg"; size=95680; creation-date="Wed, 10 Feb 2021 15:08:59 GMT"; modification-date="Wed, 10 Feb 2021 15:08:59 GMT"
Content-ID: <image001.jpg@01D70001.B612C650>
Content-Transfer-Encoding: base64

$img_encoded

--_004_VI1P122MB01251A309A862029F780A1E8EF8D9VI1P122MB0125EURP_--
ADDTEXT
