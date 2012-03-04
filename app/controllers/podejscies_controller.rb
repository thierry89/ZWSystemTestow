class PodejsciesController < ApplicationController
  # GET /podejscies
  # GET /podejscies.json
  def index
    @podejscies = Podejscie.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @podejscies }
    end
  end

  # GET /podejscies/1
  # GET /podejscies/1.json
  def show
    @podejscy = Podejscie.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @podejscy }
    end
  end

  # GET /podejscies/new
  # GET /podejscies/new.json
  def new
    @podejscy = Podejscie.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @podejscy }
    end
  end

  # GET /podejscies/1/edit
  def edit
    @podejscy = Podejscie.find(params[:id])
  end

  # POST /podejscies
  # POST /podejscies.json
  def create
    @podejscy = Podejscie.new(params[:podejscy])

    respond_to do |format|
      if @podejscy.save
        format.html { redirect_to @podejscy, notice: 'Podejscie was successfully created.' }
        format.json { render json: @podejscy, status: :created, location: @podejscy }
      else
        format.html { render action: "new" }
        format.json { render json: @podejscy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /podejscies/1
  # PUT /podejscies/1.json
  def update
    @podejscy = Podejscie.find(params[:id])

    respond_to do |format|
      if @podejscy.update_attributes(params[:podejscy])
        format.html { redirect_to @podejscy, notice: 'Podejscie was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @podejscy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /podejscies/1
  # DELETE /podejscies/1.json
  def destroy
    @podejscy = Podejscie.find(params[:id])
    @podejscy.destroy

    respond_to do |format|
      format.html { redirect_to podejscies_url }
      format.json { head :no_content }
    end
  end
end
