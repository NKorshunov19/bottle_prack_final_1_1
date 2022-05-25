import unittest
import myform
class Test_test_1(unittest.TestCase):
    def test_A(self):
        list_mail_uncor = ["", "1", "@", "@mail", "example@mail", "@@", "Nikita//@gmail", "\$jdewnce@gmail.com", "!defxyz%%%%%%%%%@example.com"]
        for x in list_mail_uncor:
            self.assertFalse(myform.mail(x))

if __name__ == '__main__':
    unittest.main()
