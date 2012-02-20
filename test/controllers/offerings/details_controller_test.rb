require "minitest_helper"

describe Offerings::DetailsController do
  with_admin_session

  before do
    @offering = Factory :offering
    @args = { :offering_id => @offering.id }
  end

  describe "edit action" do
    it "respond with success" do
      get :edit, @args
      must_respond_with :success
    end
  end
  describe "show action" do
    it "respond with success" do
      get :show, @args
      must_respond_with :success
    end
  end
end

