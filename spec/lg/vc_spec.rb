# frozen_string_literal: true
require './spec/spec_helper.rb'

RSpec.describe Lg::Vc , type: :component do
  include ViewComponent::TestHelpers
  it "has a version number" do
    expect(Lg::Vc::VERSION).not_to be nil
  end

  it "renders a button with the specified text" do
    text = "Click me!"
    render_inline(Lg::Vc::ButtonComponent.new(text: text))

    expect(rendered_component.css("button").to_html).to include(text)
  end

end
