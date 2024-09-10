\version "2.20.0"
\include "solmisasi.ily"
#(set-default-paper-size "a4")

% ---- PAPER SETTINGS -----
\header {
  title = "Aku Indonesia"
  poet = "Naura Ayu"
  composer = "Arr. by Yeyee (2024)"
  tagline = \markup {
    \typewriter \fontsize #-1 {   
      "Yeyee - 2024"
    }
  }
}

\paper {
  indent = 2.4\mm
  short-indent = 2.4\mm
  bottom-margin = 1\cm
  top-margin = 1\cm
  print-page-number = false

  #(define fonts
    (make-pango-font-tree "Linux Libertine O"
                          "Nimbus Sans, Nimbus Sans L"
                          "DejaVu Sans Mono"
                          (/ staff-height pt 20)))
}

% ----------------------------------




%  ---- MUSICAL MARKUPS ------------
headerMusicGlobal = {
  \tempo 4 = 100
  \time 4/4
  \key bes \major
}
% ----------------------------------


% VOICES ---------------------------
% naik oktaf = pakai ' (kutip 1)
% turun oktaf = pakai , (koma)
sopran = {
  \relative c' {
    %intro
    r1
    r1
    r1
    r1
    c'1
    d1
    c1
    d2. r4 \break
    r1
    
    % bait 1
    r1*8
    
    % musik antar bait
    c2\mf b8 c8 b8 g8
    f4 f8 g8 b8 c8 b8 c8 \break
    e4 f8 e8 c4 e16 f16 e16 c16 b2. r4
    
    % bait 2
    r1 * 7
    
    % bridge
    r4 r4 r8[ c,8] d8 e8(\break
    e2) r8[ c8 ] d8 e8(
    e2) r8[ c8 ] d8 e8(
    e4) a8 b8~b8 c8~c8 b8( b8)
    a8~a8 e8~e8 c8~c8 f8(\break
    f1)\< (f2)  e8 f8 g8 \! a8 a8. \f g8. g4. r4
    
    g4\ff a4 c4 d4 \break

    % reff
    e8. e8. g,8 e'8 e8 d8 c8
    c8. a8. g8 g8 a8 c8 a8 \pageBreak
    e'8. d8. g,8 g8 a8 c8 a8
    e'8. d8. g,8 g8 a8 c8(d8)
    e8. e8. g,8 e'8 e8 d8 c8
    c8. a8. g8 g8 a8 c8 a8
    e'8. d8. g,8 g8 a8 c8 a8
    e'8. d8. g,8 d'8 d8 c8 b8
    c4 r4 r4 r4
    
    % musik 2
    r1
    r8[ g16 g8.] g4 g16 g8. g4
    a16 a8. a4 a16 a8. a4
    f16 f8. f4 f16 f8. f4
    g16 g8. g4 g16 g8. g4
    g16 g8. g4 g16 g8. g4
    a16 a8. a4 a16 a8. g8 \break
    a4 a4 b4 c4
    b2.  g8 g8
    a4 c4 d4 e4
    d1 \break
    g,4 a4 c4 d4
    
    \key d \major
    r8[ a8] r8[ b8] r8[d8] r8[e8]
  }
}

alto = {
  \relative c' {
    %intro
    r1
    r1
    r1
    r1
    e1
    f1
    e1
    f2. r4
    r1
    
    % bait 1
    r1*8
    
    % musik antar bait
    e8 d16 e16 f8 d8 e8 d16 e16 f8 d8
    e8 d16 e16 f8 d8 e8 d16 e16 f8 d8
    e8 d16 e16 f8 d8 e8 d16 e16 f8 d8 g2. r4 \break
    
    % bait 2
    r1*7
    
    % bridge
    r4 r4 r8[ c,8] d8 e8(\break
    e2) r8[ c8 ] d8 e8(
    e2) r8[ c8 ] d8 e8(
    e4) a8 b8~b8 c8~c8 b8( b8)
    a8~a8 e8~e8 c8~c8 d8( d1)(
    d2) c8 d8 e8 f8 f8. e8. d4. r4
    
    d4 e4 f4 g4
    
    % reff
    g8. g8. e8 g8 g8 f8 e8
    g8. f8. e8 e8 f8 g8 e8
    g8. f8. e8 e8 f8 g8 e8
    g8. f8. f8 d8 e8 f8(g8)
    g8. g8. e8 g8 g8 f8 e8
    g8. f8. e8 e8 f8 g8 e8
    g8. f8. e8 e8 f8 g8 e8
    g8. f8. f8 d8 e8 f8 g8
    e4 r4 r4 r4
    
    % musik 2
    r1
    e8. e8. e8 e8. e8. e8
    f8. f8. f8 f8. f8. f8
    d8. d8. d8 d8. d8. d8
    e8. e8. e8 e8. e8. e8
    e8. e8. e8 e8. e8. e8
    f8. f8. f8 f8. f8. f8
    f4 f4 f4 f4
    g2. g8 g8
    d4 e4 fis4 fis4
    g1
    d4 e4 f4 g4
    
    \key d \major
    r8[ e8] r8[ fis8] r8[g8] r8[a8]
  }
}

