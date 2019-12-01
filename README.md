# aws-thinclient-scripts

I'm currently doing all of my computing from a thin client

I wrote some scripts to make my life a little less tedious. 

All of my user credentals live on an encrypted SD card, so first thing I do is decrypt and mount it when I log in. I have exports in my `.bashrc` to let the awscli know where the credentials and configs. 

I don't like bothering with 2FA for this sort of thing (just hobby coding and a few sites), so I have an account I use for developing that I can quickly issue a one time password to.

## New AWS Session
[newawssesh](./newawssesh) uses `aws iam  create-login-profile` to issue a new password for the cli key users aws console. 

## Kill AWS Session
[killawssesh](./killawssesh) uses `aws delete-login-profile` to remove the aws console profile from the cli key user. 

## AWS Console
[awsconsole](./awsconsole) will launch the console with the accountid using `aws sts get-caller-identity`