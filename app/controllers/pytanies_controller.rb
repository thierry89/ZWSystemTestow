class PytaniesController < ApplicationController
  # GET /pytanies
  # GET /pytanies.json
  def index
    @pytanies = Pytanie.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pytanies }
    end
  end

  # GET /pytanies/1
  # GET /pytanies/1.json
  def show
    @pytany = Pytanie.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pytany }
    end
  end

  # GET /pytanies/new
  # GET /pytanies/new.json
  def new
    @pytany = Pytanie.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pytany }
    end
  end

  # GET /pytanies/1/edit
  def edit
    @pytany = Pytanie.find(params[:id])
  end

  # POST /pytanies
  # POST /pytanies.json
  def create
    @pytany = Pytanie.new(params[:pytany])

    respond_to do |format|
      if @pytany.save
        format.html { redirect_to @pytany, notice: 'Pytanie was successfully created.' }
        format.json { render json: @pytany, status: :created, location: @pytany }
      else
        format.html { render action: "new" }
        format.json { render json: @pytany.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pytanies/1
  # PUT /pytanies/1.json
  def update
    @pytany = Pytanie.find(params[:id])

    respond_to do |format|
      if @pytany.update_attributes(params[:pytany])
        format.html { redirect_to @pytany, notice: 'Pytanie was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pytany.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pytanies/1
  # DELETE /pytanies/1.json
  def destroy
    @pytany = Pytanie.find(params[:id])
    @pytany.destroy

    respond_to do |format|
      format.html { redirect_to pytanies_url }
      format.json { head :no_content }
    end
  end
end
