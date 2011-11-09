require 'spec_helper'

describe TimerController do
  describe '#show' do
    it 'returns successfully' do
      get :show
      response.code.should == "200"
    end

    it 'has a valid route' do
      visit timer_path
      response.code.should == "200"
    end
  end
end
