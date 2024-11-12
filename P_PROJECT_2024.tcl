set cut_paste_input [stack 0]
version 15.1 v3
push 0
push $cut_paste_input
Group {
 inputs 2
 name P_PROJECT_PM
 selected true
 xpos -554
 ypos -545
 addUserKnob {20 User l P_PROJECT_PM}
 addUserKnob {26 ""}
 addUserKnob {41 referenceframe l "REF FRAME" T CTRL.referenceframe}
 addUserKnob {26 _2 l "" -STARTLINE T "Output is STMap"}
 addUserKnob {26 ""}
 addUserKnob {26 _1 l "" +STARTLINE T "P_PROJECT_PM by Peter Mercell inspired by Ivan Busquets & Pedro Andrade aka COMP LAIR"}
}
 Expression {
  inputs 0
  expr0 (x+0.5)/width
  expr1 (y+0.5)/height
  name PURE
  xpos -64
  ypos -139
 }
 Camera3 {
  inputs 0
  translate {{"\[topnode input1].translate(CTRL.referenceframe)"} {"\[topnode input1].translate(CTRL.referenceframe)"} {"\[topnode input1].translate(CTRL.referenceframe)"}}
  rotate {{"\[topnode input1].rotate(CTRL.referenceframe)"} {"\[topnode input1].rotate(CTRL.referenceframe)"} {"\[topnode input1].rotate(CTRL.referenceframe)"}}
  scaling {{"\[topnode input1].scaling(CTRL.referenceframe)"} {"\[topnode input1].scaling(CTRL.referenceframe)"} {"\[topnode input1].scaling(CTRL.referenceframe)"}}
  uniform_scale {{"\[topnode input1].uniform_scale(CTRL.referenceframe)"}}
  skew {{"\[topnode input1].skew(CTRL.referenceframe)"} {"\[topnode input1].skew(CTRL.referenceframe)"} {"\[topnode input1].skew(CTRL.referenceframe)"}}
  pivot_translate {{"\[topnode input1].pivot_translate(CTRL.referenceframe)"} {"\[topnode input1].pivot_translate(CTRL.referenceframe)"} {"\[topnode input1].pivot_translate(CTRL.referenceframe)"}}
  pivot_rotate {{"\[topnode input1].pivot_rotate(CTRL.referenceframe)"} {"\[topnode input1].pivot_rotate(CTRL.referenceframe)"} {"\[topnode input1].pivot_rotate(CTRL.referenceframe)"}}
  focal {{"\[topnode input1].focal(CTRL.referenceframe)"}}
  haperture {{"\[topnode input1].haperture(CTRL.referenceframe)"}}
  vaperture {{"\[topnode input1].vaperture(CTRL.referenceframe)"}}
  near {{"\[topnode input1].near(CTRL.referenceframe)"}}
  far {{"\[topnode input1].far(CTRL.referenceframe)"}}
  win_translate {{"\[topnode input1].win_translate(CTRL.referenceframe)"} {"\[topnode input1].win_translate(CTRL.referenceframe)"}}
  win_scale {{"\[topnode input1].win_scale(CTRL.referenceframe)"} {"\[topnode input1].win_scale(CTRL.referenceframe)"}}
  winroll {{"\[topnode input1].winroll(CTRL.referenceframe)"}}
  focal_point {{"\[topnode input1].focal_point(CTRL.referenceframe)"}}
  fstop {{"\[topnode input1].fstop(CTRL.referenceframe)"}}
  shutter {{"\[topnode input1].shutter(CTRL.referenceframe)"}}
  shutteroffset centred
  name cameraPM
  xpos -410
  ypos -705
 }
 Dot {
  name Dot11
  xpos -386
  ypos -611
 }
set Nd2b8fe00 [stack 0]
 Dot {
  name Dot12
  xpos -386
  ypos -449
 }
