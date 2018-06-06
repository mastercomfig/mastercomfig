global function_example


def function_example():
    print('This is an example python plugin.')


@generator()
def example():
    function_example()
