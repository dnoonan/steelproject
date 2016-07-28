require 'rails_helper'

RSpec.describe "attachments/new", type: :view do
  before(:each) do
    assign(:attachment, Attachment.new(
      :name => "MyString",
      :description => "MyText",
      :user => nil,
      :artifact => nil
    ))
  end

  it "renders new attachment form" do
    render

    assert_select "form[action=?][method=?]", attachments_path, "post" do

      assert_select "input#attachment_name[name=?]", "attachment[name]"

      assert_select "textarea#attachment_description[name=?]", "attachment[description]"

      assert_select "input#attachment_user_id[name=?]", "attachment[user_id]"

      assert_select "input#attachment_artifact_id[name=?]", "attachment[artifact_id]"
    end
  end
end
