require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe SeedsController do

  # This should return the minimal set of attributes required to create a valid
  # Seed. As you add validations to Seed, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SeedsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all seeds as @seeds" do
      seed = Seed.create! valid_attributes
      get :index, {}, valid_session
      assigns(:seeds).should eq([seed])
    end
  end

  describe "GET show" do
    it "assigns the requested seed as @seed" do
      seed = Seed.create! valid_attributes
      get :show, {:id => seed.to_param}, valid_session
      assigns(:seed).should eq(seed)
    end
  end

  describe "GET new" do
    it "assigns a new seed as @seed" do
      get :new, {}, valid_session
      assigns(:seed).should be_a_new(Seed)
    end
  end

  describe "GET edit" do
    it "assigns the requested seed as @seed" do
      seed = Seed.create! valid_attributes
      get :edit, {:id => seed.to_param}, valid_session
      assigns(:seed).should eq(seed)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Seed" do
        expect {
          post :create, {:seed => valid_attributes}, valid_session
        }.to change(Seed, :count).by(1)
      end

      it "assigns a newly created seed as @seed" do
        post :create, {:seed => valid_attributes}, valid_session
        assigns(:seed).should be_a(Seed)
        assigns(:seed).should be_persisted
      end

      it "redirects to the created seed" do
        post :create, {:seed => valid_attributes}, valid_session
        response.should redirect_to(Seed.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved seed as @seed" do
        # Trigger the behavior that occurs when invalid params are submitted
        Seed.any_instance.stub(:save).and_return(false)
        post :create, {:seed => {}}, valid_session
        assigns(:seed).should be_a_new(Seed)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Seed.any_instance.stub(:save).and_return(false)
        post :create, {:seed => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested seed" do
        seed = Seed.create! valid_attributes
        # Assuming there are no other seeds in the database, this
        # specifies that the Seed created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Seed.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => seed.to_param, :seed => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested seed as @seed" do
        seed = Seed.create! valid_attributes
        put :update, {:id => seed.to_param, :seed => valid_attributes}, valid_session
        assigns(:seed).should eq(seed)
      end

      it "redirects to the seed" do
        seed = Seed.create! valid_attributes
        put :update, {:id => seed.to_param, :seed => valid_attributes}, valid_session
        response.should redirect_to(seed)
      end
    end

    describe "with invalid params" do
      it "assigns the seed as @seed" do
        seed = Seed.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Seed.any_instance.stub(:save).and_return(false)
        put :update, {:id => seed.to_param, :seed => {}}, valid_session
        assigns(:seed).should eq(seed)
      end

      it "re-renders the 'edit' template" do
        seed = Seed.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Seed.any_instance.stub(:save).and_return(false)
        put :update, {:id => seed.to_param, :seed => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested seed" do
      seed = Seed.create! valid_attributes
      expect {
        delete :destroy, {:id => seed.to_param}, valid_session
      }.to change(Seed, :count).by(-1)
    end

    it "redirects to the seeds list" do
      seed = Seed.create! valid_attributes
      delete :destroy, {:id => seed.to_param}, valid_session
      response.should redirect_to(seeds_url)
    end
  end

end
