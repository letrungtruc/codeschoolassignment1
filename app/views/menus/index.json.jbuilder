json.array!(@menus) do |menu|
  json.extract! menu, :id, :name, :descriptions, :price, :section, :img_url
  json.url menu_url(menu, format: :json)
end
