## Real life 😕

![](youtube-download.png)

## Real life 😕

~~~ json
{"gifts":{"socks":{"S": 2, "M": 5, "L": 1}, "toys": ["Yellow duck", "Wooden bricks"]},"TODO":["bake Vanocka","pack gifts","tidy own desk"]}
~~~

## Better life 😊
~~~ bash
$ pytube \
    --extension mp4 \
    --resolution 720p \
    'https://www.youtube.com/watch?v=jrmZIgVoQw4'
~~~


## Better life 😊
~~~
$ python -m json.tool < ugly.json > pretty.json
~~~
~~~ JSON
{
    "TODO": [
        "bake Vanocka",
        "pack gifts",
        "tidy own desk"
    ],
    "gifts": {
        "socks": {
            "L": 1,
            "M": 2,
            "S": 5
        },
        "toys": [
            "Yellow duck",
            "Wooden bricks"
        ]
    }
}
~~~

## What you can expect
* demo of some existings handy (often CLI) tools
* as-short-as-necessary introduction to **pip** and **virtualenv**
* it's not necessary know the language

What **do not** expect:
* course like "Programming in Python"


## Try it on your own!

Everything to this workshop is available in:
~~~
github.com/mpavlase/<some-name>
~~~
Handy stuff around, your favourite:
* terminal
* text editor (geany, vim, pycharm, ...)
* internet connectivity

# Preparation ...

## PyPI/pip
PyPI = Python Package Index
repository of software for the Python

~~~
$ sudo pip install odpdown
~~~
**target**: /usr/lib/python2.7/site-packages

... or
~~~
$ pip install --user odpdown
~~~
**target**: ~/lib/python2.7/site-packages

... or

## virtualenv

~~~
$ sudo dnf install python-virtualenv
~~~
~~~
$ mkdir -p ~/sandbox
$ cd ~/sandbox
~~~
~~~
$ virtualenv venv
$ source venv/bin/activate
$ pip install odpdown
~~~
**target**:

~/sandbox/venv/usr/lib/python2.7/site-packages

## Demo time!
![](sandbox-4.jpg)

# File manipulation
....

## zipfile
Basic operations with ZIP archives.
~~~ bash
$ python -m zipfile -c my.zip file [...]
$ python -m zipfile -e my.zip dstfolder
$ python -m zipfile -l my.zip
$ python -m zipfile -t my.zip
~~~
in Python:
~~~ python
from zipfile import ZipFile
with ZipFile('my.zip', 'w') as myzip:
    myzip.write('content.txt')
~~~

## filecmp
Compare two directories
~~~ bash
python -m filecmp dir1 dir2
~~~
in Python:
~~~ python
from filecmp import dircmp
diff = dircmp('a', 'b')
diff.report()
~~~

# Text/image transformation

## json.tool

## format-sql

## base64

## encodings.rot_13

## markdown
Markdown into HTML

## markdownify
Translate HTML into markdown

## binascii

## pygments

## aafigure

## imgdiff
