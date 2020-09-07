require 'spec_helper'
require './lib/numGen'
#Stubbing
RSpec.describe 'Random' do
  let(:generator) { NumGenerator.new }
  
  it 'generates a random number' do
        #stub
    allow(generator).to receive(:rand).and_return(5)

    expect(generator.random).to eq("AAAAA")
  end

  it 'adds 2 numbers' do
    expect(generator.add(2,1)).to eq(3)
  end

end

#Mocking
describe 'ImageFlipper' do
  it 'change an image' do
    editor = double('editor')

    expect(editor).to receive(:edit).with('imgstory')
    imf = ImageFlipper.new(editor)
    imf.edit("imgstory")
  end
end

#Innject Method 