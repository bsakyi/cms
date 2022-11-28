class SectionsController < ApplicationController
 
  before_action :set_section, only: %i[ show edit update destroy ]

  layout "admin"

  def index
    @sections = Section.all
  end

  def show
  end

  def new
    @section = section.new 
  end 

  def create
    @section = section.new(section_params)

    respond_to do |format|
      if @section.save
        format.html { redirect_to section_url(@section), notice: "section was successfully created." }
        format.json { render :show, status: :created, location: @section }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @section.update(section_params)
        format.html { redirect_to section_url(@section), notice: "section was successfully updated." }
        format.json { render :show, status: :ok, location: @section }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @section.errors, status: :unprocessable_entity }
      end
    end
  end 

  def edit
   
  end 

 
  def destroy
    @section.destroy

    respond_to do |format|
      format.html { redirect_to section_url, notice: "section was successfully destroyed." }
      format.json { head :no_content }
    end
  end


  private 

  def set_section
    @section = section.find(params[:id])
  end


  def section_params 
    params.require(:section).permit(:name, :visible, :position, :page_id, :content_type, :content)
  end 
end
