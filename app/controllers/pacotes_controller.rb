class PacotesController < ApplicationController
  # GET /pacotes
  # GET /pacotes.json
  def index
    @pacotes = Pacote.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pacotes }
    end
  end

  # GET /pacotes/1
  # GET /pacotes/1.json
  def show
    @pacote = Pacote.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pacote }
    end
  end

  # GET /pacotes/new
  # GET /pacotes/new.json
  def new
    @pacote = Pacote.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pacote }
    end
  end

  # GET /pacotes/1/edit
  def edit
    @pacote = Pacote.find(params[:id])
  end

  # POST /pacotes
  # POST /pacotes.json
  def create
    @pacote = Pacote.new(params[:pacote])

    respond_to do |format|
      if @pacote.save
        format.html { redirect_to @pacote, notice: 'Pacote was successfully created.' }
        format.json { render json: @pacote, status: :created, location: @pacote }
      else
        format.html { render action: "new" }
        format.json { render json: @pacote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pacotes/1
  # PUT /pacotes/1.json
  def update
    @pacote = Pacote.find(params[:id])

    respond_to do |format|
      if @pacote.update_attributes(params[:pacote])
        format.html { redirect_to @pacote, notice: 'Pacote was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pacote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pacotes/1
  # DELETE /pacotes/1.json
  def destroy
    @pacote = Pacote.find(params[:id])
    @pacote.destroy

    respond_to do |format|
      format.html { redirect_to pacotes_url }
      format.json { head :no_content }
    end
  end
end
