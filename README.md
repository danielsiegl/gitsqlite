# Why

I want to store [sqlite3](https://sqlite.org) databases as SQL code in git rather than binary files. Some suggest just using `sqlite %f .dump` and `sqlite %f` as filters, this however is abusing the [git attributes filter](https://git-scm.com/docs/gitattributes#_filter) mechanism (emphasis mine):

>Note that "%f" is the name of the path that is being worked on. Depending on the version that is being filtered, the corresponding file on disk may not exist, or may have different contents. So, smudge and clean commands should *not try to access the file on disk*, but only act as filters on the content provided to them on *standard input*.

The afformentioned filters kind of works, but gives "file exists" errors due to reading and writing directly to the file that filters are not supposed to directly read nor write.

# How

I couldn't get the `sqlite3` command line tool to directly read/write the binary database from/to a pipe, so a temporary file is created and removed once no longer needed.

# Installation

Install via
```
go install github.com/quarnster/gitsqlite@latest
git config --global filter.gitsqlite.clean "gitsqlite clean"
git config --global filter.gitsqlite.smudge "gitsqlite smudge"
echo "*.db filter=gitsqlite" >> .gitattributes
```