push $Nd2b8fe00
 Input {
  inputs 0
  name P
  xpos -210
  ypos -777
 }
 Remove {
  operation keep
  channels rgba
  name Remove2
  xpos -210
  ypos -679
 }
 Group {
  inputs 2
  name W_2_E
  xpos -210
  ypos -614
  addUserKnob {20 User l W_2_E}
  addUserKnob {26 _1 l "" +STARTLINE T "WORLD TO EYE"}
  addUserKnob {26 ""}
  addUserKnob {3 ref l "REF FRAME"}
  ref {{CTRL.referenceframe}}
  addUserKnob {26 ""}
  addUserKnob {26 _2 l "" +STARTLINE T "W_2_E by Peter Mercell inspired by Ivan Busquets & Pedro Andrade aka COMP LAIR"}
 }
  Input {
   inputs 0
   name CAM
   xpos 48
   ypos 53
   number 1
  }
  Input {
   inputs 0
   name P
   xpos 268
   ypos 55
  }
  Shuffle2 {
   fromInput1 {{0} B}
   fromInput2 {{0} B}
   mappings "4 rgba.red 0 0 rgba.red 0 0 rgba.green 0 1 rgba.green 0 1 rgba.blue 0 2 rgba.blue 0 2 white -1 -1 rgba.alpha 0 3"
   name Shuffle7
   xpos 268
   ypos 121
  }
  Add {
   value {{-1*parent.cameraPM.world_matrix.3} {-1*parent.cameraPM.world_matrix.7} {-1*parent.cameraPM.world_matrix.11} 0}
   name Add5
   xpos 268
   ypos 161
  }
  ColorMatrix {
   matrix {
       {{parent.cameraPM.world_matrix.0?parent.cameraPM.world_matrix.0:1} {parent.cameraPM.world_matrix.1} {parent.cameraPM.world_matrix.2}}
       {{parent.cameraPM.world_matrix.4} {parent.cameraPM.world_matrix.5?parent.cameraPM.world_matrix.5:1} {parent.cameraPM.world_matrix.6}}
       {{parent.cameraPM.world_matrix.8} {parent.cameraPM.world_matrix.9} {parent.cameraPM.world_matrix.10?parent.cameraPM.world_matrix.10:1}}
     }
   invert true
   name ColorMatrix6
   xpos 268
   ypos 223
  }
  Dot {
   name Dot11
   xpos 302
   ypos 308
  }
  Output {
   name Output1
   xpos 268
   ypos 408
  }
  Camera3 {
   inputs 0
   translate {{"\[topnode input1].translate(ref)"} {"\[topnode input1].translate(ref)"} {"\[topnode input1].translate(ref)"}}
   rotate {{"\[topnode input1].rotate(ref)"} {"\[topnode input1].rotate(ref)"} {"\[topnode input1].rotate(ref)"}}
   scaling {{"\[topnode input1].scaling(ref)"} {"\[topnode input1].scaling(ref)"} {"\[topnode input1].scaling(ref)"}}
   uniform_scale {{"\[topnode input1].uniform_scale(ref)"}}
   skew {{"\[topnode input1].skew(ref)"} {"\[topnode input1].skew(ref)"} {"\[topnode input1].skew(ref)"}}
   pivot_translate {{"\[topnode input1].pivot_translate(ref)"} {"\[topnode input1].pivot_translate(ref)"} {"\[topnode input1].pivot_translate(ref)"}}
   pivot_rotate {{"\[topnode input1].pivot_rotate(ref)"} {"\[topnode input1].pivot_rotate(ref)"} {"\[topnode input1].pivot_rotate(ref)"}}
   focal {{"\[topnode input1].focal(ref)"}}
   haperture {{"\[topnode input1].haperture(ref)"}}
   vaperture {{"\[topnode input1].vaperture(ref)"}}
   near {{"\[topnode input1].near(ref)"}}
   far {{"\[topnode input1].far(ref)"}}
   win_translate {{"\[topnode input1].win_translate(ref)"} {"\[topnode input1].win_translate(ref)"}}
   win_scale {{"\[topnode input1].win_scale(ref)"} {"\[topnode input1].win_scale(ref)"}}
   winroll {{"\[topnode input1].winroll(ref)"}}
   focal_point {{"\[topnode input1].focal_point(ref)"}}
   fstop {{"\[topnode input1].fstop(ref)"}}
   shutter {{"\[topnode input1].shutter(ref)"}}
   shutteroffset centred
   name cameraPM
   xpos 47
   ypos 162
  }
 end_group
 Dot {
  name Dot5
  xpos -176
  ypos -569
 }
 Group {
  inputs 2
  name E_2_NDC
  xpos -210
  ypos -452
  addUserKnob {20 User l E_2_NDC}
  addUserKnob {26 _1 l "" +STARTLINE T "EYE TO NDC"}
  addUserKnob {26 ""}
  addUserKnob {3 ref l "REF FRAME"}
  ref {{CTRL.referenceframe}}
  addUserKnob {26 ""}
  addUserKnob {26 _2 l "" +STARTLINE T "E_2_NDC by Peter Mercell inspired by Ivan Busquets & Pedro Andrade aka COMP LAIR"}
 }
  Input {
   inputs 0
   name CAM
   xpos -16
   ypos 27
   number 1
  }
  Input {
   inputs 0
   name P
   xpos 268
   ypos 55
  }
  Shuffle2 {
   fromInput1 {{0} B}
   fromInput2 {{0} B}
   name Shuffle7
   xpos 268
   ypos 97
  }
  ColorMatrix {
   matrix {
       {{1/tan(parent.FOV.h_fov)} 0 0}
       {0 {1/tan(parent.FOV.h_fov)} 0}
       {0 0 {"-(cameraPM.far + cameraPM.near) / (cameraPM.far - cameraPM.near)"}}
     }
   name ColorMatrix5
   xpos 268
   ypos 136
  }
