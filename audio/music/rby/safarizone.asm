Music_RBYSafariZone:
	musicheader 3, 1, Music_SafariZone_Ch1
	musicheader 1, 2, Music_SafariZone_Ch2
	musicheader 1, 3, Music_SafariZone_Ch3

Music_SafariZone_Ch1: ; bc2e (2:7c2e)
	tempo 132
	volume 119
	vibrato 6, 52
	dutycycle 2
	notetype 12, 146
	octave 3
	slidepitchto 1, 4, A_
	note C_, 1
	slidepitchto 1, 4, A_
	note G_, 1
	slidepitchto 1, 4, A_
	note C_, 1
	slidepitchto 1, 4, A_
	note G_, 1
	note __, 4
	dutycycle 3

Music_SafariZone_branch_bc4f:
	callchannel Music_SafariZone_branch_bc5f
	notetype 12, 164
	note F#, 4
	callchannel Music_SafariZone_branch_bc5f
	notetype 12, 164
	note F#, 4
	loopchannel 0, Music_SafariZone_branch_bc4f

Music_SafariZone_branch_bc5f:
	notetype 12, 162
	octave 3
	note C_, 4
	note G_, 4
	note C_, 4
	note G_, 4
	note C_, 4
	note G_, 4
	note C_, 4
	endchannel


Music_SafariZone_Ch2: ; bc6a (2:7c6a)
	dutycycle 2
	vibrato 8, 37
	notetype 12, 162
	octave 4
	note G_, 1
	note D_, 1
	note G_, 1
	note D_, 1
	note __, 4
	dutycycle 3

Music_SafariZone_branch_bc79:
	callchannel Music_SafariZone_branch_bc89
	notetype 12, 181
	note A_, 4
	callchannel Music_SafariZone_branch_bc89
	notetype 12, 181
	note B_, 4
	loopchannel 0, Music_SafariZone_branch_bc79

Music_SafariZone_branch_bc89:
	notetype 12, 178
	octave 3
	note G_, 4
	note D_, 4
	note G_, 4
	note D_, 4
	note G_, 4
	note D_, 4
	note G_, 4
	endchannel


Music_SafariZone_Ch3: ; bc94 (2:7c94)
	notetype 12, 16
	note __, 8

Music_SafariZone_branch_bc97:
	callchannel Music_SafariZone_branch_bca5
	octave 4
	note A_, 4
	callchannel Music_SafariZone_branch_bca5
	octave 4
	note B_, 4
	loopchannel 0, Music_SafariZone_branch_bc97

Music_SafariZone_branch_bca5:
	octave 3
	note A_, 2
	note __, 2
	octave 4
	note D_, 2
	note __, 2
	octave 3
	note A_, 2
	note __, 2
	octave 4
	note D_, 2
	note __, 2
	octave 3
	note A_, 2
	note __, 2
	octave 4
	note D_, 2
	note __, 2
	octave 3
	note A_, 2
	note __, 2
	endchannel
