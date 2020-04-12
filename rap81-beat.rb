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
  16.times do
    play 35, amp: 2
    sleep 4
  end
end

live_loop :luuppi do
  sleep 32
  8.times do
    sample :loop_breakbeat, beat_stretch: 4
    sleep 4
  end
end
