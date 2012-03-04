class KursController < ApplicationController
  # GET /kurs
  # GET /kurs.json
  def index
    @kurs = Kur.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @kurs }
    end
  end

  # GET /kurs/1
  # GET /kurs/1.json
  def show
    @kur = Kur.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @kur }
    end
  end

  # GET /kurs/new
  # GET /kurs/new.json
  def new
    @kur = Kur.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @kur }
    end
  end

  # GET /kurs/1/edit
  def edit
    @kur = Kur.find(params[:id])
  end

  # POST /kurs
  # POST /kurs.json
  def create
    @kur = Kur.new(params[:kur])

    respond_to do |format|
      if @kur.save
        format.html { redirect_to @kur, notice: 'Kur was successfully created.' }
        format.json { render json: @kur, status: :created, location: @kur }
      else
        format.html { render action: "new" }
        format.json { render json: @kur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /kurs/1
  # PUT /kurs/1.json
  def update
    @kur = Kur.find(params[:id])

    respond_to do |format|
      if @kur.update_attributes(params[:kur])
        format.html { redirect_to @kur, notice: 'Kur was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @kur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kurs/1
  # DELETE /kurs/1.json
  def destroy
    @kur = Kur.find(params[:id])
    @kur.destroy

    respond_to do |format|
      format.html { redirect_to kurs_url }
      format.json { head :no_content }
    end
  end
end
