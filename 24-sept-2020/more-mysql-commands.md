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

## The `DELETE` Statement
Let’s delete _all_ albums with an `album_id` of `1`.

```sql
DELETE FROM ALBUM WHERE album_id = 1;
```

---

## The `DELETE` Statement
Let’s delete an artist, their album(s), and those albums’ tracks. First, let’s choose a band, Melvins.

```sql
SELECT artist_id, artist_name, album_name
FROM artist INNER JOIN album
USING (artist_id)
WHERE artist_name = "Melvins";
```

---

## The `DELETE` Statement
Now we can delete everything related to The Melvins.

```sql
DELETE FROM artist, album, track USING artist, album, track
WHERE artist.artist_id = 4 AND
artist.artist_id = album.artist_id AND
artist.artist_id = track.artist_id AND
album.album_id = track.album_id;
```

Compare with…

```sql
DELETE FROM artist, album, track USING artist, album, track
WHERE artist.artist_id = 4 AND
artist.artist_id = album.artist_id AND
artist.artist_id = track.artist_id;
```

---
## The `DELETE` Statement

And, we can now verify:

```sql
SELECT track_name
FROM track
WHERE artist_id = 4;
```
