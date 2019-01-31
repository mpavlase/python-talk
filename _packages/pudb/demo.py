#!/usr/bin/env python

class MyClass(object):
    prop = 'some-'

    def do(self, param):
        s = self.prop + param
        d = {'param': param, 'prop': self.prop, 'list': [0, 1, 3, 5, 7]}
        #s = self.reverse(s, 1, 2, 3)
        s = self.reverse(s)
        return s

    def reverse(self, param):
        self.flag = True
        return param[::-1]

import pudb; pudb.set_trace()
if __name__ == '__main__':
    my = MyClass()
    print my.do('abc')
