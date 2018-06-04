class HomeController < ApplicationController

  def index
  end

  def download_pdf
    send_file(
      "#{Rails.root}/public/AnaisWesaac2018_VF.pdf",
      filename: "anais_wesaac_2018_VF.pdf",
      type: "application/pdf"
    )
  end
  
end
