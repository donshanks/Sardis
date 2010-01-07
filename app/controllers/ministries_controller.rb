class MinistriesController < ApplicationController
  # GET /ministries
  # GET /ministries.xml
  def index
    @ministries = Ministries.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ministries }
    end
  end

  # GET /ministries/1
  # GET /ministries/1.xml
  def show
    @ministries = Ministries.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ministries }
    end
  end

  # GET /ministries/new
  # GET /ministries/new.xml
  def new
    @ministries = Ministries.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ministries }
    end
  end

  # GET /ministries/1/edit
  def edit
    @ministries = Ministries.find(params[:id])
  end

  # POST /ministries
  # POST /ministries.xml
  def create
    @ministries = Ministries.new(params[:ministries])

    respond_to do |format|
      if @ministries.save
        flash[:notice] = 'Ministries was successfully created.'
        format.html { redirect_to(@ministries) }
        format.xml  { render :xml => @ministries, :status => :created, :location => @ministries }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ministries.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ministries/1
  # PUT /ministries/1.xml
  def update
    @ministries = Ministries.find(params[:id])

    respond_to do |format|
      if @ministries.update_attributes(params[:ministries])
        flash[:notice] = 'Ministries was successfully updated.'
        format.html { redirect_to(@ministries) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ministries.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ministries/1
  # DELETE /ministries/1.xml
  def destroy
    @ministries = Ministries.find(params[:id])
    @ministries.destroy

    respond_to do |format|
      format.html { redirect_to(ministries_url) }
      format.xml  { head :ok }
    end
  end
end
