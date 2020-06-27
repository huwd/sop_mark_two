require "rails_helper"

RSpec.describe "tags/new", type: :view do
  before do
    assign(:tag, Tag.new(
                   value: "MyString",
                 ))
  end

  it "renders new tag form" do
    render

    assert_select "form[action=?][method=?]", tags_path, "post" do
      assert_select "input[name=?]", "tag[value]"
    end
  end
end
