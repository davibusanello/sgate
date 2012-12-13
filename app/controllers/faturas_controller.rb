class FaturasController < ApplicationController
  # GET /faturas
  # GET /faturas.json
  def index
    @faturas = Fatura.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @faturas }
    end
  end

  # GET /faturas/1
  # GET /faturas/1.json
  def show
    @fatura = Fatura.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fatura }
    end
  end

  # GET /faturas/new
  # GET /faturas/new.json
  def new
    @fatura = Fatura.new
    @clientes = Cliente.all
    @pacotes = Pacote.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fatura }
    end
  end

  # GET /faturas/1/edit
  def edit
    @fatura = Fatura.find(params[:id])
    @clientes = Cliente.all
    @pacotes = Pacote.all
  end

  # POST /faturas
  # POST /faturas.json
  def create
    @fatura = Fatura.new(params[:fatura])
    @clientes = Cliente.all
    @pacotes = Pacote.all
    #@fatura.valor = Pacote.select(:valor).where(id: @fatura.pacote_id)
    #@fatura.numero_inscricao = Cliente.select(:numero_inscricao).where(id: @fatura.cliente_id)
    #@fatura.nome = Cliente.select(:nome).where(id: @fatura.cliente_id)

    respond_to do |format|
      if @fatura.save
        format.html { redirect_to @fatura, notice: 'Fatura was successfully created.' }
        format.json { render json: @fatura, status: :created, location: @fatura }
      else
        format.html { render action: "new" }
        format.json { render json: @fatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /faturas/1
  # PUT /faturas/1.json
  def update
    @fatura = Fatura.find(params[:id])
    @clientes = Cliente.all
    @pacotes = Pacote.all

    respond_to do |format|
      if @fatura.update_attributes(params[:fatura])
        format.html { redirect_to @fatura, notice: 'Fatura was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /faturas/1
  # DELETE /faturas/1.json
  def destroy
    @fatura = Fatura.find(params[:id])
    @fatura.destroy

    respond_to do |format|
      format.html { redirect_to faturas_url }
      format.json { head :no_content }
    end
  end
end
