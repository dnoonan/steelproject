require 'rails_helper'

RSpec.describe "artifacts/edit", type: :view do
  before(:each) do
    @artifact = assign(:artifact, Artifact.create!(
      :user => nil,
      :subject => "MyString",
      :description => "MyText",
      :type => "",
      :status => "MyString"
    ))
  end

  it "renders the edit artifact form" do
    render

    assert_select "form[action=?][method=?]", artifact_path(@artifact), "post" do

      assert_select "input#artifact_user_id[name=?]", "artifact[user_id]"

      assert_select "input#artifact_subject[name=?]", "artifact[subject]"

      assert_select "textarea#artifact_description[name=?]", "artifact[description]"

      assert_select "input#artifact_type[name=?]", "artifact[type]"

      assert_select "input#artifact_status[name=?]", "artifact[status]"
    end
  end
end
