require 'spec_helper'

describe PlantsController do

  # This should return the minimal set of attributes required to create a valid
  # Plant. As you add validations to Plant, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {
      :name => 'Camelia X vernalis',
      :common_names => 'Camelia',
      :origin => 'China',
      :dimensions => '20x400',
      :cultural_conditions => '',
      :flowering_season => '',
      :colour => 'Red',
      :growth_rate => 'Slow',
      :foliage_colour => 'Dark green',
      :potential_use => 'Screen',
      :potential_style => 'formal',
      :description => 'An early flowering camelia with bright red flowers with yellow stamens.',
      :comments_care => 'Keep moist and mulch with compost. Sunny or partly shaded postition. Protect from strong winds. Well drained, slightly acidic soil.'

    }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PlantsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all plants as @plants" do
      plant = Plant.create! valid_attributes
      get :index, {}, valid_session
      assigns(:plants).should eq([plant])
    end
  end

  describe "GET show" do
    it "assigns the requested plant as @plant" do
      plant = Plant.create! valid_attributes
      get :show, {:id => plant.to_param}, valid_session
      assigns(:plant).should eq(plant)
    end
  end

  describe "GET new" do
    it "assigns a new plant as @plant" do
      get :new, {}, valid_session
      assigns(:plant).should be_a_new(Plant)
    end
  end

  describe "GET edit" do
    it "assigns the requested plant as @plant" do
      plant = Plant.create! valid_attributes
      get :edit, {:id => plant.to_param}, valid_session
      assigns(:plant).should eq(plant)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Plant" do
        expect {
          post :create, {:plant => valid_attributes}, valid_session
        }.to change(Plant, :count).by(1)
      end

      it "assigns a newly created plant as @plant" do
        post :create, {:plant => valid_attributes}, valid_session
        assigns(:plant).should be_a(Plant)
        assigns(:plant).should be_persisted
      end

      it "redirects to the created plant" do
        post :create, {:plant => valid_attributes}, valid_session
        response.should redirect_to(Plant.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved plant as @plant" do
        # Trigger the behavior that occurs when invalid params are submitted
        Plant.any_instance.stub(:save).and_return(false)
        post :create, {:plant => {}}, valid_session
        assigns(:plant).should be_a_new(Plant)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Plant.any_instance.stub(:save).and_return(false)
        post :create, {:plant => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested plant" do
        plant = Plant.create! valid_attributes
        # Assuming there are no other plants in the database, this
        # specifies that the Plant created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Plant.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => plant.to_param, :plant => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested plant as @plant" do
        plant = Plant.create! valid_attributes
        put :update, {:id => plant.to_param, :plant => valid_attributes}, valid_session
        assigns(:plant).should eq(plant)
      end

      it "redirects to the plant" do
        plant = Plant.create! valid_attributes
        put :update, {:id => plant.to_param, :plant => valid_attributes}, valid_session
        response.should redirect_to(plant)
      end
    end

    describe "with invalid params" do
      it "assigns the plant as @plant" do
        plant = Plant.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Plant.any_instance.stub(:save).and_return(false)
        put :update, {:id => plant.to_param, :plant => {}}, valid_session
        assigns(:plant).should eq(plant)
      end

      it "re-renders the 'edit' template" do
        plant = Plant.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Plant.any_instance.stub(:save).and_return(false)
        put :update, {:id => plant.to_param, :plant => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested plant" do
      plant = Plant.create! valid_attributes
      expect {
        delete :destroy, {:id => plant.to_param}, valid_session
      }.to change(Plant, :count).by(-1)
    end

    it "redirects to the plants list" do
      plant = Plant.create! valid_attributes
      delete :destroy, {:id => plant.to_param}, valid_session
      response.should redirect_to(plants_url)
    end
  end

end
