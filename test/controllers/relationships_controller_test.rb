require "test_helper"

class RelationshipsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/relationships.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Relationship.count, data.length
  end
end
