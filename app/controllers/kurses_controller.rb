class KursesController < ApplicationController
  # GET /kurses
  # GET /kurses.json
  def index
    @kurses = Kurs.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @kurses }
    end
  end

  # GET /kurses/1
  # GET /kurses/1.json
  def show
    @kurs = Kurs.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @kurs }
    end
  end

  # GET /kurses/new
  # GET /kurses/new.json
  def new
    @kurs = Kurs.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @kurs }
    end
  end

  # GET /kurses/1/edit
  def edit
    @kurs = Kurs.find(params[:id])
  end

  # POST /kurses
  # POST /kurses.json
  def create
    @kurs = Kurs.new(params[:kurs])

    respond_to do |format|
      if @kurs.save
        format.html { redirect_to @kurs, notice: 'Kurs was successfully created.' }
        format.json { render json: @kurs, status: :created, location: @kurs }
      else
        format.html { render action: "new" }
        format.json { render json: @kurs.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /kurses/1
  # PUT /kurses/1.json
  def update
    @kurs = Kurs.find(params[:id])

    respond_to do |format|
      if @kurs.update_attributes(params[:kurs])
        format.html { redirect_to @kurs, notice: 'Kurs was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @kurs.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kurses/1
  # DELETE /kurses/1.json
  def destroy
    @kurs = Kurs.find(params[:id])
    @kurs.destroy

    respond_to do |format|
      format.html { redirect_to kurses_url }
      format.json { head :no_content }
    end
  end
end
