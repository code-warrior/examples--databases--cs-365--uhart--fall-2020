# MongoDB Command Line Tutorial

## Starting the MongoDB Service
Like MySQL, MongoDB requires a server to run in order for users to work with MongoDB databases. We’ll refer to it as a service, and, it’s possible to start the MongoDB service bare or with a configuration file. For a bare start, simply run:

```bash
mongod
```

To start the service with a configuration file, use the `--config` flag (or its shortcut, `-f`). **Note**: The following is a macOS-specific path:

```bash
mongod --config /usr/local/etc/mongod.conf
```

The shortcut is:

```bash
mongod -f /usr/local/etc/mongod.conf
```

You can also start the service as a Brew in macOS:

```bash
brew services start mongodb-community@4.4
```

---

## Stopping the Service
To stop the service, first get the process ID (`pid`) by running `top`, then search for “`mongod`”:

```bash
top | grep mongod
```

Now, kill the process by interrupting it with the `-2` flag.

```bash
kill -2 <PROCESS_ID>
```

If you now try running MongoDB (via the `mongo` command), it shouldn’t work.

---

## Exiting
Type `CNTRL + C` or `exit` to get out.

---

## Clear the Screen
```bash
CNTL + L
```

or

```bash
cls
```

---

## Connecting to MongoDB
With the service started, you can now work with Mongo. Instantiate a new command line window and type:

```bash
mongo
```

---

## Show Databases
Like MySQL, you can use `show databases;` to list your databases:

```bash
show databases
```

**Note**: A semicolon is _not_ required to terminate the MongoDB command.

A shorter version is also available:

```bash
show dbs
```

---

## Show the Database I’m Currently Focused On
To see which database Mongo is currently in, type:

```bash
db
```

You can also list the current database with a longer command:

```bash
db.getName()
```

**Note**: If you’re focused on a database that has no data, the database won’t show up when you type `show dbs`.

---

## Get Help on the Database
You can get general help with Mongo:

```bash
db.help()
```

You can also get help specific to your database. For example, let’s look at the help files associated with the `test` database:

```bash
db.test.help()
```

---
