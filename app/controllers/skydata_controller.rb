class SkydataController < ApplicationController
  # GET /skydata
  # GET /skydata.json
  def index
    @skydata = Skydatum.limit(10)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @skydata }
    end
  end

  # GET /skydata/1
  # GET /skydata/1.json
  def show
    @skydatum = Skydatum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @skydatum }
    end
  end

  # GET /skydata/new
  # GET /skydata/new.json
  def new
    @skydatum = Skydatum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @skydatum }
    end
  end

  # GET /skydata/1/edit
  def edit
    @skydatum = Skydatum.find(params[:id])
  end

  # POST /skydata
  # POST /skydata.json
  def create
    @skydatum = Skydatum.new(params[:skydatum])

    respond_to do |format|
      if @skydatum.save
        format.html { redirect_to @skydatum, notice: 'Skydatum was successfully created.' }
        format.json { render json: @skydatum, status: :created, location: @skydatum }
      else
        format.html { render action: "new" }
        format.json { render json: @skydatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /skydata/1
  # PUT /skydata/1.json
  def update
    @skydatum = Skydatum.find(params[:id])

    respond_to do |format|
      if @skydatum.update_attributes(params[:skydatum])
        format.html { redirect_to @skydatum, notice: 'Skydatum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @skydatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skydata/1
  # DELETE /skydata/1.json
  def destroy
    @skydatum = Skydatum.find(params[:id])
    @skydatum.destroy

    respond_to do |format|
      format.html { redirect_to skydata_url }
      format.json { head :no_content }
    end
  end

  def import

  Skydatum.import(params[:file])
  redirect_to root_url, notice: "Sky data imported"
  
end


end
