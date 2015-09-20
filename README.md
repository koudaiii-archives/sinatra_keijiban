# memories

```
 $ bundle install
```

```
$ bundle exec sqlite3 db/post.db
sqlite> CREATE TABLE posts (
id INTEGER PRIMARY KEY AUTOINCREMENT,
text TEXT,
img_file_name TEXT,
star_count INTEGER default 0);
sqlite>
```

```
 $ bundle exec ruby main.rb
```
