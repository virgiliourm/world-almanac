# Base Rails

## Standard Workflow

 1. Start the web server by running `bin/server`.
 1. Navigate to your live application.
 1. As you work, remember to navigate to `/git` and **commit often as you work.**

---

Reset primary key sequence SQLITE

```
ActiveRecord::Base.connection.execute('UPDATE SQLITE_SEQUENCE SET SEQ=0 WHERE NAME="countries"')
```
