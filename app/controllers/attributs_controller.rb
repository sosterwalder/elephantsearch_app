class AttributsController < ApplicationController
  def create
    logger.debug("ELEMENT: #{params[:element_id]}")
    @element = Element.find(params[:element_id])
    @attribut = @element.attributs.create(params[:attribut])
    redirect_to element_path(@element)
  end
  def destroy
    logger.debug('destroy im attributs Controller')
    @element = Element.find(params[:element_id])
    @attribut = @element.attributs.find(params[:id])
    @attribut.destroy
    redirect_to element_path(@element)
    
  end
  def show
        logger.debug('show im attributs Controller')
  end
end
