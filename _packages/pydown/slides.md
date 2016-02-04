!SLIDE

#pydown

!SLIDE

##Markdown + deck.js
##Simple html presentation maker
##You just need to write markdown file

!SLIDE
##Support code highlighting

~~~~{python}
def hello():
    print 'hello world'
~~~~

~~~~{c}
#include <stdio.h>

int main()
{
  printf("Hello world\n");
  return 0;
}
~~~~

~~~~{shell}
#!/bin/bash

LIST=output.list

ls | grep -v *ignore | while read line; do
    echo $line >> $LIST
done
~~~~

!SLIDE

##Supports Markdown extensions

Like Markdown Extra
{: .slide}

Via the [python-markdown](https://pythonhosted.org/Markdown/extensions/index.html) module
{: .slide}

which allows for things adding additional attributes to markdown
{: .slide}


!SLIDE

##Just simple
##and enjoy yourself

!SLIDE

#Thanks
##[isnowfy](http://www.isnowfy.com)|[isnowfy](https://github.com/isnowfy) on Github
###Made by [pydown](https://github.com/isnowfy/pydown)
###Inspired by [keydown](https://github.com/infews/keydown)

