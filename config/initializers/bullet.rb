if defined? Bullet
  # watch your queries while you develop your application and notify you
  # when you should add eager loading (N+1 queries),
  # when you use eager loading that is not necessary - and
  # when you should use counter caching
  Bullet.enable = true
  Bullet.console = true
  Bullet.rails_logger = false
  Bullet.bullet_logger = true
  Bullet.alert = false
  Bullet.add_footer = false
end
