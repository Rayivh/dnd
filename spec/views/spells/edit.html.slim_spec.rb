require 'rails_helper'

RSpec.describe "spells/edit", type: :view do
  before(:each) do
    @spell = assign(:spell, Spell.create!(
      :name => "MyString",
      :level => 1,
      :casting_time => "MyString",
      :range => "MyString",
      :components => "",
      :duration => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit spell form" do
    render

    assert_select "form[action=?][method=?]", spell_path(@spell), "post" do

      assert_select "input#spell_name[name=?]", "spell[name]"

      assert_select "input#spell_level[name=?]", "spell[level]"

      assert_select "input#spell_casting_time[name=?]", "spell[casting_time]"

      assert_select "input#spell_range[name=?]", "spell[range]"

      assert_select "input#spell_components[name=?]", "spell[components]"

      assert_select "input#spell_duration[name=?]", "spell[duration]"

      assert_select "textarea#spell_description[name=?]", "spell[description]"
    end
  end
end
