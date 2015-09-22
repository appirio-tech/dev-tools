# tcjwt

A shell script that makes copying (v3) jwts for use in platform api calls a little easier

# Usage

1. visit http://api.topcoder-dev.com/sample/index2.html, log in, and *copy your jwt to the clipboard*
2. ```tcjwt refresh``` will trade that jwt for a refresh token and store it in your home directory
3. for about the next month ```tcjwt``` will use the refresh token to get a jwt and copy it to your
   clipboard for easy pasting (into postman, maybe)

```tcjwt help``` will print the commands and the storage location

# Caveats

OSX only since it uses ```pbcopy``` and ```pbpaste``` to access the system clipboard. Should work fine
on linux if you modify it to use ```xclip -i``` and ```xclip -o``` instead.
