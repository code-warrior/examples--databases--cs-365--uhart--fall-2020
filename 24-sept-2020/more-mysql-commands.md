# More MySQL Commands
Principles of Database (CS 365)
Fall 2020

---

## The `DELETE` Statement
Remove all rows from a table.

```sql
DELETE FROM track;
```

---

## The `DELETE` Statement
Let’s delete Every Country’s Sun

```sql
DELETE FROM album WHERE album_name = "Every Country’s Sun";
```

or

```sql
DELETE FROM album
WHERE (artist_id = 5 AND album_id = 2);
```

The latter makes use of the keys that we used to design the database. As such, it is more secure.

---
