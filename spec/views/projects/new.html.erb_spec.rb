require 'rails_helper'

RSpec.describe "projects/new", type: :view do
  before(:each) do
    assign(:project, Project.new(
      :name => "MyString",
      :description => "MyString",
      :status => 1,
      :owner_id => 1
    ))
  end

  it "renders new project form" do
    render

    assert_select "form[action=?][method=?]", projects_path, "post" do

      assert_select "input[name=?]", "project[name]"

      assert_select "input[name=?]", "project[description]"

      assert_select "input[name=?]", "project[status]"

      assert_select "input[name=?]", "project[owner_id]"
    end
  end
end
