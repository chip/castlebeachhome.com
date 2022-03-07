local domain = 'https://ik.imagekit.io'
local id = 'xgo8sb3wzhm'
local path = 'images'
local src_transformation = 'tr:w-600'
local property = 'Gulf Place Residences'
local alt_prefix = '30-A Florida - '
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
  --
  -- "30-A-Beach-Access-SoWal.jpg",
  -- "30-A-Beach-Access.jpg",
  -- "30-A-Beach-Gulf.jpg",
  -- "30-A-Beach-SoWal.jpg",
  -- "30-A-Beach-With-Dunes.jpg",
  -- "30-A-Beach.jpg",
  -- "30-A-Biking-SoWal.jpg",
  -- "30-A-Dolphin.jpg",
  -- "30-A-Dunes.jpg",
  -- "30-A-Gulf-Place-Residences-Pool.jpg",
  -- "30-A-Lakes.jpg",
  -- "30-A-Prominence-North-Bikes.jpg",
  -- "30-A-Prominence-North-Bunk-Room.jpg",
  -- "30-A-Prominence-North-Dining-Room.jpg",
  -- "30-A-Prominence-North-Entrance.jpg",
  -- "30-A-Prominence-North-Front-Entry.jpg",
  -- "30-A-Prominence-North-Grills.jpg",
  -- "30-A-Prominence-North-Guest-Bath.jpg",
  -- "30-A-Prominence-North-Guest-Room.jpg",
  -- "30-A-Prominence-North-Kitchen.jpg",
  -- "30-A-Prominence-North-Living-Room-2.jpg",
  -- "30-A-Prominence-North-Living-Room-To-Kitchen.jpg",
  -- "30-A-Prominence-North-Living-Room.jpg",
  -- "30-A-Prominence-North-Master-Bath.jpg",
  -- "30-A-Prominence-North-Master-Bed.jpg",
  -- "30-A-Prominence-North-Master-Bedroom.jpg",
  -- "30-A-Prominence-North-Pool-Palms.jpg",
  -- "30-A-Prominence-North-Pool-Sunny.jpg",
  -- "30-A-Prominence-North-Pool.jpg",
  -- "30-A-Prominence-North-Porch.jpg",
  -- "30-A-Prominence-North-Washer-Dryer.jpg",
  -- "30-A-Seaside-Pavillion.jpg",
  -- "30-A-Seaside.jpg",
  -- "30-A-The-Hub-Entrance.jpg",
  -- "30-A-The-Hub-Fireplace.jpg",
  -- "30-A-The-Hub-Green.jpg",
  -- "30-A-The-Hub-Outside-2.jpg",
  -- "30-A-The-Hub-Outside.jpg",
  -- "30-A-The-Hub-Tables.jpg",
  -- "30-A-Walton-County-Beach-Access.jpg",
  -- "30-A-Water.jpg",
  -- "Emerald-Coast.jpg"
}

for _, image in ipairs(images) do
  local srcset_paths = {}
  for _, n in ipairs({360, 720, 1024}) do
    local transformation = string.format('tr:w-%s', n)
    local url = table.concat({domain, id, transformation, path, image}, '/')
    local src = string.format("%s %sw", url, n)
    table.insert(srcset_paths, src)
  end
  local srcset = table.concat(srcset_paths, ",\n                ")
  local src = table.concat({domain, id, src_transformation, path, image}, '/')
  local alt = alt_prefix .. property .. ' - ' .. image
  local html = string.format([[
    <div class="owl-carousel-item">
      <img
        class="lazyload img-fluid"
        alt="%s"
        src="%s"
        srcset="%s"
      />
    </div>]], alt, src, srcset)
  print(html)
end
