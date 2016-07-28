require 'rails_helper'

RSpec.describe "artifacts/show", type: :view do
  before(:each) do
    @artifact = assign(:artifact, Artifact.create!(
      :user => nil,
      :subject => "Subject",
      :description => "MyText",
      :type => "Type",
      :status => "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Subject/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/Status/)
  end
end
