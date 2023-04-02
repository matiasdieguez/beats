use_bpm 140

live_loop :drums do
    sample :bd_haus, amp: 2
    sample :drum_cymbal_closed, amp: 2
    sleep 1
    sample :bd_haus, amp: 2
    sleep 1
    sample :drum_snare_soft, amp: 2
    sleep 1
    sample :drum_cymbal_closed, amp: 2
    sleep 0.5
    sample :drum_cymbal_closed, amp: 2
    sleep 0.5
end

live_loop :bass do
  use_synth :fm
  use_synth_defaults release: 0.3, cutoff: 70
  
  # Patrón de notas del bajo
  bass_pattern = [:e2, :r, :g2, :r, :a2, :r, :d2, :r]
  
  
  2.times do
    bass_pattern.each do |note|
      play note, sustain: 0.5, amp: 0.8
      sleep 1
    end
  end
  
end
