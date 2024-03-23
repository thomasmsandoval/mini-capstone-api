require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "index" do
    get "/products.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Product.count, data.length
  end

  test "create" do
    assert_difference "Product.count", 0 do
      post "/products.json", params: { name: "test", price: 10, description: "test description" }
      assert_response 422
    end

    assert_difference "Product.count", 0 do
      post "/products.json", params: { name: "test", price: 10, description: "test description" }
      assert_response 422
    end
  end

  test "show" do
    product = Product.first
    get "/products/#{Product.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "price", "is_discounted?", "tax", "total", "description", "supplier", "images", "updated_at", "created_at"], data.keys
  end

  test "update" do
    product = Product.first
    patch "/products/#{product.id}.json", params: { name: "Updated name", description: "longggggggggggggggggggggg boi", price: "1.0" }
    assert_response 422

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]
    assert_equal "1.0", data["price"]
    assert_equal "longggggggggggggggggggggg boi", data["description"]
    data = JSON.parse(response.body)
    assert_includes data["errors"], "Supplier must exist"
  end

  test "destroy" do
    assert_difference "Product.count", -1 do
      delete "/products/#{Product.first.id}.json"
      assert_response 200
    end
  end
end
