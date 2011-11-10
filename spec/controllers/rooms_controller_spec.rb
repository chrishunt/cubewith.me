require 'spec_helper'

describe RoomsController do
  describe '#index' do
    before(:each) do
      get :index
    end

    it 'should return successfully' do
      response.code.should == '200'
    end
  end

  describe '#new' do
    before(:each) do
      get :new
    end

    it 'creates a new room' do
      assigns[:room].should_not == nil
      assigns[:room].id.should_not == nil
    end

    it 'redirects to the created room' do
      response.should redirect_to room_path(assigns[:room])
    end
  end

  describe '#show' do
    context 'when room id is provided' do
      before(:each) do
        @room = Factory(:room)
        get :show, :id => @room.url_id
      end

      it 'assigns the correct room' do
        assigns[:room].id.should == @room.id
      end
    end

    context 'when room id is invalid' do
      before(:each) do
        get :show, :id => 'invalid'
      end

      it 'should redirect to rooms_path' do
        response.should redirect_to rooms_path
      end
    end
  end
end
