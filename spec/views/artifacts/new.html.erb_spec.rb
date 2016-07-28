require 'rails_helper'

RSpec.describe "artifacts/new", type: :view do
  before(:each) do
    assign(:artifact, Artifact.new(
      :user => nil,
      :subject => "MyString",
      :description => "MyText",
      :type => "",
      :status => "MyString"
    ))
  end

  it "renders new artifact form" do
    render

    assert_select "form[action=?][method=?]", artifacts_path, "post" do

      assert_select "input#artifact_user_id[name=?]", "artifact[user_id]"

      assert_select "input#artifact_subject[name=?]", "artifact[subject]"

      assert_select "textarea#artifact_description[name=?]", "artifact[description]"

      assert_select "input#artifact_type[name=?]", "artifact[type]"

      assert_select "input#artifact_status[name=?]", "artifact[status]"
    end
  end
end
