class AndroidsController < ApplicationController
  # GET /androids
  # GET /androids.json
  def index
    @androids = Android.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @androids }
    end
  end

  # GET /androids/1
  # GET /androids/1.json
  def show
    @android = Android.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @android }
    end
  end

  # GET /androids/new
  # GET /androids/new.json
  def new
    @android = Android.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @android }
    end
  end

  # GET /androids/1/edit
  def edit
    @android = Android.find(params[:id])
  end

  # POST /androids
  # POST /androids.json
  def create
    @android = Android.new(params[:android])

    respond_to do |format|
      if @android.save
        format.html { redirect_to @android, notice: 'Android was successfully created.' }
        format.json { render json: @android, status: :created, location: @android }
      else
        format.html { render action: "new" }
        format.json { render json: @android.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /androids/1
  # PUT /androids/1.json
  def update
    @android = Android.find(params[:id])

    respond_to do |format|
      if @android.update_attributes(params[:android])
        format.html { redirect_to @android, notice: 'Android was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @android.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /androids/1
  # DELETE /androids/1.json
  def destroy
    @android = Android.find(params[:id])
    @android.destroy

    respond_to do |format|
      format.html { redirect_to androids_url }
      format.json { head :no_content }
    end
  end
end
