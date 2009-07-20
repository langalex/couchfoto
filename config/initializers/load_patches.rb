Dir.glob(RAILS_ROOT + '/lib/*_patch.rb').each do |file|
  require file
end