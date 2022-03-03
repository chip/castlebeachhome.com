local images = {
  "30-A-Beach-Access-SoWal.jpg",
  "30-A-Beach-Access.jpg",
  "30-A-Beach-Gulf.jpg",
  "30-A-Beach-SoWal.jpg",
  "30-A-Beach-With-Dunes.jpg",
  "30-A-Beach.jpg",
  "30-A-Biking-SoWal.jpg",
  "30-A-Dolphin.jpg",
  "30-A-Dunes.jpg",
  "30-A-Gulf-Place-Residences-Pool.jpg",
  "30-A-Lakes.jpg",
  "30-A-Prominence-North-Bikes.jpg",
  "30-A-Prominence-North-Bunk-Room.jpg",
  "30-A-Prominence-North-Dining-Room.jpg",
  "30-A-Prominence-North-Entrance.jpg",
  "30-A-Prominence-North-Front-Entry.jpg",
  "30-A-Prominence-North-Grills.jpg",
  "30-A-Prominence-North-Guest-Bath.jpg",
  "30-A-Prominence-North-Guest-Room.jpg",
  "30-A-Prominence-North-Kitchen.jpg",
  "30-A-Prominence-North-Living-Room-2.jpg",
  "30-A-Prominence-North-Living-Room-To-Kitchen.jpg",
  "30-A-Prominence-North-Living-Room.jpg",
  "30-A-Prominence-North-Master-Bath.jpg",
  "30-A-Prominence-North-Master-Bed.jpg",
  "30-A-Prominence-North-Master-Bedroom.jpg",
  "30-A-Prominence-North-Pool-Palms.jpg",
  "30-A-Prominence-North-Pool-Sunny.jpg",
  "30-A-Prominence-North-Pool.jpg",
  "30-A-Prominence-North-Porch.jpg",
  "30-A-Prominence-North-Washer-Dryer.jpg",
  "30-A-Seaside-Pavillion.jpg",
  "30-A-Seaside.jpg",
  "30-A-The-Hub-Entrance.jpg",
  "30-A-The-Hub-Fireplace.jpg",
  "30-A-The-Hub-Green.jpg",
  "30-A-The-Hub-Outside-2.jpg",
  "30-A-The-Hub-Outside.jpg",
  "30-A-The-Hub-Tables.jpg",
  "30-A-Walton-County-Beach-Access.jpg",
  "30-A-Water.jpg",
  "Emerald-Coast.jpg"
}

for _, image in ipairs(images) do
  local alt = "30-A Florida - Prominence North - " .. image
  local html = string.format([[
    <img
      class="lazyload img-fluid"
      width="495"
      height="660"
      alt="%s"
      data-src="img/prominence/%s"
    />]], alt, image)
  print(html)
end
