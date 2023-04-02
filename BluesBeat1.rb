use_bpm 80

# Definimos el patrón de batería de 12 barras
blues_pattern = [
  [ :drum_bass_soft, 1 ], [ :drum_snare_soft, 1 ], [ :drum_bass_soft, 0.5 ], [ :drum_snare_soft, 0.5 ],
  [ :drum_bass_soft, 0.5 ], [ :drum_snare_soft, 0.5 ], [ :drum_bass_soft, 1 ], [ :drum_snare_soft, 1 ],
  [ :drum_bass_soft, 0.5 ], [ :drum_snare_soft, 0.5 ], [ :drum_bass_soft, 0.5 ], [ :hh_ope, 0.5 ],
  [ :drum_bass_soft, 0.5 ], [ :drum_snare_soft, 0.5 ], [ :drum_bass_soft, 0.5 ], [ :hh_ope, 0.5 ],
  [ :drum_bass_soft, 1 ], [ :drum_snare_soft, 1 ], [ :drum_bass_soft, 1 ], [ :drum_snare_soft, 1 ],
  [ :drum_bass_soft, 0.5 ], [ :drum_snare_soft, 0.5 ], [ :drum_bass_soft, 0.5 ], [ :hh_ope, 0.5 ]
]

live_loop :drums do
  with_fx :reverb, room: 0.6 do
    blues_pattern.each do |sample, duration|
      sample sample, amp: 2, rate: 0.9 if sample != :hh_ope # Añadimos un efecto shuffle a todo menos el hi-hat
      sample sample, amp: 1, rate: 0.9 if sample == :hh_ope # El hi-hat se reproduce al tempo original
      sleep duration
    end
  end
end

