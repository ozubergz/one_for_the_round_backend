class ChargeController < ApplicationController

    def create
        Stripe.api_key = ENV['STRIPE_KEY']
        
        token = charge_params[:token]
        amount = charge_params[:amount].to_i

        charge = Stripe::Charge.create({
            amount: amount * 100,
            currency: 'usd',
            description: 'Example Charge',
            source: token
        });
    end    

    private
    
    def charge_params
        params.permit(:token, :amount)
    end
end
