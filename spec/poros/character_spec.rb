require 'rails_helper'

RSpec.describe Character do

  it 'can be created' do
    @character = Character.new({name: "character 1", 
                                affiliation: ['affiliation 1'], 
                                allies: ['ally 1', 'ally 2'], 
                                enemies: ['enemy 1'],
                                photo: "www.characterphoto.com"})

    expect(@character).to be_a(Character)
  end
end