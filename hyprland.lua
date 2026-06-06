hl.config({
  general = {
    col = {
      active_border = {
        colors = { "rgba(5a9db3ee)" },
      },
      inactive_border = "rgba(3b3b32ff)",
    },
    border_size = 2,
    gaps_in = 5,
    gaps_out = 8,
  },
  group = {
    col = {
      border_active = "rgba(5a9db3ee)",
      border_inactive = "rgba(3b3b32ff)",
    },
  },
  decoration = {
    rounding = 12,
    active_opacity = 0.96,
    inactive_opacity = 0.92,
    fullscreen_opacity = 1.0,
    blur = {
      enabled = true,
      size = 6,
      passes = 3,
      noise = 0.1,
      contrast = 1.2,
      brightness = 1.0,
      vibrancy = 0.2,
      vibrancy_darkness = 0.3,
    },
    shadow = {
      enabled = true,
      range = 12,
      render_power = 3,
      offset = { 3, 3 },
      color = "rgba(1a1812ee)",
    },
  },
  animations = {
    enabled = true,
  },
})

hl.curve("settle", { type = "bezier", points = { { 0.15, 0.85 }, { 0.25, 1.00 } } })
hl.curve("current", { type = "bezier", points = { { 0.30, 0.90 }, { 0.10, 1.00 } } })
hl.curve("drift", { type = "bezier", points = { { 0.22, 0.88 }, { 0.12, 1.00 } } })
hl.curve("ripple", { type = "bezier", points = { { 0.12, 0.72 }, { 0.08, 1.00 } } })
hl.curve("ebb", { type = "bezier", points = { { 0.35, 0.95 }, { 0.05, 1.00 } } })

hl.animation({
  leaf = "windows",
  enabled = true,
  speed = 6,
  bezier = "current",
  style = "popin 6%",
})
hl.animation({
  leaf = "windowsIn",
  enabled = true,
  speed = 8,
  bezier = "current",
  style = "popin 6%",
})
hl.animation({
  leaf = "windowsOut",
  enabled = true,
  speed = 6,
  bezier = "ebb",
  style = "popin 80%",
})
hl.animation({
  leaf = "windowsMove",
  enabled = true,
  speed = 7,
  bezier = "drift",
})
hl.animation({
  leaf = "workspaces",
  enabled = true,
  speed = 5,
  bezier = "settle",
  style = "slidevert",
})
hl.animation({
  leaf = "border",
  enabled = true,
  speed = 8,
  bezier = "ripple",
})
hl.animation({
  leaf = "fade",
  enabled = true,
  speed = 6,
  bezier = "drift",
})
hl.animation({
  leaf = "layers",
  enabled = true,
  speed = 7,
  bezier = "drift",
  style = "slide",
})
hl.animation({
  leaf = "layersIn",
  enabled = true,
  speed = 7,
  bezier = "drift",
  style = "slide",
})
hl.animation({
  leaf = "layersOut",
  enabled = true,
  speed = 7,
  bezier = "ebb",
  style = "slide",
})

hl.window_rule({
  opacity = "1.0 override",
  no_dim = true,
  match = {
    class = "^(vesktop|Vesktop)$",
  },
})
hl.window_rule({
  opacity = "1.0 override",
  no_dim = true,
  match = {
    class = "^(code|VSCode|VSCodium)$",
  },
})
hl.window_rule({
  opacity = "1.0 override",
  no_dim = true,
  match = {
    class = "^(chromium|Chromium|google-chrome|Brave|brave-browser)$",
  },
})

hl.layer_rule({
  no_anim = false,
  match = {
    namespace = "walker",
  },
})
