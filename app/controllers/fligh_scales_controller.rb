class FlighScalesController < ApplicationController
  # GET /fligh_scales
  # GET /fligh_scales.json
  def index
    @fligh_scales = FlighScale.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fligh_scales }
    end
  end

  # GET /fligh_scales/1
  # GET /fligh_scales/1.json
  def show
    @fligh_scale = FlighScale.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fligh_scale }
    end
  end

  # GET /fligh_scales/new
  # GET /fligh_scales/new.json
  def new
    @fligh_scale = FlighScale.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fligh_scale }
    end
  end

  # GET /fligh_scales/1/edit
  def edit
    @fligh_scale = FlighScale.find(params[:id])
  end

  # POST /fligh_scales
  # POST /fligh_scales.json
  def create
    @fligh_scale = FlighScale.new(params[:fligh_scale])

    respond_to do |format|
      if @fligh_scale.save
        format.html { redirect_to @fligh_scale, notice: 'Fligh scale was successfully created.' }
        format.json { render json: @fligh_scale, status: :created, location: @fligh_scale }
      else
        format.html { render action: "new" }
        format.json { render json: @fligh_scale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fligh_scales/1
  # PUT /fligh_scales/1.json
  def update
    @fligh_scale = FlighScale.find(params[:id])

    respond_to do |format|
      if @fligh_scale.update_attributes(params[:fligh_scale])
        format.html { redirect_to @fligh_scale, notice: 'Fligh scale was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @fligh_scale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fligh_scales/1
  # DELETE /fligh_scales/1.json
  def destroy
    @fligh_scale = FlighScale.find(params[:id])
    @fligh_scale.destroy

    respond_to do |format|
      format.html { redirect_to fligh_scales_url }
      format.json { head :ok }
    end
  end
end
