require 'rails_helper'
require 'json'


  describe "get index" do
    it "should be success" do
      taco_event = Fabricate(:event)
      get "/api/v1/events"

      expect(response).to be_success

      events = JSON.parse(response.body)

      expect(events.count).to eq(1)
    end

    it "should return name, date, rep name" do
      event = Fabricate(:event)
      get "/api/v1/events"

      first_event = JSON.parse(response.body).first

      expect(first_event["name"]).to eq("Town Hall with Tacos")
      expect(first_event["date"]).to eq("Saturday, February 18th 2017")
      expect(first_event["rep_first_name"]).to eq("Taco")
      expect(first_event["rep_last_name"]).to eq("Man")
    end

    
  end
