json.array!(@amoebas) do |amoeba|
  json.extract! amoeba, :name, :talent, :generation, :act_id
  json.url amoeba_url(amoeba, format: :json)
end
