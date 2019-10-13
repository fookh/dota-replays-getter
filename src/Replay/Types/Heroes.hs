module Replay.Types.Heroes
    ( HeroName(..)
    ) where

data HeroName = Antimage
                | Axe
                | Bane
                | Bloodseeker
                | CrystalMaiden
                | DrowRanger
                | Earthshaker
                | Juggernaut
                | Mirana
                | Nevermore
                | Morphling
                | PhantomLancer
                | Puck
                | Pudge
                | Razor
                | SandKing
                | StormSpirit
                | Sven
                | Tiny
                | Vengefulspirit
                | Windrunner
                | Zuus
                | Kunkka
                | Lina
                | Lich
                | Lion
                | ShadowShaman
                | Slardar
                | Tidehunter
                | WitchDoctor
                | Riki
                | Enigma
                | Tinker
                | Sniper
                | Necrolyte
                | Warlock
                | Beastmaster
                | Queenofpain
                | Venomancer
                | FacelessVoid
                | SkeletonKing
                | DeathProphet
                | PhantomAssassin
                | Pugna
                | TemplarAssassin
                | Viper
                | Luna
                | DragonKnight
                | Dazzle
                | Rattletrap
                | Leshrac
                | Furion
                | LifeStealer
                | DarkSeer
                | Clinkz
                | Omniknight
                | Enchantress
                | Huskar
                | NightStalker
                | Broodmother
                | BountyHunter
                | Weaver
                | Jakiro
                | Batrider
                | Chen
                | Spectre
                | DoomBringer
                | AncientApparition
                | Ursa
                | SpiritBreaker
                | Gyrocopter
                | Alchemist
                | Invoker
                | Silencer
                | ObsidianDestroyer
                | Lycan
                | Brewmaster
                | ShadowDemon
                | LoneDruid
                | ChaosKnight
                | Meepo
                | Treant
                | OgreMagi
                | Undying
                | Rubick
                | Disruptor
                | NyxAssassin
                | NagaSiren
                | KeeperOfTheLight
                | Wisp
                | Visage
                | Slark
                | Medusa
                | TrollWarlord
                | Centaur
                | Magnataur
                | Shredder
                | Bristleback
                | Tusk
                | SkywrathMage
                | Abaddon
                | ElderTitan
                | LegionCommander
                | EmberSpirit
                | EarthSpirit
                | Terrorblade
                | Phoenix
                | Oracle
                | Techies
                | WinterWyvern
                | ArcWarden
                | AbyssalUnderlord
                | MonkeyKing
                | Pangolier
                | DarkWillow
                | Grimstroke
                | Mars
                | NewHeroPoggers
                deriving (Show)

