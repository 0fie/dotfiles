{ config, pkgs, ... }:

let
  placeholderAndTimeColor = "rgb(205, 214, 244)";
in
{
  programs.hyprlock = {
    enable = true;
    general = {
      hide_cursor = true;
      disable_loading_bar = false;
      no_fade_in = false;
    };

    backgrounds = [{
        monitor = "";
        path = toString(pkgs.fetchurl {
	  url = "https://raw.githubusercontent.com/0fie/wallpapers/main/Art/mountain.png";
	  sha256 = "sha256-8LmAIexewsIDpTg8ijm5dnhV+477kFAG8e7FeqEvh0Y=";
	});
	blur_size = 1;
	blur_passes = 2;
    }];

    input-fields = [{
        size = { width = 300; height = 40; };
        outline_thickness = 2;
        outer_color = "rgb(69, 71, 90)";
        inner_color = placeholderAndTimeColor;
        font_color = "rgb(127, 132, 156)";
        fade_on_empty = false;
        placeholder_text = "password...";
        dots_spacing = 0.3;
        dots_center = true;
    }];

    labels = [{
        monitor = "";
        text = "$TIME";
	font_family = "JetBrains Mono Nerd Font";
        font_size = 50;
        color = placeholderAndTimeColor;
        position = { x = 0; y = 70; };
        valign = "center";
        halign = "center";
    }];
  };
}