tenor = {
  \relative c' {
    %intro
    r1
    r1
    g'8 g16 g16 g16 g16 g8 g4 g16 g16 g16 g16
    g8 g16 g16 g16 g16 g8 g4 r4
    g8 g16 g16 g16 g16 g8 g4 g16 g16 g16 g16
    g8 g16 g16 g16 g16 g8 g4 r4
    g8 g16 g16 g16 g16 g8 g4 g16 g16 g16 g16
    g8 g16 g16 g16 g16 g8 g4 r4
    r1
    
    % unisono SA & TB
    r1*8
    
    % musik antar bait    
    g8 g4 g8 g8 g4 g8
    a8 a4 a8 a8 a4 a8
    g8 g4 g8 g8 g4 a8
    b8 b8 b8 b8 b4 r4


    % bait 2
    r1 * 8
    
    % bridge
    c1(
    c1)(
    c1)(
    a1)(
    f2)( g2 a2 c2 
    c2.) r4
    
    g4 g4 a4 b4
    
    % reff
    c8. c8. g8 c8 c8 b8 a8
    g8. a8. g8 g8 a8 b8 c8
    c8. a8. g8 g8 a8 b8 c8
    c8. b8. e8 d8 c8 a8(g8)
    c8. c8. g8 c8 c8 b8 a8
    g8. a8. g8 g8 a8 b8 c8
    c8. a8. g8 g8 a8 b8 c8
    c8. b8. e8 d8 c8 a8 g8
    c4 r4 r4 r4
    
    % musik 2
    r1
    c2 g4 c4
    a2. r4
    c4. a8 c8 c8 \tuplet 3/2 { d e d }
    c2. r4
    g8 g16 g16 g8 g16 g16 g8 g8 r4
    g8 g16 g16 g8 g16 g16 g8 g8 r8[ g8]
    a4 a4 b4 c4
    b2. b8 b8
    c4 c4 b4 a4
    c1
    g4 g4 a4 b4
    
    \key d \major
    r8[ a8] r8[ a8] r8[ b8] r8[ cis8]
  }
}

bass = {
  \relative c' {
    %intro
    c8. c8. c4. r4 
    c8. c8. c4. g'8 g8 \break
    c,8. c8. c4. r4 
    c8. c8. c4. g'8 g8 
    c,8. c8. c4. r4 
    c8. c8. c4. g'8 g8
    c,8. c8. c4. r4 
    d8. d8. d4. r4 
    r1
    
    % unisono SA & TB
    r1*8
    
    % musik antar bait
    c8. c8. c4. d8 e8
    f8. f8. f4. e8 d8
    c8. c8. c4. d8 e8
    g8 g8 g8 g8 g4 r4

    
    % bait 2
    r1*8
    
    % bridge
    a1(
    gis1)(
    g1)(
    fis1)(
    d2)( e2 f2 d2 
    g2.) r4
    
    g4 g4 g4 g4
    
    % reff
    c,8. c8. c8 c8 c8 d8 e8
    f8. f8. f8 e8 d8 c8 e8
    d8. d8. d8 d8 d8 e8 f8
    g8. g8. g8 g8 g8 f8(d8)
    c8. c8. c8 c8 c8 d8 e8
    f8. f8. f8 e8 d8 c8 e8
    d8. d8. d8 d8 d8 e8 f8
    g8. g8. g8 g8 g8 f8 d8
    c4 r4 r4 r4 \break
    
    % musik 2
    r1
    c'2 g4 c4
    a2. r4
    a4. e8 g8 g8 \tuplet 3/2 { a g a }
    c2. r4
    c,8 c16 c16 c8 c16 c16 c8 c8 r4
    c8 c16 c16 c8 c16 c16 c8 c8 r8[c8]
    d4 d4 d4 d4
    e2. e8 e8
    f4 f4 d4 d4
    g1
    g4 g4 g4 g4
    
    \key d \major
    r8[ a8] r8[ a8] r8[ a8] r8[ a8]
  }
}

