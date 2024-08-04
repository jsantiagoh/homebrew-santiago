cask 'supernote-partner' do
    version '2.0.22'
    sha256 :no_check # It’s recommended to provide a sha256, but :no_check is used if the file might change frequently
  
    url "https://download-firmware.supernote.com/client/macos/#{version}/supernote_partner-com-#{version}-macos.dmg"
    name 'Supernote Partner'
    desc 'Application to connect and manage Supernote devices'
    homepage 'https://supernote.com/'
  
    app 'Supernote Partner.app'
  
    zap trash: [
      '~/Library/Application Support/Supernote Partner',
      '~/Library/Preferences/com.supernote.partner.plist',
      '~/Library/Saved Application State/com.supernote.partner.savedState',
    ]
  end