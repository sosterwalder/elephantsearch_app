require 'rest-client'

class RestController < ApplicationController
  
  def index
    #hier geb ich die ganze liste aus
    logger.debug('jezt bin ich im index vom rest controller product')    
   # require 'net/http'
    url = 'http://www.thomas-bayer.com/sqlrest/PRODUCT/' # ACME boomerang
   # resp = Net::HTTP.get_response(URI.parse(url))
    #aufteilen von resp_text in einzellne Zeilen
    rest = RestClient.get url
    @resp_text= rest.to_str
    @elements = Hash.from_xml(@resp_text)
    @elements = @elements["PRODUCTList"]["PRODUCT"]
    logger.debug(rest.to_str)

  end
  
  def output
  end
    
  def new
  end
  
  def create
    logger.debug('juhuii wir sind im create (conroller)')
    # hier ruf ich dan nden rest auf; bei fehler fehler von REst ausgeben, sonst redirect_to (ruft action in controller auf)index
    # für fehler render zu fehler Seite
    id = params[:id]
    name = params[:name]
    price = params[:price]
    url = 'http://www.thomas-bayer.com/sqlrest/PRODUCT/'

    logger.debug('id : ' + id + ' name: ' + name + ' price: '+ price)
    data = "<resource>
      <ID>"+  id + "</ID>
      <NAME>"+ name + "</NAME>
      <PRICE>" + price + "</PRICE>
      </resource>"
    params = {
      'ID' => id,
      'NAME' => name,
      'PRICE' => price
    }
    resp = RestClient.post 'http://www.thomas-bayer.com/sqlrest/PRODUCT/',  data, :content_type => :xml 
    redirect_to rest_index_path
  end
  
end

  