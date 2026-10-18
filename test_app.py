import unittest
from app import get_customer

class TestCustomerApi(unittest.TestCase):
    def test_valid_customer(self):
        result = get_customer(101)
        self.assertEqual(result["name"], "Aarav Sharma")
        self.assertEqual(result["status"], "active")

    def test_missing_customer(self):
        result = get_customer(999)
        self.assertIn("error", result)

if __name__ == "__main__":
    unittest.main()
