require 'rails_helper'

RSpec.describe "spells/show", type: :view do
  before(:each) do
    @spell = assign(:spell, Spell.create!(
      :name => "Name",
      :level => 1,
      :casting_time => "Casting Time",
      :range => "Range",
      :components => "",
      :duration => "Duration",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Casting Time/)
    expect(rendered).to match(/Range/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Duration/)
    expect(rendered).to match(/MyText/)
  end
end
