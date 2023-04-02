use_bpm 32

# Establecer la escala de Sol menor
use_synth :fm

# Definir el patr�n de bajo
bass_pattern = (ring :G2, :G2, :G2, :G2, :D3, :D3, :G2, :G2)

# Definir el patr�n de bater�a
drum_pattern = (ring :drum_cymbal_closed, :sn_dolf)

# Secci�n de bater�a
live_loop :bateria do
  sample drum_pattern.tick, amp: 1.2, rate: 1
  sleep 0.25
end

# Secci�n de verso
live_loop :verso do
  with_fx :slicer, phase: 0.125 do
    play bass_pattern.tick, release: 0.3, amp: 0.8
    sleep 0.5
  end
end

# Secci�n de coro
live_loop :coro do
  with_fx :reverb, mix: 0.6, room: 0.8 do
    use_synth :piano
    2.times do
      play chord(:G, :minor7), sustain: 4
      sleep 4
    end
  end
end


