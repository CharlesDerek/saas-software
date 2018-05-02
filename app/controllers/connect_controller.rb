class ConnectController < ApplicationController
    
    
  skip_before_action :authenticate_tenant!, :only => [:support, :subscribe]

    def support
    
    end

    def subscribe
    EmailMeMailer.confirmation(params[:sub_email]).deliver_now
        respond_to do |format|
          format.json { head :ok }
        end
    end

end