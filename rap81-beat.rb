use_bpm 81

live_loop :kick_and_snare do
  3.times do
    sample :bd_808, rate: 1, amp: 4
    sleep 1
    sample :elec_hi_snare, amp: 1
    sleep 1.5
    sample :bd_808, rate: 1, amp: 4
    sleep 0.5
    sample :elec_hi_snare, amp: 1
    sleep 1
  end

  sample :bd_808, rate: 1, amp: 4
  sleep 1
  sample :elec_hi_snare, amp: 1
  sleep 1.5
  sample :elec_hi_snare, amp: 1
  sleep 0.5
  sample :bd_808, rate: 1, amp: 4
  sleep 0.25
  sample :elec_hi_snare, amp: 1
  sleep 0.75
end

live_loop :hihat do
  sleep 2
  2.times do
    sample :drum_cymbal_closed, amp: 0.5
    sleep 0.5
    sample :drum_cymbal_closed, amp: 0.5
    sleep 1
  end

  sample :drum_cymbal_closed, amp: 0.5
  sleep 0.5
  sample :drum_cymbal_pedal, amp: 0.5
  sleep 1
end

live_loop :bass do
  use_synth :mod_beep
  sleep 8
  8.times do
    play 40
    sleep 4
  end
end

live_loop :luuppi do
  sample :loop_breakbeat, beat_stretch: 4
  sleep 4
end

live_loop :ujellus do
  with_fx :echo, phase: 1.5, mix: 0.5 do
    use_synth :mod_beep
    use_synth_defaults mod_phase: 0.1, pulse_width: 0.8, mod_wave: 2
    play [:G7, :G5, :G6].choose, amp: 0.015
    sleep 8
  end
end
