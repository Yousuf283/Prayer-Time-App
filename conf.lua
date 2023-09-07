function love.conf(t)
    t.console = true
    t.window.title = 'Prayer Time App By --Yousuf'
    t.window.resizable = false
    t.window.borderless = true
    t.window.fullscreen = true
    t.window.fullscreentype = "desktop"
    t.modules.audio = false
    t.modules.data = false
    t.modules.event = true
    t.modules.font = true
    t.modules.graphics = true
    t.modules.image = false
    t.modules.joystick = false
    t.modules.keyboard = false
    t.modules.math = true
    t.modules.mouse = false
    t.modules.physics = false
    t.modules.sound = false
    t.modules.system = false
    t.modules.thread = false
    t.modules.timer = false
    t.modules.touch = false
    t.modules.video = false
    t.modules.window = true

    t.externalstorage = false
    t.accelerometerjoystick = false
    t.audio.mic = false
    t.audio.mixwithsystem = true
end
