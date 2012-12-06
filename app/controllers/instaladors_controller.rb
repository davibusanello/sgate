class InstaladorsController < ApplicationController
  # GET /instaladors
  # GET /instaladors.json
  def index
    @instaladors = Instalador.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @instaladors }
    end
  end

  # GET /instaladors/1
  # GET /instaladors/1.json
  def show
    @instalador = Instalador.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @instalador }
    end
  end

  # GET /instaladors/new
  # GET /instaladors/new.json
  def new
    @instalador = Instalador.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @instalador }
    end
  end

  # GET /instaladors/1/edit
  def edit
    @instalador = Instalador.find(params[:id])
  end

  # POST /instaladors
  # POST /instaladors.json
  def create
    @instalador = Instalador.new(params[:instalador])

    respond_to do |format|
      if @instalador.save
        format.html { redirect_to @instalador, notice: 'Instalador was successfully created.' }
        format.json { render json: @instalador, status: :created, location: @instalador }
      else
        format.html { render action: "new" }
        format.json { render json: @instalador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /instaladors/1
  # PUT /instaladors/1.json
  def update
    @instalador = Instalador.find(params[:id])

    respond_to do |format|
      if @instalador.update_attributes(params[:instalador])
        format.html { redirect_to @instalador, notice: 'Instalador was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @instalador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instaladors/1
  # DELETE /instaladors/1.json
  def destroy
    @instalador = Instalador.find(params[:id])
    @instalador.destroy

    respond_to do |format|
      format.html { redirect_to instaladors_url }
      format.json { head :no_content }
    end
  end
end
