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

describe InstaladorsController do

  # This should return the minimal set of attributes required to create a valid
  # Instalador. As you add validations to Instalador, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "nome" => "MyString" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # InstaladorsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all instaladors as @instaladors" do
      instalador = Instalador.create! valid_attributes
      get :index, {}, valid_session
      assigns(:instaladors).should eq([instalador])
    end
  end

  describe "GET show" do
    it "assigns the requested instalador as @instalador" do
      instalador = Instalador.create! valid_attributes
      get :show, {:id => instalador.to_param}, valid_session
      assigns(:instalador).should eq(instalador)
    end
  end

  describe "GET new" do
    it "assigns a new instalador as @instalador" do
      get :new, {}, valid_session
      assigns(:instalador).should be_a_new(Instalador)
    end
  end

  describe "GET edit" do
    it "assigns the requested instalador as @instalador" do
      instalador = Instalador.create! valid_attributes
      get :edit, {:id => instalador.to_param}, valid_session
      assigns(:instalador).should eq(instalador)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Instalador" do
        expect {
          post :create, {:instalador => valid_attributes}, valid_session
        }.to change(Instalador, :count).by(1)
      end

      it "assigns a newly created instalador as @instalador" do
        post :create, {:instalador => valid_attributes}, valid_session
        assigns(:instalador).should be_a(Instalador)
        assigns(:instalador).should be_persisted
      end

      it "redirects to the created instalador" do
        post :create, {:instalador => valid_attributes}, valid_session
        response.should redirect_to(Instalador.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved instalador as @instalador" do
        # Trigger the behavior that occurs when invalid params are submitted
        Instalador.any_instance.stub(:save).and_return(false)
        post :create, {:instalador => { "nome" => "invalid value" }}, valid_session
        assigns(:instalador).should be_a_new(Instalador)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Instalador.any_instance.stub(:save).and_return(false)
        post :create, {:instalador => { "nome" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested instalador" do
        instalador = Instalador.create! valid_attributes
        # Assuming there are no other instaladors in the database, this
        # specifies that the Instalador created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Instalador.any_instance.should_receive(:update_attributes).with({ "nome" => "MyString" })
        put :update, {:id => instalador.to_param, :instalador => { "nome" => "MyString" }}, valid_session
      end

      it "assigns the requested instalador as @instalador" do
        instalador = Instalador.create! valid_attributes
        put :update, {:id => instalador.to_param, :instalador => valid_attributes}, valid_session
        assigns(:instalador).should eq(instalador)
      end

      it "redirects to the instalador" do
        instalador = Instalador.create! valid_attributes
        put :update, {:id => instalador.to_param, :instalador => valid_attributes}, valid_session
        response.should redirect_to(instalador)
      end
    end

    describe "with invalid params" do
      it "assigns the instalador as @instalador" do
        instalador = Instalador.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Instalador.any_instance.stub(:save).and_return(false)
        put :update, {:id => instalador.to_param, :instalador => { "nome" => "invalid value" }}, valid_session
        assigns(:instalador).should eq(instalador)
      end

      it "re-renders the 'edit' template" do
        instalador = Instalador.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Instalador.any_instance.stub(:save).and_return(false)
        put :update, {:id => instalador.to_param, :instalador => { "nome" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested instalador" do
      instalador = Instalador.create! valid_attributes
      expect {
        delete :destroy, {:id => instalador.to_param}, valid_session
      }.to change(Instalador, :count).by(-1)
    end

    it "redirects to the instaladors list" do
      instalador = Instalador.create! valid_attributes
      delete :destroy, {:id => instalador.to_param}, valid_session
      response.should redirect_to(instaladors_url)
    end
  end

end
