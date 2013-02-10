require 'spec_helper'

describe "comments/new" do
  before(:each) do
    assign(:comment, stub_model(Comment,
      :comment => "MyString",
      :task_id => 1
    ).as_new_record)
  end

  it "renders new comment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => comments_path, :method => "post" do
      assert_select "input#comment_comment", :name => "comment[comment]"
      assert_select "input#comment_task_id", :name => "comment[task_id]"
    end
  end
end
