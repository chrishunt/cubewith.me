require 'spec_helper'

describe Room do
  describe '#generate_url_id' do
    before do
      @room = Room.new
    end

    it 'is a private method' do
      @room.respond_to?(:generate_url_id).should == false
    end

    it 'generates a hash with length of 10' do
      url_id = @room.send(:generate_url_id)
      url_id.should_not == nil
      url_id.length.should == 10
    end
  end

  describe '#url_id' do
    before do
      @room = Factory(:room, :url_id => nil)
    end

    it 'is generated automatically on create' do
      @room.url_id.should_not == nil
    end

    it 'has 10 characters' do
      @room.url_id.length.should == 10
    end
  end

  describe '#to_param' do
    it 'returns the url_id of the room instead of the id' do
      room = Factory(:room)
      room.to_param.should == room.url_id
    end
  end
end
