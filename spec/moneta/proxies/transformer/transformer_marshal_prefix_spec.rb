describe 'transformer_marshal_prefix', proxy: :Transformer do
  moneta_build do
    Moneta.build do
      use :Transformer, key: [:marshal, :prefix], value: :marshal, prefix: 'moneta'
      adapter :Memory
    end
  end

  moneta_specs STANDARD_SPECS.without_persist.with_each_key
end
