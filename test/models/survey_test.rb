require 'test_helper'

class SurveyTest < ActiveSupport::TestCase
  setup do
    ActiveRecord::Base.transaction do
      survey = Survey.create!
      survey.welcome_text_backend.write(:de, "Willkommen!")
      survey.welcome_text_backend.write(:pl, "Welcome!")
    end
  end

  test "translations are not empty" do
    survey = Survey.last
    assert_not_equal({}, survey.translations)
  end
end
