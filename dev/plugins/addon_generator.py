@generator(data=('config-dir', 'build-dir'))
def addons_copy(*args):
    copy_tree(args[0] + "addons/", args[1] + "config/addons")
