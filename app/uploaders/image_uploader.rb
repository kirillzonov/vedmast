class ImageUploader < CarrierWave::Uploader::Base

  storage CarrierWave::Storage::YandexFotki

  yandex_login    'drevnmast'
  yandex_password 'vfrcvfrc'

  ##
  #  Uncomment this if you want use 'net/http' library instead 'curb'.
  #  Also you need install 'multipart-post' gem for use this option.
  #
  #yandex_net_http true

  ##
  # This required for removing old image from fotki.yandex.ru
  # on updating image attached to model
  #
  before :cache, :remove_old_file_before_cache

  def remove_old_file_before_cache(new_file)
    remove! unless blank?
  end
  def cache_dir
    "#{Rails.root}/tmp/uploads"
  end

end
