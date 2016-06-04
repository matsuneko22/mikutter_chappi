# -*- coding: utf-8 -*-

Plugin.create(:chappi) do

  command(
    :chappi,
    name: "死ぬまでチャッピー！！",
    condition: -> _ { true },
    visible: true,
    role: :timeline
  ) do
    say_chappi(Post.primary_service)
  end 
  def say_chappi(service)
    service.update(message: "死ぬまでチャッピー！！")
  end
end
