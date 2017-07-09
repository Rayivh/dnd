require 'rails_helper'

RSpec.describe "spells/index", type: :view do
  before(:each) do
    assign(:spells, [
      Spell.create!(
        :name => "Name",
        :level => 1,
        :casting_time => "Casting Time",
        :range => "Range",
        :components => "",
        :duration => "Duration",
        :description => "MyText"
      ),
      Spell.create!(
        :name => "Name",
        :level => 1,
        :casting_time => "Casting Time",
        :range => "Range",
        :components => "",
        :duration => "Duration",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of spells" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Casting Time".to_s, :count => 2
    assert_select "tr>td", :text => "Range".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Duration".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
