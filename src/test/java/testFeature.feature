Feature:

  Background:
    * url 'https://jsonplaceholder.typicode.com/'

  Scenario: Get all posts
    * path '/posts'
    * method GET
    * status 200

  Scenario: Get a specific post
    * path '/posts/3'
    * method get
    * status 200
    * match response contains {"title": "ea molestias quasi exercitationem repellat qui ipsa sit aut"}
    * match response.id == 3

  Scenario: Update posts
    * path '/posts/1'
    * request
    """
    {
      "userId": 123,
      "id": 1,
      "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
      "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
    }
    """
    * method put
    * status 200
    * print response.id


