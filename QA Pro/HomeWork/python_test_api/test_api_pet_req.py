import requests
import unittest
from faker import Faker


# print(pet_post_request_add_a_new_pet.json())
# print(pet_post_request_add_a_new_pet.status_code)
#
# print("Get req")
# print(pet_get_request_find_by_id.status_code)

# def getsmt():
#     arr = pet_post_request_add_a_new_pet.json()
#     print(arr['category']['id'])
#
#
# getsmt()


class TestApi(unittest.TestCase):

    fake = Faker()

    random_pet_id = fake.unique.random_int()
    random_pet_name = fake.language_name()
    random_pet_status = "available"

    random_tags_id = fake.unique.random_int()
    random_tags_name = fake.catch_phrase()

    random_category_id = fake.unique.random_int()
    random_category_name = fake.job()
    data = {"id": f"{random_pet_id}",
            "category": {
                "id": f"{random_category_id}",
                "name": f"{random_category_name}"
            },
            "name": f"{random_pet_name}",
            "photoUrls": ["string"],
            "tags": [{"id": f"{random_tags_id}", "name": f"{random_tags_name}"}],
            "status": f"{random_pet_status}"
            }



    def test_getReq_is_status_code_200(self):
        self.assertEqual(self.pet_post_req(self.data), 200)

    def test_get_is_pet_created(self):
        self.assertEqual(self.pet_post_req(self.data), 200)

    def pet_post_req(self, data):
        pet_post_request_add_a_new_pet = requests.post('https://petstore.swagger.io/v2/pet', json=data)
        return pet_post_request_add_a_new_pet.status_code

    def pet_get_req(self):
        pet_get_request_find_by_id = requests.post('https://petstore.swagger.io/v2/pet/' + f'{self.random_pet_id}')
        return pet_get_request_find_by_id.status_code

if __name__ == '__main__':
    unittest.main()