set N3670dc00 [stack 0]
  Dot {
   name Dot1
   xpos 417
   ypos 139
  }
  Dot {
   name Dot10
   xpos 417
   ypos 265
  }
push $N3670dc00
  Add {
   value {0 0 {"(-2*(cameraPM.far * cameraPM.near)) / (cameraPM.far - cameraPM.near)"} 0}
   name Add4
   xpos 268
   ypos 198
  }
  Copy {
   inputs 2
   from0 rgba.blue
   to0 rgba.alpha
   name Copy1
   xpos 268
   ypos 258
  }
  Expression {
   expr0 r/a
   expr1 g/a
   expr2 b/a
   name W_konecne
   xpos 268
   ypos 311
  }
  Clamp {
   channels alpha
   name Clamp1
   xpos 268
   ypos 348
  }
  Dot {
   name Dot11
   xpos 302
   ypos 415
  }
  Output {
   name Output1
   xpos 268
   ypos 481
  }
  Camera3 {
   inputs 0
   translate {{"\[topnode input1].translate(ref)"} {"\[topnode input1].translate(ref)"} {"\[topnode input1].translate(ref)"}}
   rotate {{"\[topnode input1].rotate(ref)"} {"\[topnode input1].rotate(ref)"} {"\[topnode input1].rotate(ref)"}}
   scaling {{"\[topnode input1].scaling(ref)"} {"\[topnode input1].scaling(ref)"} {"\[topnode input1].scaling(ref)"}}
   uniform_scale {{"\[topnode input1].uniform_scale(ref)"}}
   skew {{"\[topnode input1].skew(ref)"} {"\[topnode input1].skew(ref)"} {"\[topnode input1].skew(ref)"}}
   pivot_translate {{"\[topnode input1].pivot_translate(ref)"} {"\[topnode input1].pivot_translate(ref)"} {"\[topnode input1].pivot_translate(ref)"}}
   pivot_rotate {{"\[topnode input1].pivot_rotate(ref)"} {"\[topnode input1].pivot_rotate(ref)"} {"\[topnode input1].pivot_rotate(ref)"}}
   focal {{"\[topnode input1].focal(ref)"}}
   haperture {{"\[topnode input1].haperture(ref)"}}
   vaperture {{"\[topnode input1].vaperture(ref)"}}
   near {{"\[topnode input1].near(ref)"}}
   far {{"\[topnode input1].far(ref)"}}
   win_translate {{"\[topnode input1].win_translate(ref)"} {"\[topnode input1].win_translate(ref)"}}
   win_scale {{"\[topnode input1].win_scale(ref)"} {"\[topnode input1].win_scale(ref)"}}
   winroll {{"\[topnode input1].winroll(ref)"}}
   focal_point {{"\[topnode input1].focal_point(ref)"}}
   fstop {{"\[topnode input1].fstop(ref)"}}
   shutter {{"\[topnode input1].shutter(ref)"}}
   shutteroffset centred
   name cameraPM
   xpos -17
   ypos 123
  }
  NoOp {
   inputs 0
   name FOV
   tile_color 0xff
   note_font "Bitstream Vera Sans Bold"
   xpos 109
   ypos 88
   hide_input true
   addUserKnob {20 User l FOV}
   addUserKnob {7 haperture l "h aperture" R 0 180}
   haperture {{cameraPM.haperture}}
   addUserKnob {7 vaperture l "v aperture" R 0 180}
   vaperture {{cameraPM.vaperture}}
   addUserKnob {7 focallenght l "focal lenght" R 0 180}
   focallenght {{cameraPM.focal}}
   addUserKnob {26 ""}
   addUserKnob {7 h_fov l "calculated horizontal FOV (rad)"}
   h_fov {{"(2 * atan(haperture / (2 * focallenght)))/2"}}
   addUserKnob {7 v_fov l "calculated  vertical FOV (rad)"}
   v_fov {{"(2 * atan(vaperture / (2 * focallenght)))/2"}}
  }
 end_group
 Dot {
  name Dot13
  xpos -176
  ypos -361
 }
 Group {
  name NDC_2_SCREEN
  xpos -210
  ypos -261
  addUserKnob {20 User l NDC_2_SCREEN}
  addUserKnob {26 ""}
  addUserKnob {26 _1 l "" +STARTLINE T "NDC_2_SCREEN by Peter Mercell inspired by Ivan Busquets"}
 }
  BackdropNode {
   inputs 0
   name BackdropNode1
   tile_color 0x71c67100
   label "NDC TO SCREEN"
   note_font_size 42
   xpos -223
   ypos -253
   bdwidth 229
   bdheight 246
  }
  StickyNote {
   inputs 0
   name StickyNote17
   label "\[\[1828 0 0 0]\n \[0 3656 0 0]\n \[0 0 1 0]\n \[1828 1556 0 1]]\n\n\n stred je anamorph\n​\t\n  \n\[1828,0,0,1828]\n\[0,3656,0,1556]\n\[0,0,1,0]\n\[0,0,0,1]\n​\t\n "
   xpos -97
   ypos -173
  }
  Input {
   inputs 0
   name Input1
   xpos -213
   ypos -211
  }
  Shuffle2 {
   fromInput1 {{0} B}
   fromInput2 {{0} B}
   name Shuffle8
   xpos -213
   ypos -163
  }
  ColorMatrix {
   channels all
   matrix {
       {{Shuffle8.width/2} 0 0}
       {0 {(Shuffle8.width/2)*anamorph} 0}
       {0 0 1}
     }
   name ColorMatrix6
   label "If there is Anamorph you have to change matrix.4 position in this node to the full size of resolution (or use user anamorph slider)"
   xpos -213
   ypos -108
   addUserKnob {20 User}
   addUserKnob {7 anamorph R 1 2}
   anamorph 1
  }
  Add {
   value {{Shuffle8.width/2} {Shuffle8.height/2} 0 0}
   name Add5
   xpos -213
   ypos -50
  }
  Output {
   name Output1
   xpos -213
   ypos 50
  }
 end_group
 Expression {
  expr0 (r)/width
  expr1 (g)/height
  expr2 0
  name Expression6
  xpos -210
  ypos -180
 }
 Dot {
  name Dot4
  xpos -176
  ypos -112
 }
set N3675dc00 [stack 0]
 Merge2 {
  inputs 2
  operation divide
  name Merge6
  xpos -64
  ypos -115
 }
 FrameHold {
  firstFrame {{CTRL.referenceframe}}
  name FrameHold2
  xpos -64
  ypos -91
 }
push $N3675dc00
 Merge2 {
  inputs 2
  operation multiply
  name Merge7
  xpos -210
  ypos -87
 }
 Output {
  name Output1
  xpos -210
  ypos 13
 }
 Input {
  inputs 0
  name CAM
  xpos -423
  ypos -776
  number 1
 }
 NoOp {
  inputs 0
  name CTRL
  tile_color 0xff00ff
  xpos -64
  ypos -452
  addUserKnob {20 User}
  addUserKnob {3 referenceframe l "REF FRAME"}
  referenceframe 50
 }
end_group
