defmodule Workshop1Web.Transporter.Schema do
    use Absinthe.Schema
    # this is the resolver that will be used
    alias CommunityWeb.NewsResolver
    
    # import_types(Loads.TransporterQueries)
    object :transporter do
       field :id, :integer
       field :uname, :string
       field :npwp_number, :string
       field :phone_number, :string
       field :status, :string
    end

    query do
        # import_fields(:get_transporter)
       
        @desc "Get all transporter"
        field :all_transporter, :transporter 
        
        
    end
    mutation do
    # this is the mutation entry point to our app
    end
end