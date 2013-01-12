class GigibecalisController < ApplicationController
  # GET /gigibecalis
  # GET /gigibecalis.json
  def index
    @gigibecalis = Gigibecali.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @gigibecalis }
    end
  end

  # GET /gigibecalis/1
  # GET /gigibecalis/1.json
  def show
    @gigibecali = Gigibecali.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @gigibecali }
    end
  end

  # GET /gigibecalis/new
  # GET /gigibecalis/new.json
  def new
    @gigibecali = Gigibecali.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @gigibecali }
    end
  end

  # GET /gigibecalis/1/edit
  def edit
    @gigibecali = Gigibecali.find(params[:id])
  end

  # POST /gigibecalis
  # POST /gigibecalis.json
  def create
    @gigibecali = Gigibecali.new(params[:gigibecali])

    respond_to do |format|
      if @gigibecali.save
        format.html { redirect_to @gigibecali, :notice => 'Gigibecali was successfully created.' }
        format.json { render :json => @gigibecali, :status => :created, :location => @gigibecali }
      else
        format.html { render :action => "new" }
        format.json { render :json => @gigibecali.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /gigibecalis/1
  # PUT /gigibecalis/1.json
  def update
    @gigibecali = Gigibecali.find(params[:id])

    respond_to do |format|
      if @gigibecali.update_attributes(params[:gigibecali])
        format.html { redirect_to @gigibecali, :notice => 'Gigibecali was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @gigibecali.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /gigibecalis/1
  # DELETE /gigibecalis/1.json
  def destroy
    @gigibecali = Gigibecali.find(params[:id])
    @gigibecali.destroy

    respond_to do |format|
      format.html { redirect_to gigibecalis_url }
      format.json { head :no_content }
    end
  end
end
