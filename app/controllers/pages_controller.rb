class PagesController < ApplicationController
   before_action :set_page, only: %i[ show edit update destroy ]

  layout "admin"

  def index
    @pages = Page.all
  end

  def show
  end

  def new
    @page = Page.new 
  end 

  def create
    @page = Page.new(page_params)

    respond_to do |format|
      if @page.save
        format.html { redirect_to page_url(@page), notice: "page was successfully created." }
        format.json { render :show, status: :created, location: @page }
      else
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
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end 

  def edit
   
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
