use_bpm 52

live_loop :drums do
  with_fx :reverb, room: 0.8 do
    4.times do
      sample :drum_bass_soft, amp: 1.5
      sleep 0.5
      sample :drum_snare_soft, amp: 1.5
      sleep 0.25
      sample :drum_cymbal_closed, amp: 1.5
      sleep 0.25
      sample :drum_snare_soft, amp: 1.5
      sleep 0.25
      sample :drum_cymbal_closed, amp: 1.5
      sleep 0.25
    end
  end
end