unisonoSA = {
   \relative c' {
     % intro
     r1*9
     
     % bait bagian unisono SA
     r8\mp [ e16 g8.] e16 g8. e8 g8 a8
     g8 f4 c4. f8 e8 \break
     f8 c'4 c4. f,8 e8
     f8 c'4 b4. r4 \break
     r8[ e,16 g8.] e16 g8. e8 g8 a8
     g8 f4 c4. f8 e8 \break
     f8 c'4 c4. f,8 e8
     f8 c'4 b4. r4 \break
     
     % bridge 
     %r4 r4 r8[ do,8] \break re8 mi8~
     %mi2 r8[do8] re8 mi8~
     %mi2 r8[do8] re8 mi8~
     %mi4 la8 si8~si8 do8~do8 si8~si8
     %la8~la8 mi8~mi8 do8~do8 fa8 ~fa1
   }
}

unisonoTB = {
  \relative c' {
     % intro
     r1*9
     
     % unisono SA
     r1*8
     
     % musik 1
     r1*4
     
     % bait 2
     r8[ e16\mp g8.] e16 g8. e8 g8 a8
     g8 f4 c4. f8 e8 \break
     f8 c'4 c4. f,8 e8
     f8 c'4 b4. r4 \break
     r8[ e,16 g8.] e16 g8. e8 g8 a8
     g8 f4 c4. f8 e8 \break
     f8 c'4 c4. f,8 e8
     f8 c'4 d4. r4 \break
     
     % bridge
     r1*8
     
     % reff
     r1*8
  }
}

% LIRIK ----------------------------

reffLyric_A = \lyricmode {
  A -- ku a -- da lah In -- do -- ne -- sia!
  ber -- a -- ne -- ka ra -- gam -- nya war -- na war -- ni i -- ra -- ma Oh In -- dah -- nya!
  A -- ku a -- da -- lah In -- do -- ne -- sia
  ru -- kun -- lah se -- la -- ma -- nya ber -- dam -- ping -- an ber -- sa -- ma
  Ki -- ta In -- do -- ne -- sia!
}

sopranLyric = \lyricmode {
  % intro
  In do ne sia
  
  % musik antar bait
  Haa.. _ _ _ _ aaa.. _ _ _ _ _ _
  Haa.. _ _ _ _ _ _ _ aa..
  
  % bridge
  Tak a -- da yang sa ma
  i tu lah yang mem bu -- at ki -- ta ‘ka -- ya‘
  ha -- rus se -- la -- lu ing -- at
  Oh! oh! oh! oh!
  
  % reff cukup di bass aja
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  
  ding ding ding ding ding ding
  ding ding ding ding ding ding
  ding ding ding ding ding ding
  ding ding ding ding ding ding
  ding ding ding ding ding ding
  ding ding ding ding ding,
  A -- ku In -- do -- ne -- sia
  Bhin -- ne -- ka Tung -- gal I -- ka
  Oh! Oh! Oh! Oh!
  Oh! Oh! Oh! Oh!
}

altoLyric = \lyricmode {
  % intro
  In do ne sia
  
  % musik antar bait
  ding din din pa ding _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  ding din din pa ding _ _ _ _ _ _ 
  
  % bridge
  Tak a -- da yang sa ma
  i tu lah yang mem bu -- at ki -- ta ‘ka -- ya‘
  ha -- rus se -- la -- lu ing -- at
  Oh! oh! oh! oh!
  
  % reff cukup di bass aja
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  
  dung dung dung dung dung dung
  dung dung dung dung dung dung
  dung dung dung dung dung dung
  dung dung dung dung dung dung
  dung dung dung dung dung dung
  dung dung dung dung dung,
  A -- ku In -- do -- ne -- sia
  Bhin -- ne -- ka Tung -- gal I -- ka
  Oh! Oh! Oh! Oh!
  Oh! Oh! Oh! Oh!
}

tenorLyric = \lyricmode {
  % intro
  Cak cak a cak a cak cak cak a cak a
  cak cak a cak a cak cak
  Cak cak a cak a cak cak cak a cak a
  cak cak a cak a cak cak
  Cak cak a cak a cak cak cak a cak a
  cak cak a cak a cak cak
  
  % musik antar bait
  dung x.. _ _ _ _
  dung x.. _ _ _ _
  dung x.. _ _ _ _
  dung dung dung dung dung
  
  % bridge
  Huu..
  Oh! oh! oh! oh!
  
  % reff cukup di bass aja
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  
  % musik 2
  Hei hei hei hei
  to -- rang sa -- mua ba su da ra
  to -- rang sa -- mua ba -- su -- da -- ra
  to -- rang sa -- mua ba -- su -- da -- ra
  A -- ku In -- do -- ne -- sia
  Bhin -- ne -- ka Tung -- gal I -- ka
  Oh! Oh! Oh! Oh!
  Oh! Oh! Oh! Oh!
}

