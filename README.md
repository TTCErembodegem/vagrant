Vagrant
=======

- Install Vagrant
- Clone this repo and..
- `vagrant up`

**ATTN: Hier geen migraties meer toevoegen**.  
Gebruik `Add-Migration` in `TTC-React-Back` voor alle nieuwe database wijzigingen.

Connect to MySql with
---------------------

IP: localhost  
User: ttcuser  
Pwd: test123  
Port: **33060**  
Database: ttc_erembodegem  

Ik had er misschien ook phpmyadmin moeten opzetten...  
Ik gebruik een Desktop GUI: HeidiSQL (niet ideaal maar veel beter (en gratis) is er wss nog altijd niet)

MySql max_connections:  
```
cd /etc/mysql
cat my.cnf | grep "max_connections"

sudo service mysqld restart
```

Bring database up to speed
--------------------------
**Running Migrations**  
Visual Studio > Package Manager Console:  
`Update-Datebase` with Default project: `Ttc.DataAccess`

Run the `Ttc.Syncer`

Deploy the app
--------------
**Frontend**: `npm run deploy`  
Puts the public files into `./build/release`  
Usually it is sufficient to upload `app.js`

**Backend**:  
Build in `release` mode.  
Upload the `Ttc.*.dll`s