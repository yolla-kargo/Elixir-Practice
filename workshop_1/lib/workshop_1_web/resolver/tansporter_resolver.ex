defmodule Workshop1Web.Resolver.TransporterResolver do
    # alias Workshop1.Transporter

    def all_links(_root, _args, _info) do
        {:ok, Transporter.all_transporter()}
    end
end