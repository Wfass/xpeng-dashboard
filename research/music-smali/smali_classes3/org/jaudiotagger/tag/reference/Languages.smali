.class public Lorg/jaudiotagger/tag/reference/Languages;
.super Lorg/jaudiotagger/tag/datatype/AbstractStringStringValuePair;
.source "Languages.java"


# static fields
.field public static final DEFAULT_ID:Ljava/lang/String; = "eng"

.field public static final DEFAULT_VALUE:Ljava/lang/String; = "English"

.field public static final LANGUAGE_FIELD_SIZE:I = 0x3

.field public static final MEDIA_MONKEY_ID:Ljava/lang/String; = "XXX"

.field public static final WINAMP_ID:Ljava/lang/String; = "\u0000\u0000\u0000"

.field private static languageTypes:Lorg/jaudiotagger/tag/reference/Languages;


# direct methods
.method private constructor <init>()V
    .locals 13

    .line 51
    invoke-direct {p0}, Lorg/jaudiotagger/tag/datatype/AbstractStringStringValuePair;-><init>()V

    .line 52
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "aar"

    const-string v2, "Afar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "abk"

    const-string v2, "Abkhazian"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "ace"

    const-string v2, "Achinese"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "ach"

    const-string v2, "Acoli"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "ada"

    const-string v2, "Adangme"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "afa"

    const-string v2, "Afro-Asiatic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "afh"

    const-string v2, "Afrihili"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "afr"

    const-string v2, "Afrikaans"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "aka"

    const-string v2, "Akan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "akk"

    const-string v2, "Akkadian"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "Albanian"

    const-string v2, "alb"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "ale"

    const-string v3, "Aleut"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "alg"

    const-string v3, "Algonquian languages"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "amh"

    const-string v3, "Amharic"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "ang"

    const-string v3, "Old English,(ca.450-1100)"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "apa"

    const-string v3, "Apache languages"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "ara"

    const-string v3, "Arabic"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "arc"

    const-string v3, "Aramaic"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "Armenian"

    const-string v3, "arm"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v3, "arn"

    const-string v4, "Araucanian"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v3, "arp"

    const-string v4, "Arapaho"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v3, "art"

    const-string v4, "Artificial"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v3, "arw"

    const-string v4, "Arawak"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v3, "asm"

    const-string v4, "Assamese"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v3, "ast"

    const-string v4, "Asturian; Bable"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v3, "ath"

    const-string v4, "Athapascan languages"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v3, "aus"

    const-string v4, "Australian languages"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v3, "ava"

    const-string v4, "Avaric"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v3, "ave"

    const-string v4, "Avestan"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v3, "awa"

    const-string v4, "Awadhi"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v3, "aym"

    const-string v4, "Aymara"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v3, "aze"

    const-string v4, "Azerbaijani"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v3, "bad"

    const-string v4, "Banda"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v3, "bai"

    const-string v4, "Bamileke languages"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v3, "bak"

    const-string v4, "Bashkir"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v3, "bal"

    const-string v4, "Baluchi"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v3, "bam"

    const-string v4, "Bambara"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v3, "ban"

    const-string v4, "Balinese"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v3, "Basque"

    const-string v4, "baq"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v4, "bas"

    const-string v5, "Basa"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v4, "bat"

    const-string v5, "Baltic"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v4, "bej"

    const-string v5, "Beja"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v4, "bel"

    const-string v5, "Belarusian"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v4, "bem"

    const-string v5, "Bemba"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v4, "ben"

    const-string v5, "Bengali"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v4, "ber"

    const-string v5, "Berber"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v4, "bho"

    const-string v5, "Bhojpuri"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v4, "bih"

    const-string v5, "Bihari"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v4, "bik"

    const-string v5, "Bikol"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v4, "bin"

    const-string v5, "Bini"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v4, "bis"

    const-string v5, "Bislama"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v4, "bla"

    const-string v5, "Siksika"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v4, "bnt"

    const-string v5, "Bantu"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v4, "Tibetan"

    const-string v5, "bod"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v5, "bos"

    const-string v6, "Bosnian"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v5, "bra"

    const-string v6, "Braj"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v5, "bre"

    const-string v6, "Breton"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v5, "btk"

    const-string v6, "Batak (Indonesia)"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v5, "bua"

    const-string v6, "Buriat"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v5, "bug"

    const-string v6, "Buginese"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v5, "bul"

    const-string v6, "Bulgarian"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v5, "Burmese"

    const-string v6, "bur"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v6, "cad"

    const-string v7, "Caddo"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v6, "cai"

    const-string v7, "Central American Indian"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v6, "car"

    const-string v7, "Carib"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v6, "cat"

    const-string v7, "Catalan"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v6, "cau"

    const-string v7, "Caucasian"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v6, "ceb"

    const-string v7, "Cebuano"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v6, "cel"

    const-string v7, "Celtic"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v6, "Czech"

    const-string v7, "ces"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v7, "cha"

    const-string v8, "Chamorro"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v7, "chb"

    const-string v8, "Chibcha"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v7, "che"

    const-string v8, "Chechen"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v7, "chg"

    const-string v8, "Chagatai"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v7, "Chinese"

    const-string v8, "chi"

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v8, "chk"

    const-string v9, "Chuukese"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v8, "chm"

    const-string v9, "Mari"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v8, "chn"

    const-string v9, "Chinook jargon"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v8, "cho"

    const-string v9, "Choctaw"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v8, "chp"

    const-string v9, "Chipewyan"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v8, "chr"

    const-string v9, "Cherokee"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v8, "chu"

    const-string v9, "Church Slavic"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v8, "chv"

    const-string v9, "Chuvash"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v8, "chy"

    const-string v9, "Cheyenne"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v8, "cmc"

    const-string v9, "Chamic languages"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v8, "cop"

    const-string v9, "Coptic"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v8, "cor"

    const-string v9, "Cornish"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v8, "cos"

    const-string v9, "Corsican"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v8, "cpe"

    const-string v9, "Creoles and pidgins, English based"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v8, "cpf"

    const-string v9, "Creoles and pidgins, French based"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v8, "Creoles and pidgins"

    const-string v9, "cpp"

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v9, "cre"

    const-string v10, "Cree"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v9, "crp"

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v8, "cus"

    const-string v9, "Cushitic"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v8, "Welsh"

    const-string v9, "cym"

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v9, "cze"

    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v6, "dak"

    const-string v9, "Dakota"

    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v6, "dan"

    const-string v9, "Danish"

    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v6, "day"

    const-string v9, "Dayak"

    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v6, "del"

    const-string v9, "Delaware"

    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v6, "den"

    const-string v9, "Slave (Athapascan)"

    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v6, "German"

    const-string v9, "deu"

    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v9, "dgr"

    const-string v10, "Dogrib"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v9, "din"

    const-string v10, "Dinka"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v9, "div"

    const-string v10, "Divehi"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v9, "doi"

    const-string v10, "Dogri"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v9, "dra"

    const-string v10, "Dravidian"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v9, "dua"

    const-string v10, "Duala"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v9, "dum"

    const-string v10, "Dutch, Middle (ca.1050-1350)"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v9, "Dutch"

    const-string v10, "dut"

    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v10, "dyu"

    const-string v11, "Dyula"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v10, "dzo"

    const-string v11, "Dzongkha"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v10, "efi"

    const-string v11, "Efik"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v10, "egy"

    const-string v11, "Egyptian (Ancient)"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v10, "eka"

    const-string v11, "Ekajuk"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v10, "Greek, Modern (1453-)"

    const-string v11, "ell"

    invoke-interface {v0, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v11, "elx"

    const-string v12, "Elamite"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v11, "eng"

    const-string v12, "English"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v11, "enm"

    const-string v12, "English, Middle (1100-1500)"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v11, "epo"

    const-string v12, "Esperanto"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v11, "est"

    const-string v12, "Estonian"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v11, "eus"

    invoke-interface {v0, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v3, "ewe"

    const-string v11, "Ewe"

    invoke-interface {v0, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v3, "ewo"

    const-string v11, "Ewondo"

    invoke-interface {v0, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v3, "fan"

    const-string v11, "Fang"

    invoke-interface {v0, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v3, "fao"

    const-string v11, "Faroese"

    invoke-interface {v0, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v3, "Persian"

    const-string v11, "fas"

    invoke-interface {v0, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v11, "fat"

    const-string v12, "Fanti"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v11, "fij"

    const-string v12, "Fijian"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v11, "fin"

    const-string v12, "Finnish"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v11, "fiu"

    const-string v12, "Finno-Ugrian"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v11, "fon"

    const-string v12, "Fon"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v11, "fra"

    const-string v12, "French"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v11, "frm"

    const-string v12, "French, Middle (ca.1400-1800)"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v11, "fro"

    const-string v12, "French, Old (842-ca.1400)"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v11, "fry"

    const-string v12, "Frisian"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v11, "ful"

    const-string v12, "Fulah"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v11, "fur"

    const-string v12, "Friulian"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v11, "gaa"

    const-string v12, "Ga"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v11, "gay"

    const-string v12, "Gayo"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v11, "gba"

    const-string v12, "Gbaya"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v11, "gem"

    const-string v12, "Germanic"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v11, "Georgian"

    const-string v12, "geo"

    invoke-interface {v0, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v12, "ger"

    invoke-interface {v0, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v6, "gez"

    const-string v12, "Geez"

    invoke-interface {v0, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v6, "gil"

    const-string v12, "Gilbertese"

    invoke-interface {v0, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v6, "gla"

    const-string v12, "Gaelic; Scottish Gaelic"

    invoke-interface {v0, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v6, "gle"

    const-string v12, "Irish"

    invoke-interface {v0, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v6, "glg"

    const-string v12, "Gallegan"

    invoke-interface {v0, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v6, "glv"

    const-string v12, "Manx"

    invoke-interface {v0, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v6, "gmh"

    const-string v12, "German, Middle High (ca.1050-1500)"

    invoke-interface {v0, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v6, "goh"

    const-string v12, "German, Old High (ca.750-1050)"

    invoke-interface {v0, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v6, "gon"

    const-string v12, "Gondi"

    invoke-interface {v0, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v6, "gor"

    const-string v12, "Gorontalo"

    invoke-interface {v0, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v6, "got"

    const-string v12, "Gothic"

    invoke-interface {v0, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v6, "grb"

    const-string v12, "Grebo"

    invoke-interface {v0, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v6, "grc"

    const-string v12, "Greek, Ancient (to 1453)"

    invoke-interface {v0, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v6, "gre"

    invoke-interface {v0, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v6, "grn"

    const-string v10, "Guarani"

    invoke-interface {v0, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v6, "guj"

    const-string v10, "Gujarati"

    invoke-interface {v0, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v6, "gwi"

    const-string v10, "Gwich\u00b4in"

    invoke-interface {v0, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v6, "hai"

    const-string v10, "Haida"

    invoke-interface {v0, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v6, "hau"

    const-string v10, "Hausa"

    invoke-interface {v0, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v6, "haw"

    const-string v10, "Hawaiian"

    invoke-interface {v0, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v6, "heb"

    const-string v10, "Hebrew"

    invoke-interface {v0, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v6, "her"

    const-string v10, "Herero"

    invoke-interface {v0, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v6, "hil"

    const-string v10, "Hiligaynon"

    invoke-interface {v0, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v6, "him"

    const-string v10, "Himachali"

    invoke-interface {v0, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v6, "hin"

    const-string v10, "Hindi"

    invoke-interface {v0, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v6, "hit"

    const-string v10, "Hittite"

    invoke-interface {v0, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v6, "hmn"

    const-string v10, "Hmong"

    invoke-interface {v0, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v6, "hmo"

    const-string v10, "Hiri Motu"

    invoke-interface {v0, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v6, "Croatian"

    const-string v10, "hrv"

    invoke-interface {v0, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v10, "hun"

    const-string v12, "Hungarian"

    invoke-interface {v0, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v10, "hup"

    const-string v12, "Hupa"

    invoke-interface {v0, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v10, "hye"

    invoke-interface {v0, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "iba"

    const-string v10, "Iban"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "ibo"

    const-string v10, "Igbo"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "ice"

    const-string v10, "Icelandic"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "ido"

    const-string v10, "Ido"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "ijo"

    const-string v10, "Ijo"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "iku"

    const-string v10, "Inuktitut"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "ile"

    const-string v10, "Interlingue"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "ilo"

    const-string v10, "Iloko"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "ina"

    const-string v10, "Interlingua"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "inc"

    const-string v10, "Indic"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "ind"

    const-string v10, "Indonesian"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "ine"

    const-string v10, "Indo-European"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "ipk"

    const-string v10, "Inupiaq"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "ira"

    const-string v10, "Iranian (Other)"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "iro"

    const-string v10, "Iroquoian languages"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "isl"

    const-string v10, "Icelandic"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "ita"

    const-string v10, "Italian"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "jav"

    const-string v10, "Javanese"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "jpn"

    const-string v10, "Japanese"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "jpr"

    const-string v10, "Judeo-Persian"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "jrb"

    const-string v10, "Judeo-Arabic"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "kaa"

    const-string v10, "Kara-Kalpak"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "kab"

    const-string v10, "Kabyle"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "kac"

    const-string v10, "Kachin"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "kal"

    const-string v10, "Kalaallisut"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "kam"

    const-string v10, "Kamba"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "kan"

    const-string v10, "Kannada"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "kar"

    const-string v10, "Karen"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "kas"

    const-string v10, "Kashmiri"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "kat"

    invoke-interface {v0, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "kau"

    const-string v10, "Kanuri"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "kaw"

    const-string v10, "Kawi"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "kaz"

    const-string v10, "Kazakh"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "kha"

    const-string v10, "Khasi"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "khi"

    const-string v10, "Khoisan"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "khm"

    const-string v10, "Khmer"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "kho"

    const-string v10, "Khotanese"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "kik"

    const-string v10, "Kikuyu; Gikuyu"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "kin"

    const-string v10, "Kinyarwanda"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "kir"

    const-string v10, "Kirghiz"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "kmb"

    const-string v10, "Kimbundu"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "kok"

    const-string v10, "Konkani"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "kom"

    const-string v10, "Komi"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "kon"

    const-string v10, "Kongo"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "kor"

    const-string v10, "Korean"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "kos"

    const-string v10, "Kosraean"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "kpe"

    const-string v10, "Kpelle"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "kro"

    const-string v10, "Kru"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "kru"

    const-string v10, "Kurukh"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "kua"

    const-string v10, "Kuanyama; Kwanyama"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "kum"

    const-string v10, "Kumyk"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "kur"

    const-string v10, "Kurdish"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "kut"

    const-string v10, "Kutenai"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "lad"

    const-string v10, "Ladino"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "lah"

    const-string v10, "Lahnda"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "lam"

    const-string v10, "Lamba"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "lao"

    const-string v10, "Lao"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "lat"

    const-string v10, "Latin"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "lav"

    const-string v10, "Latvian"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "lez"

    const-string v10, "Lezghian"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "lin"

    const-string v10, "Lingala"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "lit"

    const-string v10, "Lithuanian"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "lol"

    const-string v10, "Mongo"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "loz"

    const-string v10, "Lozi"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "ltz"

    const-string v10, "Luxembourgish; Letzeburgesch"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "lua"

    const-string v10, "Luba-Lulua"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "lub"

    const-string v10, "Luba-Katanga"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "lug"

    const-string v10, "Ganda"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "lui"

    const-string v10, "Luiseno"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "lun"

    const-string v10, "Lunda"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "luo"

    const-string v10, "Luo (Kenya and Tanzania)"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "lus"

    const-string v10, "lushai"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "mac"

    const-string v10, "Macedonian"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "mad"

    const-string v10, "Madurese"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "mag"

    const-string v10, "Magahi"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "mah"

    const-string v10, "Marshallese"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "mai"

    const-string v10, "Maithili"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "mak"

    const-string v10, "Makasar"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "mal"

    const-string v10, "Malayalam"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "man"

    const-string v10, "Mandingo"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "mao"

    const-string v10, "Maori"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "map"

    const-string v10, "Austronesian"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "mar"

    const-string v10, "Marathi"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "mas"

    const-string v10, "Masai"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "may"

    const-string v10, "Malay"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "mdr"

    const-string v10, "Mandar"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "men"

    const-string v10, "Mende"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "mga"

    const-string v10, "Irish, Middle (900-1200)"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "mic"

    const-string v10, "Micmac"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "min"

    const-string v10, "Minangkabau"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "mis"

    const-string v10, "Miscellaneous languages"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "mkd"

    const-string v10, "Macedonian"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "mkh"

    const-string v10, "Mon-Khmer"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "mlg"

    const-string v10, "Malagasy"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "mlt"

    const-string v10, "Maltese"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "mnc"

    const-string v10, "Manchu"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "mni"

    const-string v10, "Manipuri"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "mno"

    const-string v10, "Manobo languages"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "moh"

    const-string v10, "Mohawk"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "mol"

    const-string v10, "Moldavian"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "mon"

    const-string v10, "Mongolian"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "mos"

    const-string v10, "Mossi"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "mri"

    const-string v10, "Maori"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "msa"

    const-string v10, "Malay"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "mul"

    const-string v10, "Multiple languages"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "mun"

    const-string v10, "Munda languages"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "mus"

    const-string v10, "Creek"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "mwr"

    const-string v10, "Marwari"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "mya"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "myn"

    const-string v5, "Mayan languages"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "nah"

    const-string v5, "Nahuatl"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "nai"

    const-string v5, "North American Indian"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "nau"

    const-string v5, "Nauru"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "nav"

    const-string v5, "Navajo; Navaho"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "nbl"

    const-string v5, "South Ndebele"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "nde"

    const-string v5, "North Ndebele"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "ndo"

    const-string v5, "Ndonga"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "nds"

    const-string v5, "Low German; Low Saxon"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "nep"

    const-string v5, "Nepali"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "new"

    const-string v5, "Newari"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "nia"

    const-string v5, "Nias"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "nic"

    const-string v5, "Niger-Kordofanian"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "niu"

    const-string v5, "Niuean"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "nld"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "nno"

    const-string v5, "Norwegian Nynorsk"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "nob"

    const-string v5, "Norwegian Bokm\u00e5l"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "non"

    const-string v5, "Norse, Old"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "nor"

    const-string v5, "Norwegian"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "nso"

    const-string v5, "Sotho, Northern"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "nub"

    const-string v5, "Nubian languages"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "nya"

    const-string v5, "Chichewa; Chewa; Nyanja"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "nym"

    const-string v5, "Nyamwezi"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "nyn"

    const-string v5, "Nyankole"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "nyo"

    const-string v5, "Nyoro"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "nzi"

    const-string v5, "Nzima"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "oci"

    const-string v5, "Occitan (post 1500); Proven\u00e7al"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "oji"

    const-string v5, "Ojibwa"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "ori"

    const-string v5, "Oriya"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "orm"

    const-string v5, "Oromo"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "osa"

    const-string v5, "Osage"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "oss"

    const-string v5, "Ossetian; Ossetic"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "ota"

    const-string v5, "Turkish, Ottoman (1500-1928)"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "oto"

    const-string v5, "Otomian languages"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "paa"

    const-string v5, "Papuan"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "pag"

    const-string v5, "Pangasinan"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "pal"

    const-string v5, "Pahlavi"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "pam"

    const-string v5, "Pampanga"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "pan"

    const-string v5, "Panjabi"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "pap"

    const-string v5, "Papiamento"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "pau"

    const-string v5, "Palauan"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "peo"

    const-string v5, "Persian, Old (ca.600-400 B.C.)"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "per"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "per"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "phi"

    const-string v3, "Philippine"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "phn"

    const-string v3, "Phoenician"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "pli"

    const-string v3, "Pali"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "pol"

    const-string v3, "Polish"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "pon"

    const-string v3, "Pohnpeian"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "por"

    const-string v3, "Portuguese"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "pra"

    const-string v3, "Prakrit languages"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "pro"

    const-string v3, "Proven\u00e7al, Old (to 1500)"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "pus"

    const-string v3, "Pushto"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "que"

    const-string v3, "Quechua"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "raj"

    const-string v3, "Rajasthani"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "rap"

    const-string v3, "Rapanui"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "rar"

    const-string v3, "Rarotongan"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "roa"

    const-string v3, "Romance"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "roh"

    const-string v3, "Raeto-Romance"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "rom"

    const-string v3, "Romany"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "ron"

    const-string v3, "Romanian"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "rum"

    const-string v3, "Romanian"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "run"

    const-string v3, "Rundi"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "rus"

    const-string v3, "Russian"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "sad"

    const-string v3, "Sandawe"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "sag"

    const-string v3, "Sango"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "sah"

    const-string v3, "Yakut"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "sai"

    const-string v3, "South American Indian"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "sal"

    const-string v3, "Salishan languages"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "sam"

    const-string v3, "Samaritan Aramaic"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "san"

    const-string v3, "Sanskrit"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "sas"

    const-string v3, "Sasak"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "sat"

    const-string v3, "Santali"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "scc"

    const-string v3, "Serbian"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "sco"

    const-string v3, "Scots"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "scr"

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "sel"

    const-string v3, "Selkup"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "sem"

    const-string v3, "Semitic"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "sga"

    const-string v3, "Irish, Old (to 900)"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "sgn"

    const-string v3, "Sign languages"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "shn"

    const-string v3, "Shan"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "sid"

    const-string v3, "Sidamo"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "sin"

    const-string v3, "Sinhales"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "sio"

    const-string v3, "Siouan languages"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "sit"

    const-string v3, "Sino-Tibetan"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "sla"

    const-string v3, "Slavic"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "slk"

    const-string v3, "Slovak"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "slo"

    const-string v3, "Slovak"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "slv"

    const-string v3, "Slovenian"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "sma"

    const-string v3, "Southern Sami"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "sme"

    const-string v3, "Northern Sami"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "smi"

    const-string v3, "Sami languages"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "smj"

    const-string v3, "Lule Sami"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "smn"

    const-string v3, "Inari Sami"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "smo"

    const-string v3, "Samoan"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "sms"

    const-string v3, "Skolt Sami"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "sna"

    const-string v3, "Shona"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "snd"

    const-string v3, "Sindhi"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "snk"

    const-string v3, "Soninke"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "sog"

    const-string v3, "Sogdian"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "som"

    const-string v3, "Somali"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "son"

    const-string v3, "Songhai"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "sot"

    const-string v3, "Sotho, Southern"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "spa"

    const-string v3, "Spanish; Castilia"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v2, "sqi"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "srd"

    const-string v2, "Sardinian"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "srp"

    const-string v2, "Serbian"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "srr"

    const-string v2, "Serer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "ssa"

    const-string v2, "Nilo-Saharan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "sus"

    const-string v2, "Susu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "sux"

    const-string v2, "Sumerian"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "swa"

    const-string v2, "Swahili"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "swe"

    const-string v2, "Swedish"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "syr"

    const-string v2, "Syriac"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "tah"

    const-string v2, "Tahitian"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "tai"

    const-string v2, "Tai"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "tam"

    const-string v2, "Tamil"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "tat"

    const-string v2, "Tatar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "tel"

    const-string v2, "Telugu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "tem"

    const-string v2, "Timne"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "ter"

    const-string v2, "Tereno"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "tet"

    const-string v2, "Tetum"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "tgk"

    const-string v2, "Tajik"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "tgl"

    const-string v2, "Tagalog"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "tha"

    const-string v2, "Thai"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "tib"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "tig"

    const-string v2, "Tigre"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "tir"

    const-string v2, "Tigrinya"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "tiv"

    const-string v2, "Tiv"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "tkl"

    const-string v2, "Tokelau"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "tli"

    const-string v2, "Tlingit"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "tmh"

    const-string v2, "Tamashek"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "tog"

    const-string v2, "Tonga (Nyasa)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "ton"

    const-string v2, "Tonga (Tonga Islands)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "tpi"

    const-string v2, "Tok Pisin"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "tsi"

    const-string v2, "Tsimshian"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "tsn"

    const-string v2, "Tswana"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "tso"

    const-string v2, "Tsonga"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "tuk"

    const-string v2, "Turkmen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "tum"

    const-string v2, "Tumbuka"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "tup"

    const-string v2, "Tupi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "tur"

    const-string v2, "Turkish"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "tut"

    const-string v2, "Altaic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "tvl"

    const-string v2, "Tuvalu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "twi"

    const-string v2, "Twi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "tyv"

    const-string v2, "Tuvinian"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "uga"

    const-string v2, "Ugaritic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "uig"

    const-string v2, "Uighur"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "ukr"

    const-string v2, "Ukrainian"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "umb"

    const-string v2, "Umbundu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "und"

    const-string v2, "Undetermined"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "urd"

    const-string v2, "Urdu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "uzb"

    const-string v2, "Uzbek"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "vai"

    const-string v2, "Vai"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "ven"

    const-string v2, "Venda"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "vie"

    const-string v2, "Vietnamese"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "vol"

    const-string v2, "Volap\u00fck"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "vot"

    const-string v2, "Votic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "wak"

    const-string v2, "Wakashan languages"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "wal"

    const-string v2, "Walamo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "war"

    const-string v2, "Waray"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "was"

    const-string v2, "Washo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "wel"

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "wen"

    const-string v2, "Sorbian languages"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "wln"

    const-string v2, "Walloon"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "wol"

    const-string v2, "Wolof"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string/jumbo v1, "xho"

    const-string v2, "Xhosa"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string/jumbo v1, "yao"

    const-string v2, "Yao"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string/jumbo v1, "yap"

    const-string v2, "Yapese"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string/jumbo v1, "yid"

    const-string v2, "Yiddish"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string/jumbo v1, "yor"

    const-string v2, "Yoruba"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string/jumbo v1, "ypk"

    const-string v2, "Yupik languages"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string/jumbo v1, "zap"

    const-string v2, "Zapotec"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string/jumbo v1, "zen"

    const-string v2, "Zenaga"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string/jumbo v1, "zha"

    const-string v2, "Zhuang; Chuang"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string/jumbo v1, "zho"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string/jumbo v1, "znd"

    const-string v2, "Zande"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string/jumbo v1, "zul"

    const-string v2, "Zulu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string/jumbo v1, "zun"

    const-string v2, "Zuni"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "\u0000\u0000\u0000"

    const-string v2, "Winamp Format"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Languages;->idToValue:Ljava/util/Map;

    const-string v1, "XXX"

    const-string v2, "Media Monkey Format"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/reference/Languages;->createMaps()V

    return-void
.end method

.method public static getInstanceOf()Lorg/jaudiotagger/tag/reference/Languages;
    .locals 1

    .line 43
    sget-object v0, Lorg/jaudiotagger/tag/reference/Languages;->languageTypes:Lorg/jaudiotagger/tag/reference/Languages;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lorg/jaudiotagger/tag/reference/Languages;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/reference/Languages;-><init>()V

    sput-object v0, Lorg/jaudiotagger/tag/reference/Languages;->languageTypes:Lorg/jaudiotagger/tag/reference/Languages;

    .line 47
    :cond_0
    sget-object v0, Lorg/jaudiotagger/tag/reference/Languages;->languageTypes:Lorg/jaudiotagger/tag/reference/Languages;

    return-object v0
.end method
