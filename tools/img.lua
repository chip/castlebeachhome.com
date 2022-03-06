local images = {
  "30-A-Gulf-Place-Beach-Access-Gate.jpeg",
  "30-A-Gulf-Place-Beach-Access-Stairs-With-View.jpeg",
  "30-A-Gulf-Place-Beach-Access-Stairs.jpeg",
  "30-A-Gulf-Place-Beach-Access-Water-View.jpeg",
  "30-A-Gulf-Place-Beach-Access.jpeg",
  "30-A-Gulf-Place-Carribean-Pool.jpeg",
  "30-A-Gulf-Place-Residences-A-Touch-of-Yellow.jpeg",
  "30-A-Gulf-Place-Residences-Balcony.jpeg",
  "30-A-Gulf-Place-Residences-Guest-Bathroom-Commode.jpeg",
  "30-A-Gulf-Place-Residences-Guest-Bathroom-Vanity.jpeg",
  "30-A-Gulf-Place-Residences-Guest-Bathroom.jpeg",
  "30-A-Gulf-Place-Residences-Guest-Bedroom-Side-Table.jpeg",
  "30-A-Gulf-Place-Residences-Guest-Bedroom.jpeg",
  "30-A-Gulf-Place-Residences-Kitchen-Backsplash.jpeg",
  "30-A-Gulf-Place-Residences-Kitchen.jpeg",
  "30-A-Gulf-Place-Residences-Living-Room-Orchids.jpeg",
  "30-A-Gulf-Place-Residences-Living-Room-TV.jpeg",
  "30-A-Gulf-Place-Residences-Living-Room.jpeg",
  "30-A-Gulf-Place-Residences-Master-Bathroom-Commode.jpeg",
  "30-A-Gulf-Place-Residences-Master-Bathroom-Shower.jpeg",
  "30-A-Gulf-Place-Residences-Master-Bathroom.jpeg",
  "30-A-Gulf-Place-Residences-Master-Bedroom-Dresser.jpeg",
  "30-A-Gulf-Place-Residences-Master-Bedroom.jpeg",
  "30-A-Gulf-Place-Residences-Storage-34-Inside.jpeg",
  "30-A-Gulf-Place-Residences-Storage-34.jpeg",
  "30-A-Gulf-Place-Residences-Washer-Dryer.jpeg",
  "30-A-Gulf-Place-Shops.jpeg",
  "30-A-Gulf-Place-Sign-Small.jpeg",
  "30-A-Gulf-Place-Sign-Smaller.jpeg",
  "30-A-Gulf-Place-Sign.jpeg",
  "30-A-Gulf-Place-Tennis-Courts-Pool.jpeg",
  "30-A-Gulf-Place-Tennis-Courts.jpeg"
}
local domain = "https://ik.imagekit.io/xgo8sb3wzhm/images/"

for _, image in ipairs(images) do
  local src = {}
  for _, n in ipairs({3, 6, 9}) do
    local query_string = string.format("%s%s?tr=w-%s00 %s00w", domain, image, n,
                                       n)
    table.insert(src, query_string)
  end
  local srcset = table.concat(src, ',')
  local alt = "30-A Florida - Gulf Place Residences - " .. image
  -- <img srcset="https://ik.imagekit.io/xgo8sb3wzhm/images/30-A-Gulf-Place-Residences-Living-Room.jpeg?tr=w-300 300w,
  --       https://ik.imagekit.io/xgo8sb3wzhm/images/30-A-Gulf-Place-Residences-Living-Room.jpeg?tr=w-600 600w,
  --       https://ik.imagekit.io/xgo8sb3wzhm/images/30-A-Gulf-Place-Residences-Living-Room.jpeg?tr=w-900 900w"
  local html = string.format([[
    <div class="owl-carousel-item">
      <img
        srcset="%s"
        class="lazyload img-fluid"
        alt="%s"
      />
    </div>]], srcset, alt)
  print(html)
end
