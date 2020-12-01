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

```
mongo
```

---
