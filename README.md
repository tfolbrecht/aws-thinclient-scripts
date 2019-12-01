# aws-thinclient-scripts


## Motivation:
I love to code... but, I also love to travel. 

Traveling frequently places lots of constraints on your ability to effectively do your computing

Ideally we want something
* Thin
* Light
* Energy effecient
* Inexpensive
* Repairable

I settled on a cheap chromebook from dell that really fits the above goals well. 

* Less than 20mm/ about half an inch
* Around 3 pounds with the charger
* ![battery](assets/battery.png)
* <$200
* Philips head screws, made for classrooms, and everything is user servicable

I'm currently doing all of my computing from a thin client.

## A Glorified Text Editor

Linux and I can do a surprising amount with constrained resources, but sometimes I need to do more heavy duty things like compile large programs, work with big data sets, etc. So I offload that (when internet connection permits) to a cloud provider.

I wrote some scripts to make my life a little less tedious while feeling like I'm adequately secure from someone taking over my account and leaving a fat bill. 

All of my user credentals live on an encrypted SD card, so first thing I do is decrypt and mount it when I log in. I have exports in my `.bashrc` to let the awscli know where the credentials and configs. So I can use my thinclient or any Linux Computer around

I don't like bothering with 2FA for this sort of thing (just hobby coding and a few sites), so I have an account I use for developing that I can quickly issue a one time password to.

## New AWS Session
[newawssesh](./newawssesh) uses `aws iam  create-login-profile` to issue a new password for the cli key users aws console. 

## Kill AWS Session
[killawssesh](./killawssesh) uses `aws iam delete-login-profile` to remove the aws console profile from the cli key user. 

## Kill CLI User
[killcliuser](./killcliuser) users `aws iam delete-access-key` to invalidate the CLI key on AWS making what's in the local config file irrelevant. I have a list of One-Time-Pad style key pairs so I can invalidate a few times.

## AWS Console
[awsconsole](./awsconsole) will launch the console with the accountid using `aws sts get-caller-identity`


## Vision
Ideally these would work without the AWS cli, perhaps just some unix utilities, a small python program, or some hand crafted curl requests. I'll study the AWS IAM api and get back to it, but I want something quick and dirty to test the flow.
