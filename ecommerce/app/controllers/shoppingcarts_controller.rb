class ShoppingcartsController < ApplicationController
  # GET /shoppingcarts
  # GET /shoppingcarts.xml
  def index
    @shoppingcarts = Shoppingcart.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @shoppingcarts }
    end
  end

  # GET /shoppingcarts/1
  # GET /shoppingcarts/1.xml
  def show
    @shoppingcart = Shoppingcart.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @shoppingcart }
    end
  end

  # GET /shoppingcarts/new
  # GET /shoppingcarts/new.xml
  def new
    @shoppingcart = Shoppingcart.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @shoppingcart }
    end
  end

  # GET /shoppingcarts/1/edit
  def edit
    @shoppingcart = Shoppingcart.find(params[:id])
  end

  # POST /shoppingcarts
  # POST /shoppingcarts.xml
  def create
    @shoppingcart = Shoppingcart.new(params[:shoppingcart])

    respond_to do |format|
      if @shoppingcart.save
        format.html { redirect_to(@shoppingcart, :notice => 'Shoppingcart was successfully created.') }
        format.xml  { render :xml => @shoppingcart, :status => :created, :location => @shoppingcart }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @shoppingcart.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /shoppingcarts/1
  # PUT /shoppingcarts/1.xml
  def update
    @shoppingcart = Shoppingcart.find(params[:id])

    respond_to do |format|
      if @shoppingcart.update_attributes(params[:shoppingcart])
        format.html { redirect_to(@shoppingcart, :notice => 'Shoppingcart was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @shoppingcart.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /shoppingcarts/1
  # DELETE /shoppingcarts/1.xml
  def destroy
    @shoppingcart = Shoppingcart.find(params[:id])
    @shoppingcart.destroy

    respond_to do |format|
      format.html { redirect_to(shoppingcarts_url) }
      format.xml  { head :ok }
    end
  end
end
