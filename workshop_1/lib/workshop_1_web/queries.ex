# defmodul Loads.TransporterQueries do
#     use Absinthe.Schema.Notation
#     use Absinthe.Relay.Schema.Notation, :classic

#     object :get_transporter do
#         @desc "Get all transporter"
#         field :all_transporter, :transporter do
#             arg(:id, :integer)
#             arg(:uname, :string)
#             arg(:npwp_number, :string)
#             arg(:phone_number, :string)
#             arg(:status, :string)
#             resolve(&TransporterResolver.all_transporter/3)
#         end
#     end

#     # object :create_transporter do
#     #     @desc "Create New transporter"
#     #     field :create_transporter, :transporter do
#     #         arg(:id, :integer)
#     #         arg(:uname, :string)
#     #         arg(:npwp_number, :string)
#     #         arg(:phone_number, :string)
#     #         resolve(&TransporterResolver.create_transporter/3)
#     #     end
#     # end
# end