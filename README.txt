#Flaskr + DUO = 2FA your login

## How to use
1. Setup a Duo [WebDSK](https://duo.com/docs/duoweb) application
2. Generate akey: "python generate_akey"
3. Edit duo.conf file include ikey, skey, akey (generated in previous step) and API
4. Open up a command line and run ``` python flaskr.py ```
5. Navigate your browser to ```http://127.0.0.1:5000/```
6. Click 'Login'

##Modify Web
Edit the HTML files as necessary in the templates folder

##Configuration files:

This application relies on two configuration files that follow the standard .ini format. These variables are all read through `ConfigParser()` into a dictionary.

###app.conf
```
; My App configuration

[app]
skey = xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
```
The `skey` is the client-side session cookie for remembering you are logged in. it can be any alpha-numeric string.

###duo.conf
```
; Duo integration config

[duo]

ikey = <your ikey>
skey = <your skey>
akey = <your generated akey>
host = <your api-hostname>
```

The `ikey`, `skey`, and `host` values can be found in the [Duo Admin panel](https://admin.duosecurity.com). Please see the documentation for using the Python [WebSDK](https://duo.com/docs/duoweb) on how to generate a suitable string for the `akey` value.
