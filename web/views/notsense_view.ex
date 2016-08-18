defmodule Notsense.NotsenseView do
  use Notsense.Web, :view

  def tower do
    if (Application.get_env(:notsense, :live_ads)) do
      render("adsense_tower.html", %{})
    else
      tag(:img, src: "/images/tower_ad.jpg")
    end
  end

  def block do
    if (Application.get_env(:notsense, :live_ads)) do
      render("adsense_block.html", %{})
    else
      tag(:img, src: "/images/block_ad.jpg")
    end
  end

end