class AssociatesController < ApplicationController
   layout "pages"
  # GET /associates
  # GET /associates.json
  def index
    @associates = Associate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @associates }
    end
  end

  # GET /associates/1
  # GET /associates/1.json
  def show
    @associate = Associate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @associate }
    end
  end

  # GET /associates/new
  # GET /associates/new.json
  def new
    @associate = Associate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @associate }
    end
  end

  # GET /associates/1/edit
  def edit
    @associate = Associate.find(params[:id])
  end

  # POST /associates
  # POST /associates.json
  def create
    @associate = Associate.new(params[:associate])

    respond_to do |format|
      if @associate.save
        format.html { redirect_to @associate, notice: 'Associate was successfully created.' }
        format.json { render json: @associate, status: :created, location: @associate }
      else
        format.html { render action: "new" }
        format.json { render json: @associate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /associates/1
  # PUT /associates/1.json
  def update
    @associate = Associate.find(params[:id])

    respond_to do |format|
      if @associate.update_attributes(params[:associate])
        format.html { redirect_to @associate, notice: 'Associate was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @associate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /associates/1
  # DELETE /associates/1.json
  def destroy
    @associate = Associate.find(params[:id])
    @associate.destroy

    respond_to do |format|
      format.html { redirect_to associates_url }
      format.json { head :no_content }
    end
  end
end
