require 'rails_helper'

RSpec.describe InfosController, type: :controller do
  let(:info) { FactoryBot.create(:info) }

  context "GET #index" do

    it "com sucesso renderiza a index page" do
      get :index

      expect(response).to have_http_status(200)
      expect(response).to render_template(:index)
    end

    it "recebe um array vazio" do
      get :index

      expect(assigns(:infos)).to be_empty
    end

    it "recebe um objeto info criado" do
      info
      get :index
      
      expect(assigns(:infos)).to_not be_empty
    end
  end

  context "GET #show" do

  end

  context "GET #edit" do

  end

  context "GET #new" do

  end

  context "POST #create" do

  end

  context "PUT #update" do

  end

  context "DELETE #destroy" do

  end
end
