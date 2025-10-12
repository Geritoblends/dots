#!/usr/bin/env -S ags run

import app from "ags/gtk4/app";
import { Astal } from "ags/gtk4";

app.start({
  css: `
    window {
        background-color: transparent;
        color: transparent;
        margin-left: 0px;
    }

    .sucker {
        background-color: transparent;
        border-radius: 50px 0 0 50px;
        box-shadow: 
            0 0 0 0px #080808;
    }

    .desucker {
        background-color: transparent;
        border-radius: 50px 0 0 50px;
        box-shadow: 
            0 0px 0 12px alpha(#080808, 1);
    }

    .antisucker {
        background-color: transparent;
        border-radius: 50px 0 0 50px;
        box-shadow: 
        0 0px 0 0px #080808;
    }

        `,
  main() {
    const { TOP, LEFT, RIGHT, BOTTOM } = Astal.WindowAnchor;

    return (
      <window visible anchor={TOP | BOTTOM | LEFT}>
        <box>
          <overlay>
            <box class="sucker">hel</box>

            <box $type="overlay" class="desucker"></box>

            <box $type="overlay" class="antisucker"></box>
          </overlay>
        </box>
      </window>
    );
  },
});