instance Enum HeroName where
    fromEnum Antimage = 1
    fromEnum Axe = 2
    fromEnum Bane = 3
    fromEnum Bloodseeker = 4
    fromEnum CrystalMaiden = 5
    fromEnum DrowRanger = 6
    fromEnum Earthshaker = 7
    fromEnum Juggernaut = 8
    fromEnum Mirana = 9
    fromEnum Nevermore = 11
    fromEnum Morphling = 10
    fromEnum PhantomLancer = 12
    fromEnum Puck = 13
    fromEnum Pudge = 14
    fromEnum Razor = 15
    fromEnum SandKing = 16
    fromEnum StormSpirit = 17
    fromEnum Sven = 18
    fromEnum Tiny = 19
    fromEnum Vengefulspirit = 20
    fromEnum Windrunner = 21
    fromEnum Zuus = 22
    fromEnum Kunkka = 23
    fromEnum Lina = 25
    fromEnum Lich = 31
    fromEnum Lion = 26
    fromEnum ShadowShaman = 27
    fromEnum Slardar = 28
    fromEnum Tidehunter = 29
    fromEnum WitchDoctor = 30
    fromEnum Riki = 32
    fromEnum Enigma = 33
    fromEnum Tinker = 34
    fromEnum Sniper = 35
    fromEnum Necrolyte = 36
    fromEnum Warlock = 37
    fromEnum Beastmaster = 38
    fromEnum Queenofpain = 39
    fromEnum Venomancer = 40
    fromEnum FacelessVoid = 41
    fromEnum SkeletonKing = 42
    fromEnum DeathProphet = 43
    fromEnum PhantomAssassin = 44
    fromEnum Pugna = 45
    fromEnum TemplarAssassin = 46
    fromEnum Viper = 47
    fromEnum Luna = 48
    fromEnum DragonKnight = 49
    fromEnum Dazzle = 50
    fromEnum Rattletrap = 51
    fromEnum Leshrac = 52
    fromEnum Furion = 53
    fromEnum LifeStealer = 54
    fromEnum DarkSeer = 55
    fromEnum Clinkz = 56
    fromEnum Omniknight = 57
    fromEnum Enchantress = 58
    fromEnum Huskar = 59
    fromEnum NightStalker = 60
    fromEnum Broodmother = 61
    fromEnum BountyHunter = 62
    fromEnum Weaver = 63
    fromEnum Jakiro = 64
    fromEnum Batrider = 65
    fromEnum Chen = 66
    fromEnum Spectre = 67
    fromEnum DoomBringer = 69
    fromEnum AncientApparition = 68
    fromEnum Ursa = 70
    fromEnum SpiritBreaker = 71
    fromEnum Gyrocopter = 72
    fromEnum Alchemist = 73
    fromEnum Invoker = 74
    fromEnum Silencer = 75
    fromEnum ObsidianDestroyer = 76
    fromEnum Lycan = 77
    fromEnum Brewmaster = 78
    fromEnum ShadowDemon = 79
    fromEnum LoneDruid = 80
    fromEnum ChaosKnight = 81
    fromEnum Meepo = 82
    fromEnum Treant = 83
    fromEnum OgreMagi = 84
    fromEnum Undying = 85
    fromEnum Rubick = 86
    fromEnum Disruptor = 87
    fromEnum NyxAssassin = 88
    fromEnum NagaSiren = 89
    fromEnum KeeperOfTheLight = 90
    fromEnum Wisp = 91
    fromEnum Visage = 92
    fromEnum Slark = 93
    fromEnum Medusa = 94
    fromEnum TrollWarlord = 95
    fromEnum Centaur = 96
    fromEnum Magnataur = 97
    fromEnum Shredder = 98
    fromEnum Bristleback = 99
    fromEnum Tusk = 100
    fromEnum SkywrathMage = 101
    fromEnum Abaddon = 102
    fromEnum ElderTitan = 103
    fromEnum LegionCommander = 104
    fromEnum EmberSpirit = 106
    fromEnum EarthSpirit = 107
    fromEnum Terrorblade = 109
    fromEnum Phoenix = 110
    fromEnum Oracle = 111
    fromEnum Techies = 105
    fromEnum WinterWyvern = 112
    fromEnum ArcWarden = 113
    fromEnum AbyssalUnderlord = 108
    fromEnum MonkeyKing = 114
    fromEnum Pangolier = 120
    fromEnum DarkWillow = 119
    fromEnum Grimstroke = 121
    fromEnum Mars = 129
    fromEnum NewHeroPoggers = 999

    toEnum 1 = Antimage
    toEnum 2 = Axe
    toEnum 3 = Bane
    toEnum 4 = Bloodseeker
    toEnum 5 = CrystalMaiden
    toEnum 6 = DrowRanger
    toEnum 7 = Earthshaker
    toEnum 8 = Juggernaut
    toEnum 9 = Mirana
    toEnum 11 = Nevermore
    toEnum 10 = Morphling
    toEnum 12 = PhantomLancer
    toEnum 13 = Puck
    toEnum 14 = Pudge
    toEnum 15 = Razor
    toEnum 16 = SandKing
    toEnum 17 = StormSpirit
    toEnum 18 = Sven
    toEnum 19 = Tiny
    toEnum 20 = Vengefulspirit
    toEnum 21 = Windrunner
    toEnum 22 = Zuus
    toEnum 23 = Kunkka
    toEnum 25 = Lina
    toEnum 31 = Lich
    toEnum 26 = Lion
    toEnum 27 = ShadowShaman
    toEnum 28 = Slardar
    toEnum 29 = Tidehunter
    toEnum 30 = WitchDoctor
    toEnum 32 = Riki
    toEnum 33 = Enigma
    toEnum 34 = Tinker
    toEnum 35 = Sniper
    toEnum 36 = Necrolyte
    toEnum 37 = Warlock
    toEnum 38 = Beastmaster
    toEnum 39 = Queenofpain
    toEnum 40 = Venomancer
    toEnum 41 = FacelessVoid
    toEnum 42 = SkeletonKing
    toEnum 43 = DeathProphet
    toEnum 44 = PhantomAssassin
    toEnum 45 = Pugna
    toEnum 46 = TemplarAssassin
    toEnum 47 = Viper
    toEnum 48 = Luna
    toEnum 49 = DragonKnight
    toEnum 50 = Dazzle
    toEnum 51 = Rattletrap
    toEnum 52 = Leshrac
    toEnum 53 = Furion
    toEnum 54 = LifeStealer
    toEnum 55 = DarkSeer
    toEnum 56 = Clinkz
    toEnum 57 = Omniknight
    toEnum 58 = Enchantress
    toEnum 59 = Huskar
    toEnum 60 = NightStalker
    toEnum 61 = Broodmother
    toEnum 62 = BountyHunter
    toEnum 63 = Weaver
    toEnum 64 = Jakiro
    toEnum 65 = Batrider
    toEnum 66 = Chen
    toEnum 67 = Spectre
    toEnum 69 = DoomBringer
    toEnum 68 = AncientApparition
    toEnum 70 = Ursa
    toEnum 71 = SpiritBreaker
    toEnum 72 = Gyrocopter
    toEnum 73 = Alchemist
    toEnum 74 = Invoker
    toEnum 75 = Silencer
    toEnum 76 = ObsidianDestroyer
    toEnum 77 = Lycan
    toEnum 78 = Brewmaster
    toEnum 79 = ShadowDemon
    toEnum 80 = LoneDruid
    toEnum 81 = ChaosKnight
    toEnum 82 = Meepo
    toEnum 83 = Treant
    toEnum 84 = OgreMagi
    toEnum 85 = Undying
    toEnum 86 = Rubick
    toEnum 87 = Disruptor
    toEnum 88 = NyxAssassin
    toEnum 89 = NagaSiren
    toEnum 90 = KeeperOfTheLight
    toEnum 91 = Wisp
    toEnum 92 = Visage
    toEnum 93 = Slark
    toEnum 94 = Medusa
    toEnum 95 = TrollWarlord
    toEnum 96 = Centaur
    toEnum 97 = Magnataur
    toEnum 98 = Shredder
    toEnum 99 = Bristleback
    toEnum 100 = Tusk
    toEnum 101 = SkywrathMage
    toEnum 102 = Abaddon
    toEnum 103 = ElderTitan
    toEnum 104 = LegionCommander
    toEnum 106 = EmberSpirit
    toEnum 107 = EarthSpirit
    toEnum 109 = Terrorblade
    toEnum 110 = Phoenix
    toEnum 111 = Oracle
    toEnum 105 = Techies
    toEnum 112 = WinterWyvern
    toEnum 113 = ArcWarden
    toEnum 108 = AbyssalUnderlord
    toEnum 114 = MonkeyKing
    toEnum 120 = Pangolier
    toEnum 119 = DarkWillow
    toEnum 121 = Grimstroke
    toEnum 129 = Mars
    toEnum _   = NewHeroPoggers