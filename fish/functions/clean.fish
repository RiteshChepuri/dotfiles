function clean
  sudo apt autoremove &&
  echo "********************************** apt packages cleaning done **************************" &&
  brew cleanup &&
  echo "****************************************** brew cleanup done *************************************" &&
  brew autoremove &&
  echo "*********************************************************** brew autoremove done **********************************"
end
