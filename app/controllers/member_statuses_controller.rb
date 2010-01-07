class MemberStatusesController < ApplicationController
  # GET /member_statuses
  # GET /member_statuses.xml
  def index
    @member_statuses = MemberStatus.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @member_statuses }
    end
  end

  # GET /member_statuses/1
  # GET /member_statuses/1.xml
  def show
    @member_status = MemberStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @member_status }
    end
  end

  # GET /member_statuses/new
  # GET /member_statuses/new.xml
  def new
    @member_status = MemberStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @member_status }
    end
  end

  # GET /member_statuses/1/edit
  def edit
    @member_status = MemberStatus.find(params[:id])
  end

  # POST /member_statuses
  # POST /member_statuses.xml
  def create
    @member_status = MemberStatus.new(params[:member_status])

    respond_to do |format|
      if @member_status.save
        flash[:notice] = 'MemberStatus was successfully created.'
        format.html { redirect_to(@member_status) }
        format.xml  { render :xml => @member_status, :status => :created, :location => @member_status }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @member_status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /member_statuses/1
  # PUT /member_statuses/1.xml
  def update
    @member_status = MemberStatus.find(params[:id])

    respond_to do |format|
      if @member_status.update_attributes(params[:member_status])
        flash[:notice] = 'MemberStatus was successfully updated.'
        format.html { redirect_to(@member_status) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @member_status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /member_statuses/1
  # DELETE /member_statuses/1.xml
  def destroy
    @member_status = MemberStatus.find(params[:id])
    @member_status.destroy

    respond_to do |format|
      format.html { redirect_to(member_statuses_url) }
      format.xml  { head :ok }
    end
  end
end
