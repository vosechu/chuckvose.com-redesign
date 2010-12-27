class ContentController < ApplicationController
  # # GET /content
  # # GET /content.xml
  # def index
  #   @content = Content.all
  # 
  #   respond_to do |format|
  #     format.html # index.html.erb
  #     format.xml  { render :xml => @content }
  #   end
  # end

  # GET /content/1
  # GET /content/1.xml
  def show
    params[:id] = 1 unless params[:id]
    
    @content = Content.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @content }
    end
  end
  # 
  # # GET /content/new
  # # GET /content/new.xml
  # def new
  #   @content = Content.new
  # 
  #   respond_to do |format|
  #     format.html # new.html.erb
  #     format.xml  { render :xml => @content }
  #   end
  # end
  # 
  # # GET /content/1/edit
  # def edit
  #   @content = Content.find(params[:id])
  # end
  # 
  # # POST /content
  # # POST /content.xml
  # def create
  #   @content = Content.new(params[:content])
  # 
  #   respond_to do |format|
  #     if @content.save
  #       format.html { redirect_to(@content, :notice => 'Content was successfully created.') }
  #       format.xml  { render :xml => @content, :status => :created, :location => @content }
  #     else
  #       format.html { render :action => "new" }
  #       format.xml  { render :xml => @content.errors, :status => :unprocessable_entity }
  #     end
  #   end
  # end
  # 
  # # PUT /content/1
  # # PUT /content/1.xml
  # def update
  #   @content = Content.find(params[:id])
  # 
  #   respond_to do |format|
  #     if @content.update_attributes(params[:content])
  #       format.html { redirect_to(@content, :notice => 'Content was successfully updated.') }
  #       format.xml  { head :ok }
  #     else
  #       format.html { render :action => "edit" }
  #       format.xml  { render :xml => @content.errors, :status => :unprocessable_entity }
  #     end
  #   end
  # end
  # 
  # # DELETE /content/1
  # # DELETE /content/1.xml
  # def destroy
  #   @content = Content.find(params[:id])
  #   @content.destroy
  # 
  #   respond_to do |format|
  #     format.html { redirect_to(content_url) }
  #     format.xml  { head :ok }
  #   end
  # end
end
