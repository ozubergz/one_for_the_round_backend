class ChargeController < ApplicationController

    def create
        Stripe.api_key = ENV['STRIPE_KEY']
        
        token = params[:token]
        amount = params[:amount].to_i

        charge = Stripe::Charge.create({
            amount: amount * 100,
            currency: 'usd',
            description: 'Example Charge',
            source: token
        })
    end    
end
