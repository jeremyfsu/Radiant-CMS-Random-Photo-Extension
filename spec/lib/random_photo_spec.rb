require File.dirname(__FILE__) + '/../spec_helper'

describe 'RandomPhoto' do
  dataset :pages

  describe '<r:random_photo>' do
    it 'should render the correct HTML' do
      tag = '<r:random_photo path="images/random_pool"/>'

      expected = %{<img src}

      pages(:home).should render(tag).as(expected)
    end
  end
end