use_bpm 100

# Definimos un patrón de batería
drum_pattern = [
  [:bd_haus, 0.5], # bombo
  [:drum_bass_hard, 0.5], # bombo
  [:drum_cymbal_closed, 0.5], # charles
  [:drum_snare_hard, 0.5], # caja
]

# Definimos una función para reproducir la batería
live_loop :play_drums do
  drum_pattern.each do |drum, duration|
    sample drum, amp: 1
    sample :drum_cymbal_closed
    sleep duration
  end
end

