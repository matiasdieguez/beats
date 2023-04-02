use_bpm 160

# Definimos un patrón de batería
drum_pattern = [
  [:bd_haus, 1], # bombo
  [:drum_snare_hard, 0.5], # caja
  [:bd_haus, 0.5], # bombo
  [:bd_haus, 0.5], # bombo
  [:drum_snare_hard, 1], # caja
  [:bd_haus, 0.5], # bombo
]

# Definimos una función para reproducir la batería
live_loop :play_drums do
  drum_pattern.each do |drum, duration|
    sample drum, amp: 1
    sleep duration
  end
end

live_loop :play_cymbs do
    4.times do
        sample :drum_cymbal_hard
        sleep 1
    end
    sleep 12
end

live_loop :play_hi do
    sleep 8
    8.times do
        sample :drum_cymbal_closed
        sleep 1
    end
end

live_loop :play_roll do
    sleep 16
    2.times do
        sample :drum_tom_mid_hard
        sleep 1
        sample :drum_tom_lo_hard
    end
end
