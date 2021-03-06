defmodule Notsense.NotsenseView do
  use Notsense.Web, :view

  def script do
    if (Application.get_env(:notsense, :live_ads)) do
      render("adsense_script.html", %{})
    end
  end

  def intitiate_load do
    if (Application.get_env(:notsense, :live_ads)) do
      render("adsense_initiate.html", %{})
    end
  end

  def responsive do
    if (Application.get_env(:notsense, :live_ads)) do
      render("adsense_responsive.html", %{})
    else
      tag(:img, src: "/images/tower_ad.jpg")
    end
  end

  def tower do
    if (Application.get_env(:notsense, :live_ads)) do
      render("adsense_tower.html", %{})
    else
      tag(:img, src: "/images/tower_ad.jpg")
    end
  end



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

  def banner do
    if (Application.get_env(:notsense, :live_ads)) do
      render("adsense_banner.html", %{})
    else
      tag(:img, src: "/images/banner_ad.jpg")
    end
  end

  def key do
    Application.get_env(:notsense, :adsense_key)
  end

  def slot(ty) do
    Application.get_env(:notsense, :adsense_slot)[ty]
  end

end