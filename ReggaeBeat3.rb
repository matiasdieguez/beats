use_bpm 32

# Establecer la escala de Sol menor
use_synth :fm

# Definir el patrón de bajo
bass_pattern = (ring :D2, :D2, :D2, :D2, :C3, :C3, :D2, :D2)

# Definir el patrón de batería
drum_pattern = (ring :bd_tek, :sn_dolf, :drum_cymbal_closed, :sn_dolf,
                :bd_tek, :sn_dolf, :drum_cymbal_closed, :sn_dolf)

# Sección de batería
live_loop :bateria do
  sample drum_pattern.tick, amp: 1.2, rate: 1
  sleep 0.25
end

# Sección de verso
live_loop :verso do
  with_fx :slicer, phase: 0.125 do
    8.times do
      play bass_pattern.tick, release: 0.3, amp: 1
      sleep 0.5
    end
    16.times do
      play bass_pattern.tick, amp: 1
      sample :drum_cymbal_closed
      sleep 0.5
    end
  end
end

# Sección de coro
live_loop :coro do
  with_fx :reverb, mix: 0.6, room: 0.8 do
    use_synth :piano
    2.times do
      play chord(:D, :minor7), sustain: 4
      sleep 4
    end
  end
end


