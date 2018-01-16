import helloworld
import unittest

class TestHelloWorld(unittest.TestCase):
    def setUp(self):
	pass

    def test_helloworld(self):
        st = 'Hello dhanu'
        ret_value = helloworld.helloworld(st)
        print 'ret_value = ', ret_value
        assert(ret_value == False)


if __name__ == '__main__':
    unittest.main()
