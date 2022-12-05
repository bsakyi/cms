class PagesController < ApplicationController
   before_action :set_page, only: %i[ show edit update destroy ]

  layout "admin"

  def index
    @pages = Page.all
  end

  def show
  end

  def new
    @page = Page.new({:name => "Default"})
    @subjects = Subject.order('position ASC')
    @page_count = Page.count + 1
  end 

  def create
    @page = Page.new(page_params)

    respond_to do |format|
      if @page.save
        format.html { redirect_to(:action => 'index')}
        format.json { render :show, status: :created, location: @page }
      else
        @subjects = Subject.order('position ASC')
    @page_count = Page.count + 1
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @page.update(page_params)
        format.html { redirect_to page_url(@page), notice: "page was successfully updated." }
        format.json { render :show, status: :ok, location: @page }
      else
        @subjects = Subject.order('position ASC')
        @page_count = Page.count
        render('edit')
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end 

  def edit
    @page = Page.find(params[:id])
    @subjects = Subject.order('position ASC')
    @page_count = Page.count
  end 

 
  def destroy
    @page.destroy

    respond_to do |format|
      format.html { redirect_to page_url, notice: "page was successfully destroyed." }
      format.json { head :no_content }
    end
  end
 



  private 

  def set_page
    @page = Page.find(params[:id])
  end


  def page_params 
    params.require(:page).permit(:name, :visible, :position, :subject_id, :permalink,)
  end 
end
