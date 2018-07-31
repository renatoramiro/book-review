require 'rails_helper'

RSpec.describe "Api::Readers", type: :request do
  describe "GET /api/readers" do
    it "should list all readers" do
      FactoryBot.create(:reader)

      get api_readers_path
      expect(response).to have_http_status(200)

      json = JSON.parse(response.body)
      expect(json.length).to eq 1
      expect(json[0]["name"]).to eq('Reader 1')
    end
  end

  describe "GET /api/readers/:id" do
    before(:each) do
      @reader = FactoryBot.create :reader
    end

    it "should get a reader by id" do
      get api_reader_path(@reader.id)
      expect(response).to have_http_status(200)

      json = JSON.parse(response.body)
      expect(json["name"]).to eq('Reader 1')
      expect(json["email"]).to eq('reader1@mail.com')
    end
  end

  describe "POST /api/readers/" do
    before(:each) do
      @reader = FactoryBot.build :reader
    end

    it "should create a reader" do
      post api_readers_path, params: {
        reader: {
          name: @reader.name,
          email: @reader.email
        }
      }
      expect(response).to have_http_status(201)

      json = JSON.parse(response.body)
      expect(json["name"]).to eq('Reader 1')
    end
  end

  describe "PUT /api/readers/:id" do
    before(:each) do
      @reader = FactoryBot.create :reader
    end

    it "should update a reader" do
      put api_reader_path(@reader.id), params: {
        reader: {
          name: 'Reader 1 updated'
        }
      }
      expect(response).to have_http_status(200)

      json = JSON.parse(response.body)
      expect(json["name"]).to eq('Reader 1 updated')
    end
  end

  describe "DELETE /api/readers/:id" do
    before(:each) do
      @reader = FactoryBot.create :reader
    end

    it "should delete a reader" do
      delete api_reader_path(@reader.id)
      expect(response).to have_http_status(204)
    end
  end
end
