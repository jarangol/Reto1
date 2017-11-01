class RamUsesChannel < ApplicationCable::Channel
  def suscribed
    stream_from 'ram_uses'
  end
end
