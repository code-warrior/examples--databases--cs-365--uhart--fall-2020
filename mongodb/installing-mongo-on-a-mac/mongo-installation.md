## Installing MongoDB on a Mac
Visit Mongo’s web site on [how to install MongoDB](https://docs.mongodb.com/manual/administration/install-community/) Community Edition.

1. Visit MongoDB’s [download center](https://www.mongodb.com/download-center/community).
2. Download version `4.4.1` (as of 10/2020).
3. Double-click the `.tgz` file.
4. Navigate into `mongodb-macos-x86_64-4.4.1/bin` and copy every item in the `bin` folder over to `/usr/local/bin`:
```bash
sudo cp * /usr/local/bin/
```
5. Make the Mongo database directory in the root of the file system:
```bash
sudo mkdir -p /data/db
```
6. Change permissions on both `/data` and `/data/db`:
```bash
sudo chmod 777 /data; sudo chmod 777 /data/db
```
7. Start the Mongo daemon:
```bash
  mongod --config /usr/local/etc/mongod.conf
```
8. Open a new window and launch Mongo:
```bash
mongo
```
