require 'rails_helper'

RSpec.describe "attachments/edit", type: :view do
  before(:each) do
    @attachment = assign(:attachment, Attachment.create!(
      :name => "MyString",
      :description => "MyText",
      :user => nil,
      :artifact => nil
    ))
  end

  it "renders the edit attachment form" do
    render

    assert_select "form[action=?][method=?]", attachment_path(@attachment), "post" do

      assert_select "input#attachment_name[name=?]", "attachment[name]"

      assert_select "textarea#attachment_description[name=?]", "attachment[description]"

      assert_select "input#attachment_user_id[name=?]", "attachment[user_id]"

      assert_select "input#attachment_artifact_id[name=?]", "attachment[artifact_id]"
    end
  end
end
