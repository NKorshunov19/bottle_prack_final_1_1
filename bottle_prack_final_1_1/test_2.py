import unittest
import myform

class Test_test_2(unittest.TestCase):
    def test_A(self):
        list_mail_uncor = ["m.m@mail.ru", "Exampl@gmail.com", "11nikita12@gmail.com", "E23xdfghbvf@mail.ru", "example@mail.bk.com"]
        for x in list_mail_uncor:
            self.assertTrue(myform.mail(x))

if __name__ == '__main__':
    unittest.main()
