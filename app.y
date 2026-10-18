import json

def get_customer(customer_id):
    customers = {
        101: {"id": 101, "name": "Aarav Sharma", "status": "active"},
        102: {"id": 102, "name": "Priya Patel", "status": "active"}
    }
    return customers.get(customer_id, {"error": "Customer not found"})

if __name__ == "__main__":
    print("customer-api service initialized successfully!")
    print("Sample Output:", json.dumps(get_customer(101)))