bassLyric = \lyricmode {
  % intro
  Dung dung dung... 
  dung dung dung dam dam
  Dung dung dung...
  dung dung dung dam dam
  Dung dung dung...
  dung dung dung dam dam
  Dung dung dung...
  dung dung dung
  
  % musik antar bait
  dung x.. _ _ _ dung x.. _ _ _
  dung x.. _ _ _ dung dung dung dung dung
  
  % bridge
  Huu..
  Oh! oh! oh! oh!
  
  \reffLyric_A
  
  Hei hei hei hei
  to -- rang sa -- mua ba su da ra
  to -- rang sa -- mua ba -- su -- da -- ra
  to -- rang sa -- mua ba -- su -- da -- ra
  A -- ku In -- do -- ne -- sia
  Bhin -- ne -- ka Tung -- gal I -- ka
  Oh! Oh! Oh! Oh!
  Oh! Oh! Oh! Oh!
}


unisonoSALyric = \lyricmode {
  % bait 1
  Tak pe -- du li -- kan war -- na
  ku -- lit -- nya, ben tuk ru -- pa -- nya
  ra -- gam war -- na -- nya..
  Tak pe -- du li -- kan ta -- nah
  a -- sal -- nya
  tu -- tur bi -- ca -- ra ke -- ya kin -- an -- nya
}

unisonoTBLyric = \lyricmode {
  % bait 2
  Tak pe -- du -- li -- kan a -- da di -- ma -- na
  ha -- ti ter ta -- nam 'tuk ne -- g'ri i -- ni
  Wa -- lau du ni -- a ri -- uh men -- de -- ra
  da mai se -- la -- lu bu mi per ti -- wi
}

% ---------------------------------


% SCORE ---------------------------

\score {
<<  
  \new SolmisasiTimeAndKeySignature {
    \solmisasiMusic \headerMusicGlobal
  }
  
  
  \new ChoirStaff {
  << 
    % UNISONO SA
    \new SolmisasiStaff \with {
      vocalName = "SA"
      shortVocalName = "SA"
    } {
      \new SolmisasiVoice = "voiceUnisonoSA" { \solmisasiMusic \unisonoSA } 
    }
    \new Lyrics \with {
    } \lyricsto "voiceUnisonoSA" {
      \unisonoSALyric
    }
    
    
    % UNISONO TB
    \new SolmisasiStaff \with {
      vocalName = "TB"
      shortVocalName = "TB"
    } {
      \new SolmisasiVoice = "voiceUnisonoTB" { \solmisasiMusic \unisonoTB } 
    }
    \new Lyrics \with {
    } \lyricsto "voiceUnisonoTB" {
      \unisonoTBLyric
    }
    
    % SOPRAN
    \new SolmisasiStaff \with {
      vocalName = "S"
      shortVocalName = "S"
    } {
    <<
      \new SolmisasiVoice = "voiceSopran" { \solmisasiMusic \sopran }
    >>  
    }
    \new Lyrics \with {
    } \lyricsto "voiceSopran" 
    {
        \sopranLyric
    }
    
    % ALTO
    \new SolmisasiStaff \with {
      vocalName = "A"
      shortVocalName = "A"
    } {
    <<
      \new SolmisasiVoice = "voiceAlto" { \solmisasiMusic \alto }
      \new NullVoice = "nullAlto" { \solmisasiMusic \alto }
    >>  
    }
    \new Lyrics \with {
    } \lyricsto "nullAlto" {
        \altoLyric
    }
    
    
    % TENOR
    \new SolmisasiStaff \with {
      vocalName = "T"
      shortVocalName = "T"
    } {
    <<
      \new SolmisasiVoice = "voiceTenor" { \solmisasiMusic \tenor }
      \new NullVoice = "nullTenor" { \solmisasiMusic \tenor }
    >>  
    }
    \new Lyrics \with {
    } \lyricsto "nullTenor" {
        \tenorLyric
    }
    
    
    
    % BASS
    \new SolmisasiStaff \with { 
      vocalName = "B"
      shortVocalName = "B"
    } {
    <<
      \new SolmisasiVoice = "voiceBass" { \solmisasiMusic \bass }
      \new NullVoice = "nullBass" { \solmisasiMusic \bass }
    >>  
    }
    \new Lyrics \with {
    } \lyricsto "nullBass" {
        \bassLyric
    }
  >> 
  }
>>
}