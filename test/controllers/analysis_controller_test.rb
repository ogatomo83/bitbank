require "test_helper"

class AnalysisControllerTest < ActionDispatch::IntegrationTest
  test "should get analysis" do
    get analysis_analysis_url
    assert_response :success
  end
end
