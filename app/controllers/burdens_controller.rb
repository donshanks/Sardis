class BurdensController < ApplicationController
  # GET /burdens
  # GET /burdens.xml
  def index
    @burdens = Burden.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @burdens }
    end
  end

  # GET /burdens/1
  # GET /burdens/1.xml
  def show
    @burden = Burden.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @burden }
    end
  end

  # GET /burdens/new
  # GET /burdens/new.xml
  def new
    @burden = Burden.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @burden }
    end
  end

  # GET /burdens/1/edit
  def edit
    @burden = Burden.find(params[:id])
  end

  # POST /burdens
  # POST /burdens.xml
  def create
    @burden = Burden.new(params[:burden])

    respond_to do |format|
      if @burden.save
        flash[:notice] = 'Burden was successfully created.'
        format.html { redirect_to(@burden) }
        format.xml  { render :xml => @burden, :status => :created, :location => @burden }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @burden.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /burdens/1
  # PUT /burdens/1.xml
  def update
    @burden = Burden.find(params[:id])

    respond_to do |format|
      if @burden.update_attributes(params[:burden])
        flash[:notice] = 'Burden was successfully updated.'
        format.html { redirect_to(@burden) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @burden.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /burdens/1
  # DELETE /burdens/1.xml
  def destroy
    @burden = Burden.find(params[:id])
    @burden.destroy

    respond_to do |format|
      format.html { redirect_to(burdens_url) }
      format.xml  { head :ok }
    end
  end
end
