from filecmp import dircmp

diff = dircmp('a', 'b')
print 'right: ', diff.right_list
print 'same files: ', diff.same_files
diff.report()
