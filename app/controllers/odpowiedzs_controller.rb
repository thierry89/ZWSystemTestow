class OdpowiedzsController < ApplicationController
  # GET /odpowiedzs
  # GET /odpowiedzs.json
  def index
    @odpowiedzs = Odpowiedz.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @odpowiedzs }
    end
  end

  # GET /odpowiedzs/1
  # GET /odpowiedzs/1.json
  def show
    @odpowiedz = Odpowiedz.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @odpowiedz }
    end
  end

  # GET /odpowiedzs/new
  # GET /odpowiedzs/new.json
  def new
    @odpowiedz = Odpowiedz.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @odpowiedz }
    end
  end

  # GET /odpowiedzs/1/edit
  def edit
    @odpowiedz = Odpowiedz.find(params[:id])
  end

  # POST /odpowiedzs
  # POST /odpowiedzs.json
  def create
    @odpowiedz = Odpowiedz.new(params[:odpowiedz])

    respond_to do |format|
      if @odpowiedz.save
        format.html { redirect_to @odpowiedz, notice: 'Odpowiedz was successfully created.' }
        format.json { render json: @odpowiedz, status: :created, location: @odpowiedz }
      else
        format.html { render action: "new" }
        format.json { render json: @odpowiedz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /odpowiedzs/1
  # PUT /odpowiedzs/1.json
  def update
    @odpowiedz = Odpowiedz.find(params[:id])

    respond_to do |format|
      if @odpowiedz.update_attributes(params[:odpowiedz])
        format.html { redirect_to @odpowiedz, notice: 'Odpowiedz was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @odpowiedz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /odpowiedzs/1
  # DELETE /odpowiedzs/1.json
  def destroy
    @odpowiedz = Odpowiedz.find(params[:id])
    @odpowiedz.destroy

    respond_to do |format|
      format.html { redirect_to odpowiedzs_url }
      format.json { head :no_content }
    end
  end
end
