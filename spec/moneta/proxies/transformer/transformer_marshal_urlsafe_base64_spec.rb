describe 'transformer_marshal_urlsafe_base64', proxy: :Transformer do
  moneta_build do

    Moneta.build do
      use :Transformer, key: [:marshal, :urlsafe_base64], value: [:marshal, :urlsafe_base64]
      adapter :Memory
    end
  end

  moneta_loader do |value|
    ::Marshal.load(::Base64.urlsafe_decode64(value))
  end

  moneta_specs STANDARD_SPECS.without_persist.with_each_key
end
