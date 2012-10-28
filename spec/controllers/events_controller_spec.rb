require 'spec_helper'

describe EventsController do

  describe "index" do

    context "non signed in user" do
      it 'should be redirect to login action' do
        get 'index'
        response.should redirect_to(new_user_session_path)
      end
    end

    context "signed in user" do
      let(:user) { FactoryGirl.create :user }

      before(:each) do
        3.times { |t| FactoryGirl.create :event }
        @events = Event.all

        sign_in(user)
        get 'index'
      end

      it 'should be success' do
        response.should be_success
      end

      it 'should render events#index view' do
        response.should render_template(:index)
      end

      it 'should assign events collection' do
        assigns(:events).map(&:id).should == @events.map(&:id)
      end

    end

  end

end
