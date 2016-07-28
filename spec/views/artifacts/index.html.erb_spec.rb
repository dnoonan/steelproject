require 'rails_helper'

RSpec.describe "artifacts/index", type: :view do
  before(:each) do
    assign(:artifacts, [
      Artifact.create!(
        :user => nil,
        :subject => "Subject",
        :description => "MyText",
        :type => "Type",
        :status => "Status"
      ),
      Artifact.create!(
        :user => nil,
        :subject => "Subject",
        :description => "MyText",
        :type => "Type",
        :status => "Status"
      )
    ])
  end

  it "renders a list of artifacts" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
