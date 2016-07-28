require 'rails_helper'

RSpec.describe "attachments/index", type: :view do
  before(:each) do
    assign(:attachments, [
      Attachment.create!(
        :name => "Name",
        :description => "MyText",
        :user => nil,
        :artifact => nil
      ),
      Attachment.create!(
        :name => "Name",
        :description => "MyText",
        :user => nil,
        :artifact => nil
      )
    ])
  end

  it "renders a list of attachments" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
