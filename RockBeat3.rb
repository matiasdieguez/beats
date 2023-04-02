use_bpm 100

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

