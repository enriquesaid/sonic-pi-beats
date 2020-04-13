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
  sleep 0.75
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
    play 35
    sleep 8
  end
end

live_loop :luuppi do
  sleep 32
  8.times do
    sample :loop_breakbeat, beat_stretch: 4
    sleep 4
  end
end

live_loop :piano do
  sleep 32
  with_fx :reverb do
    8.times do
      4.times do
        use_synth :piano
        play :C1, vel: 0.1, amp: 1, sustain: 1, hard: 0.5
        play :C2, vel: 0.2, amp: 0.25, hard: 0.5, release: 0.5
        sleep 1
      end
      4.times do
        use_synth :piano
        play :C2, vel: 0.1, amp: 1, sustain: 1
        play :C3, vel: 0.2, amp: 0.25, release: 0.5
        sleep 1
      end
    end
  end
end
