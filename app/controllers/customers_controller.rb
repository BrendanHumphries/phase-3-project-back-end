class CustomersController < ApplicationController
    # route to get all customers
    get '/customers' do
        Customer.all.to_json 
    end

    post '/customers' do
       Customer.create(
        first_name: params[:first_name],
        last_name: params[:last_name]
       ).to_json
    end

    delete '/customers/:id' do 
        customer = Customer.find(params[:id])
        customer.destroy.to_json
    end
end