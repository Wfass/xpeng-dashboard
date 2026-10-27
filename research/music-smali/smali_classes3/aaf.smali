.class Laaf;
.super Ljava/lang/Object;
.source "DomainValidator.java"


# static fields
.field static final a:Ljava/util/regex/Pattern;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const-string v0, "^(?:\\p{Alnum}(?>[\\p{Alnum}-]{0,61}\\p{Alnum})?\\.)+(\\p{Alpha}(?>[\\p{Alnum}-]{0,61}\\p{Alnum})?)\\.?$"

    .line 13
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Laaf;->a:Ljava/util/regex/Pattern;

    const-string v0, "arpa"

    .line 107
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laaf;->b:[Ljava/lang/String;

    const/16 v0, 0x328

    .line 112
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "aaa"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "aarp"

    aput-object v3, v0, v2

    const/4 v3, 0x2

    const-string v4, "abb"

    aput-object v4, v0, v3

    const/4 v4, 0x3

    const-string v5, "abbott"

    aput-object v5, v0, v4

    const/4 v5, 0x4

    const-string v6, "abogado"

    aput-object v6, v0, v5

    const/4 v6, 0x5

    const-string v7, "academy"

    aput-object v7, v0, v6

    const/4 v7, 0x6

    const-string v8, "accenture"

    aput-object v8, v0, v7

    const/4 v8, 0x7

    const-string v9, "accountant"

    aput-object v9, v0, v8

    const/16 v9, 0x8

    const-string v10, "accountants"

    aput-object v10, v0, v9

    const/16 v10, 0x9

    const-string v11, "aco"

    aput-object v11, v0, v10

    const/16 v11, 0xa

    const-string v12, "active"

    aput-object v12, v0, v11

    const/16 v12, 0xb

    const-string v13, "actor"

    aput-object v13, v0, v12

    const/16 v13, 0xc

    const-string v14, "ads"

    aput-object v14, v0, v13

    const/16 v14, 0xd

    const-string v15, "adult"

    aput-object v15, v0, v14

    const/16 v15, 0xe

    const-string v16, "aeg"

    aput-object v16, v0, v15

    const/16 v16, 0xf

    const-string v17, "aero"

    aput-object v17, v0, v16

    const/16 v16, 0x10

    const-string v17, "afl"

    aput-object v17, v0, v16

    const/16 v16, 0x11

    const-string v17, "agency"

    aput-object v17, v0, v16

    const/16 v16, 0x12

    const-string v17, "aig"

    aput-object v17, v0, v16

    const/16 v16, 0x13

    const-string v17, "airforce"

    aput-object v17, v0, v16

    const/16 v16, 0x14

    const-string v17, "airtel"

    aput-object v17, v0, v16

    const/16 v16, 0x15

    const-string v17, "allfinanz"

    aput-object v17, v0, v16

    const/16 v16, 0x16

    const-string v17, "alsace"

    aput-object v17, v0, v16

    const/16 v16, 0x17

    const-string v17, "amica"

    aput-object v17, v0, v16

    const/16 v16, 0x18

    const-string v17, "amsterdam"

    aput-object v17, v0, v16

    const/16 v16, 0x19

    const-string v17, "android"

    aput-object v17, v0, v16

    const/16 v16, 0x1a

    const-string v17, "apartments"

    aput-object v17, v0, v16

    const/16 v16, 0x1b

    const-string v17, "app"

    aput-object v17, v0, v16

    const/16 v16, 0x1c

    const-string v17, "apple"

    aput-object v17, v0, v16

    const/16 v16, 0x1d

    const-string v17, "aquarelle"

    aput-object v17, v0, v16

    const/16 v16, 0x1e

    const-string v17, "aramco"

    aput-object v17, v0, v16

    const/16 v16, 0x1f

    const-string v17, "archi"

    aput-object v17, v0, v16

    const/16 v16, 0x20

    const-string v17, "army"

    aput-object v17, v0, v16

    const/16 v16, 0x21

    const-string v17, "arte"

    aput-object v17, v0, v16

    const/16 v16, 0x22

    const-string v17, "asia"

    aput-object v17, v0, v16

    const/16 v16, 0x23

    const-string v17, "associates"

    aput-object v17, v0, v16

    const/16 v16, 0x24

    const-string v17, "attorney"

    aput-object v17, v0, v16

    const/16 v16, 0x25

    const-string v17, "auction"

    aput-object v17, v0, v16

    const/16 v16, 0x26

    const-string v17, "audio"

    aput-object v17, v0, v16

    const/16 v16, 0x27

    const-string v17, "auto"

    aput-object v17, v0, v16

    const/16 v16, 0x28

    const-string v17, "autos"

    aput-object v17, v0, v16

    const/16 v16, 0x29

    const-string v17, "axa"

    aput-object v17, v0, v16

    const/16 v16, 0x2a

    const-string v17, "azure"

    aput-object v17, v0, v16

    const/16 v16, 0x2b

    const-string v17, "band"

    aput-object v17, v0, v16

    const/16 v16, 0x2c

    const-string v17, "bank"

    aput-object v17, v0, v16

    const/16 v16, 0x2d

    const-string v17, "bar"

    aput-object v17, v0, v16

    const/16 v16, 0x2e

    const-string v17, "barcelona"

    aput-object v17, v0, v16

    const/16 v16, 0x2f

    const-string v17, "barclaycard"

    aput-object v17, v0, v16

    const/16 v16, 0x30

    const-string v17, "barclays"

    aput-object v17, v0, v16

    const/16 v16, 0x31

    const-string v17, "bargains"

    aput-object v17, v0, v16

    const/16 v16, 0x32

    const-string v17, "bauhaus"

    aput-object v17, v0, v16

    const/16 v16, 0x33

    const-string v17, "bayern"

    aput-object v17, v0, v16

    const/16 v16, 0x34

    const-string v17, "bbc"

    aput-object v17, v0, v16

    const/16 v16, 0x35

    const-string v17, "bbva"

    aput-object v17, v0, v16

    const/16 v16, 0x36

    const-string v17, "bcn"

    aput-object v17, v0, v16

    const/16 v16, 0x37

    const-string v17, "beats"

    aput-object v17, v0, v16

    const/16 v16, 0x38

    const-string v17, "beer"

    aput-object v17, v0, v16

    const/16 v16, 0x39

    const-string v17, "bentley"

    aput-object v17, v0, v16

    const/16 v16, 0x3a

    const-string v17, "berlin"

    aput-object v17, v0, v16

    const/16 v16, 0x3b

    const-string v17, "best"

    aput-object v17, v0, v16

    const/16 v16, 0x3c

    const-string v17, "bet"

    aput-object v17, v0, v16

    const/16 v16, 0x3d

    const-string v17, "bharti"

    aput-object v17, v0, v16

    const/16 v16, 0x3e

    const-string v17, "bible"

    aput-object v17, v0, v16

    const/16 v16, 0x3f

    const-string v17, "bid"

    aput-object v17, v0, v16

    const/16 v16, 0x40

    const-string v17, "bike"

    aput-object v17, v0, v16

    const/16 v16, 0x41

    const-string v17, "bing"

    aput-object v17, v0, v16

    const/16 v16, 0x42

    const-string v17, "bingo"

    aput-object v17, v0, v16

    const/16 v16, 0x43

    const-string v17, "bio"

    aput-object v17, v0, v16

    const/16 v16, 0x44

    const-string v17, "biz"

    aput-object v17, v0, v16

    const/16 v16, 0x45

    const-string v17, "black"

    aput-object v17, v0, v16

    const/16 v16, 0x46

    const-string v17, "blackfriday"

    aput-object v17, v0, v16

    const/16 v16, 0x47

    const-string v17, "bloomberg"

    aput-object v17, v0, v16

    const/16 v16, 0x48

    const-string v17, "blue"

    aput-object v17, v0, v16

    const/16 v16, 0x49

    const-string v17, "bms"

    aput-object v17, v0, v16

    const/16 v16, 0x4a

    const-string v17, "bmw"

    aput-object v17, v0, v16

    const/16 v16, 0x4b

    const-string v17, "bnl"

    aput-object v17, v0, v16

    const/16 v16, 0x4c

    const-string v17, "bnpparibas"

    aput-object v17, v0, v16

    const/16 v16, 0x4d

    const-string v17, "boats"

    aput-object v17, v0, v16

    const/16 v16, 0x4e

    const-string v17, "bom"

    aput-object v17, v0, v16

    const/16 v16, 0x4f

    const-string v17, "bond"

    aput-object v17, v0, v16

    const/16 v16, 0x50

    const-string v17, "boo"

    aput-object v17, v0, v16

    const/16 v16, 0x51

    const-string v17, "boots"

    aput-object v17, v0, v16

    const/16 v16, 0x52

    const-string v17, "boutique"

    aput-object v17, v0, v16

    const/16 v16, 0x53

    const-string v17, "bradesco"

    aput-object v17, v0, v16

    const/16 v16, 0x54

    const-string v17, "bridgestone"

    aput-object v17, v0, v16

    const/16 v16, 0x55

    const-string v17, "broker"

    aput-object v17, v0, v16

    const/16 v16, 0x56

    const-string v17, "brother"

    aput-object v17, v0, v16

    const/16 v16, 0x57

    const-string v17, "brussels"

    aput-object v17, v0, v16

    const/16 v16, 0x58

    const-string v17, "budapest"

    aput-object v17, v0, v16

    const/16 v16, 0x59

    const-string v17, "build"

    aput-object v17, v0, v16

    const/16 v16, 0x5a

    const-string v17, "builders"

    aput-object v17, v0, v16

    const/16 v16, 0x5b

    const-string v17, "business"

    aput-object v17, v0, v16

    const/16 v16, 0x5c

    const-string v17, "buzz"

    aput-object v17, v0, v16

    const/16 v16, 0x5d

    const-string v17, "bzh"

    aput-object v17, v0, v16

    const/16 v16, 0x5e

    const-string v17, "cab"

    aput-object v17, v0, v16

    const/16 v16, 0x5f

    const-string v17, "cafe"

    aput-object v17, v0, v16

    const/16 v16, 0x60

    const-string v17, "cal"

    aput-object v17, v0, v16

    const/16 v16, 0x61

    const-string v17, "camera"

    aput-object v17, v0, v16

    const/16 v16, 0x62

    const-string v17, "camp"

    aput-object v17, v0, v16

    const/16 v16, 0x63

    const-string v17, "cancerresearch"

    aput-object v17, v0, v16

    const/16 v16, 0x64

    const-string v17, "canon"

    aput-object v17, v0, v16

    const/16 v16, 0x65

    const-string v17, "capetown"

    aput-object v17, v0, v16

    const/16 v16, 0x66

    const-string v17, "capital"

    aput-object v17, v0, v16

    const/16 v16, 0x67

    const-string v17, "car"

    aput-object v17, v0, v16

    const/16 v16, 0x68

    const-string v17, "caravan"

    aput-object v17, v0, v16

    const/16 v16, 0x69

    const-string v17, "cards"

    aput-object v17, v0, v16

    const/16 v16, 0x6a

    const-string v17, "care"

    aput-object v17, v0, v16

    const/16 v16, 0x6b

    const-string v17, "career"

    aput-object v17, v0, v16

    const/16 v16, 0x6c

    const-string v17, "careers"

    aput-object v17, v0, v16

    const/16 v16, 0x6d

    const-string v17, "cars"

    aput-object v17, v0, v16

    const/16 v16, 0x6e

    const-string v17, "cartier"

    aput-object v17, v0, v16

    const/16 v16, 0x6f

    const-string v17, "casa"

    aput-object v17, v0, v16

    const/16 v16, 0x70

    const-string v17, "cash"

    aput-object v17, v0, v16

    const/16 v16, 0x71

    const-string v17, "casino"

    aput-object v17, v0, v16

    const/16 v16, 0x72

    const-string v17, "cat"

    aput-object v17, v0, v16

    const/16 v16, 0x73

    const-string v17, "catering"

    aput-object v17, v0, v16

    const/16 v16, 0x74

    const-string v17, "cba"

    aput-object v17, v0, v16

    const/16 v16, 0x75

    const-string v17, "cbn"

    aput-object v17, v0, v16

    const/16 v16, 0x76

    const-string v17, "ceb"

    aput-object v17, v0, v16

    const/16 v16, 0x77

    const-string v17, "center"

    aput-object v17, v0, v16

    const/16 v16, 0x78

    const-string v17, "ceo"

    aput-object v17, v0, v16

    const/16 v16, 0x79

    const-string v17, "cern"

    aput-object v17, v0, v16

    const/16 v16, 0x7a

    const-string v17, "cfa"

    aput-object v17, v0, v16

    const/16 v16, 0x7b

    const-string v17, "cfd"

    aput-object v17, v0, v16

    const/16 v16, 0x7c

    const-string v17, "chanel"

    aput-object v17, v0, v16

    const/16 v16, 0x7d

    const-string v17, "channel"

    aput-object v17, v0, v16

    const/16 v16, 0x7e

    const-string v17, "chat"

    aput-object v17, v0, v16

    const/16 v16, 0x7f

    const-string v17, "cheap"

    aput-object v17, v0, v16

    const/16 v16, 0x80

    const-string v17, "chloe"

    aput-object v17, v0, v16

    const/16 v16, 0x81

    const-string v17, "christmas"

    aput-object v17, v0, v16

    const/16 v16, 0x82

    const-string v17, "chrome"

    aput-object v17, v0, v16

    const/16 v16, 0x83

    const-string v17, "church"

    aput-object v17, v0, v16

    const/16 v16, 0x84

    const-string v17, "cipriani"

    aput-object v17, v0, v16

    const/16 v16, 0x85

    const-string v17, "cisco"

    aput-object v17, v0, v16

    const/16 v16, 0x86

    const-string v17, "citic"

    aput-object v17, v0, v16

    const/16 v16, 0x87

    const-string v17, "city"

    aput-object v17, v0, v16

    const/16 v16, 0x88

    const-string v17, "claims"

    aput-object v17, v0, v16

    const/16 v16, 0x89

    const-string v17, "cleaning"

    aput-object v17, v0, v16

    const/16 v16, 0x8a

    const-string v17, "click"

    aput-object v17, v0, v16

    const/16 v16, 0x8b

    const-string v17, "clinic"

    aput-object v17, v0, v16

    const/16 v16, 0x8c

    const-string v17, "clothing"

    aput-object v17, v0, v16

    const/16 v16, 0x8d

    const-string v17, "cloud"

    aput-object v17, v0, v16

    const/16 v16, 0x8e

    const-string v17, "club"

    aput-object v17, v0, v16

    const/16 v16, 0x8f

    const-string v17, "clubmed"

    aput-object v17, v0, v16

    const/16 v16, 0x90

    const-string v17, "coach"

    aput-object v17, v0, v16

    const/16 v16, 0x91

    const-string v17, "codes"

    aput-object v17, v0, v16

    const/16 v16, 0x92

    const-string v17, "coffee"

    aput-object v17, v0, v16

    const/16 v16, 0x93

    const-string v17, "college"

    aput-object v17, v0, v16

    const/16 v16, 0x94

    const-string v17, "cologne"

    aput-object v17, v0, v16

    const/16 v16, 0x95

    const-string v17, "com"

    aput-object v17, v0, v16

    const/16 v16, 0x96

    const-string v17, "commbank"

    aput-object v17, v0, v16

    const/16 v16, 0x97

    const-string v17, "community"

    aput-object v17, v0, v16

    const/16 v16, 0x98

    const-string v17, "company"

    aput-object v17, v0, v16

    const/16 v16, 0x99

    const-string v17, "computer"

    aput-object v17, v0, v16

    const/16 v16, 0x9a

    const-string v17, "condos"

    aput-object v17, v0, v16

    const/16 v16, 0x9b

    const-string v17, "construction"

    aput-object v17, v0, v16

    const/16 v16, 0x9c

    const-string v17, "consulting"

    aput-object v17, v0, v16

    const/16 v16, 0x9d

    const-string v17, "contractors"

    aput-object v17, v0, v16

    const/16 v16, 0x9e

    const-string v17, "cooking"

    aput-object v17, v0, v16

    const/16 v16, 0x9f

    const-string v17, "cool"

    aput-object v17, v0, v16

    const/16 v16, 0xa0

    const-string v17, "coop"

    aput-object v17, v0, v16

    const/16 v16, 0xa1

    const-string v17, "corsica"

    aput-object v17, v0, v16

    const/16 v16, 0xa2

    const-string v17, "country"

    aput-object v17, v0, v16

    const/16 v16, 0xa3

    const-string v17, "coupons"

    aput-object v17, v0, v16

    const/16 v16, 0xa4

    const-string v17, "courses"

    aput-object v17, v0, v16

    const/16 v16, 0xa5

    const-string v17, "credit"

    aput-object v17, v0, v16

    const/16 v16, 0xa6

    const-string v17, "creditcard"

    aput-object v17, v0, v16

    const/16 v16, 0xa7

    const-string v17, "cricket"

    aput-object v17, v0, v16

    const/16 v16, 0xa8

    const-string v17, "crown"

    aput-object v17, v0, v16

    const/16 v16, 0xa9

    const-string v17, "crs"

    aput-object v17, v0, v16

    const/16 v16, 0xaa

    const-string v17, "cruises"

    aput-object v17, v0, v16

    const/16 v16, 0xab

    const-string v17, "csc"

    aput-object v17, v0, v16

    const/16 v16, 0xac

    const-string v17, "cuisinella"

    aput-object v17, v0, v16

    const/16 v16, 0xad

    const-string v17, "cymru"

    aput-object v17, v0, v16

    const/16 v16, 0xae

    const-string v17, "cyou"

    aput-object v17, v0, v16

    const/16 v16, 0xaf

    const-string v17, "dabur"

    aput-object v17, v0, v16

    const/16 v16, 0xb0

    const-string v17, "dad"

    aput-object v17, v0, v16

    const/16 v16, 0xb1

    const-string v17, "dance"

    aput-object v17, v0, v16

    const/16 v16, 0xb2

    const-string v17, "date"

    aput-object v17, v0, v16

    const/16 v16, 0xb3

    const-string v17, "dating"

    aput-object v17, v0, v16

    const/16 v16, 0xb4

    const-string v17, "datsun"

    aput-object v17, v0, v16

    const/16 v16, 0xb5

    const-string v17, "day"

    aput-object v17, v0, v16

    const/16 v16, 0xb6

    const-string v17, "dclk"

    aput-object v17, v0, v16

    const/16 v16, 0xb7

    const-string v17, "deals"

    aput-object v17, v0, v16

    const/16 v16, 0xb8

    const-string v17, "degree"

    aput-object v17, v0, v16

    const/16 v16, 0xb9

    const-string v17, "delivery"

    aput-object v17, v0, v16

    const/16 v16, 0xba

    const-string v17, "dell"

    aput-object v17, v0, v16

    const/16 v16, 0xbb

    const-string v17, "delta"

    aput-object v17, v0, v16

    const/16 v16, 0xbc

    const-string v17, "democrat"

    aput-object v17, v0, v16

    const/16 v16, 0xbd

    const-string v17, "dental"

    aput-object v17, v0, v16

    const/16 v16, 0xbe

    const-string v17, "dentist"

    aput-object v17, v0, v16

    const/16 v16, 0xbf

    const-string v17, "desi"

    aput-object v17, v0, v16

    const/16 v16, 0xc0

    const-string v17, "design"

    aput-object v17, v0, v16

    const/16 v16, 0xc1

    const-string v17, "dev"

    aput-object v17, v0, v16

    const/16 v16, 0xc2

    const-string v17, "diamonds"

    aput-object v17, v0, v16

    const/16 v16, 0xc3

    const-string v17, "diet"

    aput-object v17, v0, v16

    const/16 v16, 0xc4

    const-string v17, "digital"

    aput-object v17, v0, v16

    const/16 v16, 0xc5

    const-string v17, "direct"

    aput-object v17, v0, v16

    const/16 v16, 0xc6

    const-string v17, "directory"

    aput-object v17, v0, v16

    const/16 v16, 0xc7

    const-string v17, "discount"

    aput-object v17, v0, v16

    const/16 v16, 0xc8

    const-string v17, "dnp"

    aput-object v17, v0, v16

    const/16 v16, 0xc9

    const-string v17, "docs"

    aput-object v17, v0, v16

    const/16 v16, 0xca

    const-string v17, "dog"

    aput-object v17, v0, v16

    const/16 v16, 0xcb

    const-string v17, "doha"

    aput-object v17, v0, v16

    const/16 v16, 0xcc

    const-string v17, "domains"

    aput-object v17, v0, v16

    const/16 v16, 0xcd

    const-string v17, "doosan"

    aput-object v17, v0, v16

    const/16 v16, 0xce

    const-string v17, "download"

    aput-object v17, v0, v16

    const/16 v16, 0xcf

    const-string v17, "drive"

    aput-object v17, v0, v16

    const/16 v16, 0xd0

    const-string v17, "durban"

    aput-object v17, v0, v16

    const/16 v16, 0xd1

    const-string v17, "dvag"

    aput-object v17, v0, v16

    const/16 v16, 0xd2

    const-string v17, "earth"

    aput-object v17, v0, v16

    const/16 v16, 0xd3

    const-string v17, "eat"

    aput-object v17, v0, v16

    const/16 v16, 0xd4

    const-string v17, "edu"

    aput-object v17, v0, v16

    const/16 v16, 0xd5

    const-string v17, "education"

    aput-object v17, v0, v16

    const/16 v16, 0xd6

    const-string v17, "email"

    aput-object v17, v0, v16

    const/16 v16, 0xd7

    const-string v17, "emerck"

    aput-object v17, v0, v16

    const/16 v16, 0xd8

    const-string v17, "energy"

    aput-object v17, v0, v16

    const/16 v16, 0xd9

    const-string v17, "engineer"

    aput-object v17, v0, v16

    const/16 v16, 0xda

    const-string v17, "engineering"

    aput-object v17, v0, v16

    const/16 v16, 0xdb

    const-string v17, "enterprises"

    aput-object v17, v0, v16

    const/16 v16, 0xdc

    const-string v17, "epson"

    aput-object v17, v0, v16

    const/16 v16, 0xdd

    const-string v17, "equipment"

    aput-object v17, v0, v16

    const/16 v16, 0xde

    const-string v17, "erni"

    aput-object v17, v0, v16

    const/16 v16, 0xdf

    const-string v17, "esq"

    aput-object v17, v0, v16

    const/16 v16, 0xe0

    const-string v17, "estate"

    aput-object v17, v0, v16

    const/16 v16, 0xe1

    const-string v17, "eurovision"

    aput-object v17, v0, v16

    const/16 v16, 0xe2

    const-string v17, "eus"

    aput-object v17, v0, v16

    const/16 v16, 0xe3

    const-string v17, "events"

    aput-object v17, v0, v16

    const/16 v16, 0xe4

    const-string v17, "everbank"

    aput-object v17, v0, v16

    const/16 v16, 0xe5

    const-string v17, "exchange"

    aput-object v17, v0, v16

    const/16 v16, 0xe6

    const-string v17, "expert"

    aput-object v17, v0, v16

    const/16 v16, 0xe7

    const-string v17, "exposed"

    aput-object v17, v0, v16

    const/16 v16, 0xe8

    const-string v17, "express"

    aput-object v17, v0, v16

    const/16 v16, 0xe9

    const-string v17, "fage"

    aput-object v17, v0, v16

    const/16 v16, 0xea

    const-string v17, "fail"

    aput-object v17, v0, v16

    const/16 v16, 0xeb

    const-string v17, "faith"

    aput-object v17, v0, v16

    const/16 v16, 0xec

    const-string v17, "family"

    aput-object v17, v0, v16

    const/16 v16, 0xed

    const-string v17, "fan"

    aput-object v17, v0, v16

    const/16 v16, 0xee

    const-string v17, "fans"

    aput-object v17, v0, v16

    const/16 v16, 0xef

    const-string v17, "farm"

    aput-object v17, v0, v16

    const/16 v16, 0xf0

    const-string v17, "fashion"

    aput-object v17, v0, v16

    const/16 v16, 0xf1

    const-string v17, "feedback"

    aput-object v17, v0, v16

    const/16 v16, 0xf2

    const-string v17, "ferrero"

    aput-object v17, v0, v16

    const/16 v16, 0xf3

    const-string v17, "film"

    aput-object v17, v0, v16

    const/16 v16, 0xf4

    const-string v17, "final"

    aput-object v17, v0, v16

    const/16 v16, 0xf5

    const-string v17, "finance"

    aput-object v17, v0, v16

    const/16 v16, 0xf6

    const-string v17, "financial"

    aput-object v17, v0, v16

    const/16 v16, 0xf7

    const-string v17, "firmdale"

    aput-object v17, v0, v16

    const/16 v16, 0xf8

    const-string v17, "fish"

    aput-object v17, v0, v16

    const/16 v16, 0xf9

    const-string v17, "fishing"

    aput-object v17, v0, v16

    const/16 v16, 0xfa

    const-string v17, "fit"

    aput-object v17, v0, v16

    const/16 v16, 0xfb

    const-string v17, "fitness"

    aput-object v17, v0, v16

    const/16 v16, 0xfc

    const-string v17, "flights"

    aput-object v17, v0, v16

    const/16 v16, 0xfd

    const-string v17, "florist"

    aput-object v17, v0, v16

    const/16 v16, 0xfe

    const-string v17, "flowers"

    aput-object v17, v0, v16

    const/16 v16, 0xff

    const-string v17, "flsmidth"

    aput-object v17, v0, v16

    const/16 v16, 0x100

    const-string v17, "fly"

    aput-object v17, v0, v16

    const/16 v16, 0x101

    const-string v17, "foo"

    aput-object v17, v0, v16

    const/16 v16, 0x102

    const-string v17, "football"

    aput-object v17, v0, v16

    const/16 v16, 0x103

    const-string v17, "forex"

    aput-object v17, v0, v16

    const/16 v16, 0x104

    const-string v17, "forsale"

    aput-object v17, v0, v16

    const/16 v16, 0x105

    const-string v17, "forum"

    aput-object v17, v0, v16

    const/16 v16, 0x106

    const-string v17, "foundation"

    aput-object v17, v0, v16

    const/16 v16, 0x107

    const-string v17, "frl"

    aput-object v17, v0, v16

    const/16 v16, 0x108

    const-string v17, "frogans"

    aput-object v17, v0, v16

    const/16 v16, 0x109

    const-string v17, "fund"

    aput-object v17, v0, v16

    const/16 v16, 0x10a

    const-string v17, "furniture"

    aput-object v17, v0, v16

    const/16 v16, 0x10b

    const-string v17, "futbol"

    aput-object v17, v0, v16

    const/16 v16, 0x10c

    const-string v17, "fyi"

    aput-object v17, v0, v16

    const/16 v16, 0x10d

    const-string v17, "gal"

    aput-object v17, v0, v16

    const/16 v16, 0x10e

    const-string v17, "gallery"

    aput-object v17, v0, v16

    const/16 v16, 0x10f

    const-string v17, "game"

    aput-object v17, v0, v16

    const/16 v16, 0x110

    const-string v17, "garden"

    aput-object v17, v0, v16

    const/16 v16, 0x111

    const-string v17, "gbiz"

    aput-object v17, v0, v16

    const/16 v16, 0x112

    const-string v17, "gdn"

    aput-object v17, v0, v16

    const/16 v16, 0x113

    const-string v17, "gea"

    aput-object v17, v0, v16

    const/16 v16, 0x114

    const-string v17, "gent"

    aput-object v17, v0, v16

    const/16 v16, 0x115

    const-string v17, "genting"

    aput-object v17, v0, v16

    const/16 v16, 0x116

    const-string v17, "ggee"

    aput-object v17, v0, v16

    const/16 v16, 0x117

    const-string v17, "gift"

    aput-object v17, v0, v16

    const/16 v16, 0x118

    const-string v17, "gifts"

    aput-object v17, v0, v16

    const/16 v16, 0x119

    const-string v17, "gives"

    aput-object v17, v0, v16

    const/16 v16, 0x11a

    const-string v17, "giving"

    aput-object v17, v0, v16

    const/16 v16, 0x11b

    const-string v17, "glass"

    aput-object v17, v0, v16

    const/16 v16, 0x11c

    const-string v17, "gle"

    aput-object v17, v0, v16

    const/16 v16, 0x11d

    const-string v17, "global"

    aput-object v17, v0, v16

    const/16 v16, 0x11e

    const-string v17, "globo"

    aput-object v17, v0, v16

    const/16 v16, 0x11f

    const-string v17, "gmail"

    aput-object v17, v0, v16

    const/16 v16, 0x120

    const-string v17, "gmo"

    aput-object v17, v0, v16

    const/16 v16, 0x121

    const-string v17, "gmx"

    aput-object v17, v0, v16

    const/16 v16, 0x122

    const-string v17, "gold"

    aput-object v17, v0, v16

    const/16 v16, 0x123

    const-string v17, "goldpoint"

    aput-object v17, v0, v16

    const/16 v16, 0x124

    const-string v17, "golf"

    aput-object v17, v0, v16

    const/16 v16, 0x125

    const-string v17, "goo"

    aput-object v17, v0, v16

    const/16 v16, 0x126

    const-string v17, "goog"

    aput-object v17, v0, v16

    const/16 v16, 0x127

    const-string v17, "google"

    aput-object v17, v0, v16

    const/16 v16, 0x128

    const-string v17, "gop"

    aput-object v17, v0, v16

    const/16 v16, 0x129

    const-string v17, "gov"

    aput-object v17, v0, v16

    const/16 v16, 0x12a

    const-string v17, "graphics"

    aput-object v17, v0, v16

    const/16 v16, 0x12b

    const-string v17, "gratis"

    aput-object v17, v0, v16

    const/16 v16, 0x12c

    const-string v17, "green"

    aput-object v17, v0, v16

    const/16 v16, 0x12d

    const-string v17, "gripe"

    aput-object v17, v0, v16

    const/16 v16, 0x12e

    const-string v17, "group"

    aput-object v17, v0, v16

    const/16 v16, 0x12f

    const-string v17, "gucci"

    aput-object v17, v0, v16

    const/16 v16, 0x130

    const-string v17, "guge"

    aput-object v17, v0, v16

    const/16 v16, 0x131

    const-string v17, "guide"

    aput-object v17, v0, v16

    const/16 v16, 0x132

    const-string v17, "guitars"

    aput-object v17, v0, v16

    const/16 v16, 0x133

    const-string v17, "guru"

    aput-object v17, v0, v16

    const/16 v16, 0x134

    const-string v17, "hamburg"

    aput-object v17, v0, v16

    const/16 v16, 0x135

    const-string v17, "hangout"

    aput-object v17, v0, v16

    const/16 v16, 0x136

    const-string v17, "haus"

    aput-object v17, v0, v16

    const/16 v16, 0x137

    const-string v17, "healthcare"

    aput-object v17, v0, v16

    const/16 v16, 0x138

    const-string v17, "help"

    aput-object v17, v0, v16

    const/16 v16, 0x139

    const-string v17, "here"

    aput-object v17, v0, v16

    const/16 v16, 0x13a

    const-string v17, "hermes"

    aput-object v17, v0, v16

    const/16 v16, 0x13b

    const-string v17, "hiphop"

    aput-object v17, v0, v16

    const/16 v16, 0x13c

    const-string v17, "hitachi"

    aput-object v17, v0, v16

    const/16 v16, 0x13d

    const-string v17, "hiv"

    aput-object v17, v0, v16

    const/16 v16, 0x13e

    const-string v17, "hockey"

    aput-object v17, v0, v16

    const/16 v16, 0x13f

    const-string v17, "holdings"

    aput-object v17, v0, v16

    const/16 v16, 0x140

    const-string v17, "holiday"

    aput-object v17, v0, v16

    const/16 v16, 0x141

    const-string v17, "homedepot"

    aput-object v17, v0, v16

    const/16 v16, 0x142

    const-string v17, "homes"

    aput-object v17, v0, v16

    const/16 v16, 0x143

    const-string v17, "honda"

    aput-object v17, v0, v16

    const/16 v16, 0x144

    const-string v17, "horse"

    aput-object v17, v0, v16

    const/16 v16, 0x145

    const-string v17, "host"

    aput-object v17, v0, v16

    const/16 v16, 0x146

    const-string v17, "hosting"

    aput-object v17, v0, v16

    const/16 v16, 0x147

    const-string v17, "hoteles"

    aput-object v17, v0, v16

    const/16 v16, 0x148

    const-string v17, "hotmail"

    aput-object v17, v0, v16

    const/16 v16, 0x149

    const-string v17, "house"

    aput-object v17, v0, v16

    const/16 v16, 0x14a

    const-string v17, "how"

    aput-object v17, v0, v16

    const/16 v16, 0x14b

    const-string v17, "hsbc"

    aput-object v17, v0, v16

    const/16 v16, 0x14c

    const-string v17, "hyundai"

    aput-object v17, v0, v16

    const/16 v16, 0x14d

    const-string v17, "ibm"

    aput-object v17, v0, v16

    const/16 v16, 0x14e

    const-string v17, "icbc"

    aput-object v17, v0, v16

    const/16 v16, 0x14f

    const-string v17, "ice"

    aput-object v17, v0, v16

    const/16 v16, 0x150

    const-string v17, "icu"

    aput-object v17, v0, v16

    const/16 v16, 0x151

    const-string v17, "ifm"

    aput-object v17, v0, v16

    const/16 v16, 0x152

    const-string v17, "iinet"

    aput-object v17, v0, v16

    const/16 v16, 0x153

    const-string v17, "immo"

    aput-object v17, v0, v16

    const/16 v16, 0x154

    const-string v17, "immobilien"

    aput-object v17, v0, v16

    const/16 v16, 0x155

    const-string v17, "industries"

    aput-object v17, v0, v16

    const/16 v16, 0x156

    const-string v17, "infiniti"

    aput-object v17, v0, v16

    const/16 v16, 0x157

    const-string v17, "info"

    aput-object v17, v0, v16

    const/16 v16, 0x158

    const-string v17, "ing"

    aput-object v17, v0, v16

    const/16 v16, 0x159

    const-string v17, "ink"

    aput-object v17, v0, v16

    const/16 v16, 0x15a

    const-string v17, "institute"

    aput-object v17, v0, v16

    const/16 v16, 0x15b

    const-string v17, "insure"

    aput-object v17, v0, v16

    const/16 v16, 0x15c

    const-string v17, "int"

    aput-object v17, v0, v16

    const/16 v16, 0x15d

    const-string v17, "international"

    aput-object v17, v0, v16

    const/16 v16, 0x15e

    const-string v17, "investments"

    aput-object v17, v0, v16

    const/16 v16, 0x15f

    const-string v17, "ipiranga"

    aput-object v17, v0, v16

    const/16 v16, 0x160

    const-string v17, "irish"

    aput-object v17, v0, v16

    const/16 v16, 0x161

    const-string v17, "ist"

    aput-object v17, v0, v16

    const/16 v16, 0x162

    const-string v17, "istanbul"

    aput-object v17, v0, v16

    const/16 v16, 0x163

    const-string v17, "itau"

    aput-object v17, v0, v16

    const/16 v16, 0x164

    const-string v17, "iwc"

    aput-object v17, v0, v16

    const/16 v16, 0x165

    const-string v17, "jaguar"

    aput-object v17, v0, v16

    const/16 v16, 0x166

    const-string v17, "java"

    aput-object v17, v0, v16

    const/16 v16, 0x167

    const-string v17, "jcb"

    aput-object v17, v0, v16

    const/16 v16, 0x168

    const-string v17, "jetzt"

    aput-object v17, v0, v16

    const/16 v16, 0x169

    const-string v17, "jewelry"

    aput-object v17, v0, v16

    const/16 v16, 0x16a

    const-string v17, "jlc"

    aput-object v17, v0, v16

    const/16 v16, 0x16b

    const-string v17, "jll"

    aput-object v17, v0, v16

    const/16 v16, 0x16c

    const-string v17, "jobs"

    aput-object v17, v0, v16

    const/16 v16, 0x16d

    const-string v17, "joburg"

    aput-object v17, v0, v16

    const/16 v16, 0x16e

    const-string v17, "jprs"

    aput-object v17, v0, v16

    const/16 v16, 0x16f

    const-string v17, "juegos"

    aput-object v17, v0, v16

    const/16 v16, 0x170

    const-string v17, "kaufen"

    aput-object v17, v0, v16

    const/16 v16, 0x171

    const-string v17, "kddi"

    aput-object v17, v0, v16

    const/16 v16, 0x172

    const-string v17, "kia"

    aput-object v17, v0, v16

    const/16 v16, 0x173

    const-string v17, "kim"

    aput-object v17, v0, v16

    const/16 v16, 0x174

    const-string v17, "kinder"

    aput-object v17, v0, v16

    const/16 v16, 0x175

    const-string v17, "kitchen"

    aput-object v17, v0, v16

    const/16 v16, 0x176

    const-string v17, "kiwi"

    aput-object v17, v0, v16

    const/16 v16, 0x177

    const-string v17, "koeln"

    aput-object v17, v0, v16

    const/16 v16, 0x178

    const-string v17, "komatsu"

    aput-object v17, v0, v16

    const/16 v16, 0x179

    const-string v17, "krd"

    aput-object v17, v0, v16

    const/16 v16, 0x17a

    const-string v17, "kred"

    aput-object v17, v0, v16

    const/16 v16, 0x17b

    const-string v17, "kyoto"

    aput-object v17, v0, v16

    const/16 v16, 0x17c

    const-string v17, "lacaixa"

    aput-object v17, v0, v16

    const/16 v16, 0x17d

    const-string v17, "lancaster"

    aput-object v17, v0, v16

    const/16 v16, 0x17e

    const-string v17, "land"

    aput-object v17, v0, v16

    const/16 v16, 0x17f

    const-string v17, "landrover"

    aput-object v17, v0, v16

    const/16 v16, 0x180

    const-string v17, "lasalle"

    aput-object v17, v0, v16

    const/16 v16, 0x181

    const-string v17, "lat"

    aput-object v17, v0, v16

    const/16 v16, 0x182

    const-string v17, "latrobe"

    aput-object v17, v0, v16

    const/16 v16, 0x183

    const-string v17, "law"

    aput-object v17, v0, v16

    const/16 v16, 0x184

    const-string v17, "lawyer"

    aput-object v17, v0, v16

    const/16 v16, 0x185

    const-string v17, "lds"

    aput-object v17, v0, v16

    const/16 v16, 0x186

    const-string v17, "lease"

    aput-object v17, v0, v16

    const/16 v16, 0x187

    const-string v17, "leclerc"

    aput-object v17, v0, v16

    const/16 v16, 0x188

    const-string v17, "legal"

    aput-object v17, v0, v16

    const/16 v16, 0x189

    const-string v17, "lexus"

    aput-object v17, v0, v16

    const/16 v16, 0x18a

    const-string v17, "lgbt"

    aput-object v17, v0, v16

    const/16 v16, 0x18b

    const-string v17, "liaison"

    aput-object v17, v0, v16

    const/16 v16, 0x18c

    const-string v17, "lidl"

    aput-object v17, v0, v16

    const/16 v16, 0x18d

    const-string v17, "life"

    aput-object v17, v0, v16

    const/16 v16, 0x18e

    const-string v17, "lighting"

    aput-object v17, v0, v16

    const/16 v16, 0x18f

    const-string v17, "limited"

    aput-object v17, v0, v16

    const/16 v16, 0x190

    const-string v17, "limo"

    aput-object v17, v0, v16

    const/16 v16, 0x191

    const-string v17, "linde"

    aput-object v17, v0, v16

    const/16 v16, 0x192

    const-string v17, "link"

    aput-object v17, v0, v16

    const/16 v16, 0x193

    const-string v17, "live"

    aput-object v17, v0, v16

    const/16 v16, 0x194

    const-string v17, "lixil"

    aput-object v17, v0, v16

    const/16 v16, 0x195

    const-string v17, "loan"

    aput-object v17, v0, v16

    const/16 v16, 0x196

    const-string v17, "loans"

    aput-object v17, v0, v16

    const/16 v16, 0x197

    const-string v17, "lol"

    aput-object v17, v0, v16

    const/16 v16, 0x198

    const-string v17, "london"

    aput-object v17, v0, v16

    const/16 v16, 0x199

    const-string v17, "lotte"

    aput-object v17, v0, v16

    const/16 v16, 0x19a

    const-string v17, "lotto"

    aput-object v17, v0, v16

    const/16 v16, 0x19b

    const-string v17, "love"

    aput-object v17, v0, v16

    const/16 v16, 0x19c

    const-string v17, "ltd"

    aput-object v17, v0, v16

    const/16 v16, 0x19d

    const-string v17, "ltda"

    aput-object v17, v0, v16

    const/16 v16, 0x19e

    const-string v17, "lupin"

    aput-object v17, v0, v16

    const/16 v16, 0x19f

    const-string v17, "luxe"

    aput-object v17, v0, v16

    const/16 v16, 0x1a0

    const-string v17, "luxury"

    aput-object v17, v0, v16

    const/16 v16, 0x1a1

    const-string v17, "madrid"

    aput-object v17, v0, v16

    const/16 v16, 0x1a2

    const-string v17, "maif"

    aput-object v17, v0, v16

    const/16 v16, 0x1a3

    const-string v17, "maison"

    aput-object v17, v0, v16

    const/16 v16, 0x1a4

    const-string v17, "man"

    aput-object v17, v0, v16

    const/16 v16, 0x1a5

    const-string v17, "management"

    aput-object v17, v0, v16

    const/16 v16, 0x1a6

    const-string v17, "mango"

    aput-object v17, v0, v16

    const/16 v16, 0x1a7

    const-string v17, "market"

    aput-object v17, v0, v16

    const/16 v16, 0x1a8

    const-string v17, "marketing"

    aput-object v17, v0, v16

    const/16 v16, 0x1a9

    const-string v17, "markets"

    aput-object v17, v0, v16

    const/16 v16, 0x1aa

    const-string v17, "marriott"

    aput-object v17, v0, v16

    const/16 v16, 0x1ab

    const-string v17, "mba"

    aput-object v17, v0, v16

    const/16 v16, 0x1ac

    const-string v17, "media"

    aput-object v17, v0, v16

    const/16 v16, 0x1ad

    const-string v17, "meet"

    aput-object v17, v0, v16

    const/16 v16, 0x1ae

    const-string v17, "melbourne"

    aput-object v17, v0, v16

    const/16 v16, 0x1af

    const-string v17, "meme"

    aput-object v17, v0, v16

    const/16 v16, 0x1b0

    const-string v17, "memorial"

    aput-object v17, v0, v16

    const/16 v16, 0x1b1

    const-string v17, "men"

    aput-object v17, v0, v16

    const/16 v16, 0x1b2

    const-string v17, "menu"

    aput-object v17, v0, v16

    const/16 v16, 0x1b3

    const-string v17, "meo"

    aput-object v17, v0, v16

    const/16 v16, 0x1b4

    const-string v17, "miami"

    aput-object v17, v0, v16

    const/16 v16, 0x1b5

    const-string v17, "microsoft"

    aput-object v17, v0, v16

    const/16 v16, 0x1b6

    const-string v17, "mil"

    aput-object v17, v0, v16

    const/16 v16, 0x1b7

    const-string v17, "mini"

    aput-object v17, v0, v16

    const/16 v16, 0x1b8

    const-string v17, "mma"

    aput-object v17, v0, v16

    const/16 v16, 0x1b9

    const-string v17, "mobi"

    aput-object v17, v0, v16

    const/16 v16, 0x1ba

    const-string v17, "moda"

    aput-object v17, v0, v16

    const/16 v16, 0x1bb

    const-string v17, "moe"

    aput-object v17, v0, v16

    const/16 v16, 0x1bc

    const-string v17, "moi"

    aput-object v17, v0, v16

    const/16 v16, 0x1bd

    const-string v17, "mom"

    aput-object v17, v0, v16

    const/16 v16, 0x1be

    const-string v17, "monash"

    aput-object v17, v0, v16

    const/16 v16, 0x1bf

    const-string v17, "money"

    aput-object v17, v0, v16

    const/16 v16, 0x1c0

    const-string v17, "montblanc"

    aput-object v17, v0, v16

    const/16 v16, 0x1c1

    const-string v17, "mormon"

    aput-object v17, v0, v16

    const/16 v16, 0x1c2

    const-string v17, "mortgage"

    aput-object v17, v0, v16

    const/16 v16, 0x1c3

    const-string v17, "moscow"

    aput-object v17, v0, v16

    const/16 v16, 0x1c4

    const-string v17, "motorcycles"

    aput-object v17, v0, v16

    const/16 v16, 0x1c5

    const-string v17, "mov"

    aput-object v17, v0, v16

    const/16 v16, 0x1c6

    const-string v17, "movie"

    aput-object v17, v0, v16

    const/16 v16, 0x1c7

    const-string v17, "movistar"

    aput-object v17, v0, v16

    const/16 v16, 0x1c8

    const-string v17, "mtn"

    aput-object v17, v0, v16

    const/16 v16, 0x1c9

    const-string v17, "mtpc"

    aput-object v17, v0, v16

    const/16 v16, 0x1ca

    const-string v17, "mtr"

    aput-object v17, v0, v16

    const/16 v16, 0x1cb

    const-string v17, "museum"

    aput-object v17, v0, v16

    const/16 v16, 0x1cc

    const-string v17, "mutuelle"

    aput-object v17, v0, v16

    const/16 v16, 0x1cd

    const-string v17, "nadex"

    aput-object v17, v0, v16

    const/16 v16, 0x1ce

    const-string v17, "nagoya"

    aput-object v17, v0, v16

    const/16 v16, 0x1cf

    const-string v17, "name"

    aput-object v17, v0, v16

    const/16 v16, 0x1d0

    const-string v17, "navy"

    aput-object v17, v0, v16

    const/16 v16, 0x1d1

    const-string v17, "nec"

    aput-object v17, v0, v16

    const/16 v16, 0x1d2

    const-string v17, "net"

    aput-object v17, v0, v16

    const/16 v16, 0x1d3

    const-string v17, "netbank"

    aput-object v17, v0, v16

    const/16 v16, 0x1d4

    const-string v17, "network"

    aput-object v17, v0, v16

    const/16 v16, 0x1d5

    const-string v17, "neustar"

    aput-object v17, v0, v16

    const/16 v16, 0x1d6

    const-string v17, "new"

    aput-object v17, v0, v16

    const/16 v16, 0x1d7

    const-string v17, "news"

    aput-object v17, v0, v16

    const/16 v16, 0x1d8

    const-string v17, "nexus"

    aput-object v17, v0, v16

    const/16 v16, 0x1d9

    const-string v17, "ngo"

    aput-object v17, v0, v16

    const/16 v16, 0x1da

    const-string v17, "nhk"

    aput-object v17, v0, v16

    const/16 v16, 0x1db

    const-string v17, "nico"

    aput-object v17, v0, v16

    const/16 v16, 0x1dc

    const-string v17, "ninja"

    aput-object v17, v0, v16

    const/16 v16, 0x1dd

    const-string v17, "nissan"

    aput-object v17, v0, v16

    const/16 v16, 0x1de

    const-string v17, "nokia"

    aput-object v17, v0, v16

    const/16 v16, 0x1df

    const-string v17, "nra"

    aput-object v17, v0, v16

    const/16 v16, 0x1e0

    const-string v17, "nrw"

    aput-object v17, v0, v16

    const/16 v16, 0x1e1

    const-string v17, "ntt"

    aput-object v17, v0, v16

    const/16 v16, 0x1e2

    const-string v17, "nyc"

    aput-object v17, v0, v16

    const/16 v16, 0x1e3

    const-string v17, "obi"

    aput-object v17, v0, v16

    const/16 v16, 0x1e4

    const-string v17, "office"

    aput-object v17, v0, v16

    const/16 v16, 0x1e5

    const-string v17, "okinawa"

    aput-object v17, v0, v16

    const/16 v16, 0x1e6

    const-string v17, "omega"

    aput-object v17, v0, v16

    const/16 v16, 0x1e7

    const-string v17, "one"

    aput-object v17, v0, v16

    const/16 v16, 0x1e8

    const-string v17, "ong"

    aput-object v17, v0, v16

    const/16 v16, 0x1e9

    const-string v17, "onl"

    aput-object v17, v0, v16

    const/16 v16, 0x1ea

    const-string v17, "online"

    aput-object v17, v0, v16

    const/16 v16, 0x1eb

    const-string v17, "ooo"

    aput-object v17, v0, v16

    const/16 v16, 0x1ec

    const-string v17, "oracle"

    aput-object v17, v0, v16

    const/16 v16, 0x1ed

    const-string v17, "orange"

    aput-object v17, v0, v16

    const/16 v16, 0x1ee

    const-string v17, "org"

    aput-object v17, v0, v16

    const/16 v16, 0x1ef

    const-string v17, "organic"

    aput-object v17, v0, v16

    const/16 v16, 0x1f0

    const-string v17, "osaka"

    aput-object v17, v0, v16

    const/16 v16, 0x1f1

    const-string v17, "otsuka"

    aput-object v17, v0, v16

    const/16 v16, 0x1f2

    const-string v17, "ovh"

    aput-object v17, v0, v16

    const/16 v16, 0x1f3

    const-string v17, "page"

    aput-object v17, v0, v16

    const/16 v16, 0x1f4

    const-string v17, "panerai"

    aput-object v17, v0, v16

    const/16 v16, 0x1f5

    const-string v17, "paris"

    aput-object v17, v0, v16

    const/16 v16, 0x1f6

    const-string v17, "partners"

    aput-object v17, v0, v16

    const/16 v16, 0x1f7

    const-string v17, "parts"

    aput-object v17, v0, v16

    const/16 v16, 0x1f8

    const-string v17, "party"

    aput-object v17, v0, v16

    const/16 v16, 0x1f9

    const-string v17, "pet"

    aput-object v17, v0, v16

    const/16 v16, 0x1fa

    const-string v17, "pharmacy"

    aput-object v17, v0, v16

    const/16 v16, 0x1fb

    const-string v17, "philips"

    aput-object v17, v0, v16

    const/16 v16, 0x1fc

    const-string v17, "photo"

    aput-object v17, v0, v16

    const/16 v16, 0x1fd

    const-string v17, "photography"

    aput-object v17, v0, v16

    const/16 v16, 0x1fe

    const-string v17, "photos"

    aput-object v17, v0, v16

    const/16 v16, 0x1ff

    const-string v17, "physio"

    aput-object v17, v0, v16

    const/16 v16, 0x200

    const-string v17, "piaget"

    aput-object v17, v0, v16

    const/16 v16, 0x201

    const-string v17, "pics"

    aput-object v17, v0, v16

    const/16 v16, 0x202

    const-string v17, "pictet"

    aput-object v17, v0, v16

    const/16 v16, 0x203

    const-string v17, "pictures"

    aput-object v17, v0, v16

    const/16 v16, 0x204

    const-string v17, "ping"

    aput-object v17, v0, v16

    const/16 v16, 0x205

    const-string v17, "pink"

    aput-object v17, v0, v16

    const/16 v16, 0x206

    const-string v17, "pizza"

    aput-object v17, v0, v16

    const/16 v16, 0x207

    const-string v17, "place"

    aput-object v17, v0, v16

    const/16 v16, 0x208

    const-string v17, "play"

    aput-object v17, v0, v16

    const/16 v16, 0x209

    const-string v17, "playstation"

    aput-object v17, v0, v16

    const/16 v16, 0x20a

    const-string v17, "plumbing"

    aput-object v17, v0, v16

    const/16 v16, 0x20b

    const-string v17, "plus"

    aput-object v17, v0, v16

    const/16 v16, 0x20c

    const-string v17, "pohl"

    aput-object v17, v0, v16

    const/16 v16, 0x20d

    const-string v17, "poker"

    aput-object v17, v0, v16

    const/16 v16, 0x20e

    const-string v17, "porn"

    aput-object v17, v0, v16

    const/16 v16, 0x20f

    const-string v17, "post"

    aput-object v17, v0, v16

    const/16 v16, 0x210

    const-string v17, "praxi"

    aput-object v17, v0, v16

    const/16 v16, 0x211

    const-string v17, "press"

    aput-object v17, v0, v16

    const/16 v16, 0x212

    const-string v17, "pro"

    aput-object v17, v0, v16

    const/16 v16, 0x213

    const-string v17, "prod"

    aput-object v17, v0, v16

    const/16 v16, 0x214

    const-string v17, "productions"

    aput-object v17, v0, v16

    const/16 v16, 0x215

    const-string v17, "prof"

    aput-object v17, v0, v16

    const/16 v16, 0x216

    const-string v17, "properties"

    aput-object v17, v0, v16

    const/16 v16, 0x217

    const-string v17, "property"

    aput-object v17, v0, v16

    const/16 v16, 0x218

    const-string v17, "protection"

    aput-object v17, v0, v16

    const/16 v16, 0x219

    const-string v17, "pub"

    aput-object v17, v0, v16

    const/16 v16, 0x21a

    const-string v17, "qpon"

    aput-object v17, v0, v16

    const/16 v16, 0x21b

    const-string v17, "quebec"

    aput-object v17, v0, v16

    const/16 v16, 0x21c

    const-string v17, "racing"

    aput-object v17, v0, v16

    const/16 v16, 0x21d

    const-string v17, "realtor"

    aput-object v17, v0, v16

    const/16 v16, 0x21e

    const-string v17, "realty"

    aput-object v17, v0, v16

    const/16 v16, 0x21f

    const-string v17, "recipes"

    aput-object v17, v0, v16

    const/16 v16, 0x220

    const-string v17, "red"

    aput-object v17, v0, v16

    const/16 v16, 0x221

    const-string v17, "redstone"

    aput-object v17, v0, v16

    const/16 v16, 0x222

    const-string v17, "rehab"

    aput-object v17, v0, v16

    const/16 v16, 0x223

    const-string v17, "reise"

    aput-object v17, v0, v16

    const/16 v16, 0x224

    const-string v17, "reisen"

    aput-object v17, v0, v16

    const/16 v16, 0x225

    const-string v17, "reit"

    aput-object v17, v0, v16

    const/16 v16, 0x226

    const-string v17, "ren"

    aput-object v17, v0, v16

    const/16 v16, 0x227

    const-string v17, "rent"

    aput-object v17, v0, v16

    const/16 v16, 0x228

    const-string v17, "rentals"

    aput-object v17, v0, v16

    const/16 v16, 0x229

    const-string v17, "repair"

    aput-object v17, v0, v16

    const/16 v16, 0x22a

    const-string v17, "report"

    aput-object v17, v0, v16

    const/16 v16, 0x22b

    const-string v17, "republican"

    aput-object v17, v0, v16

    const/16 v16, 0x22c

    const-string v17, "rest"

    aput-object v17, v0, v16

    const/16 v16, 0x22d

    const-string v17, "restaurant"

    aput-object v17, v0, v16

    const/16 v16, 0x22e

    const-string v17, "review"

    aput-object v17, v0, v16

    const/16 v16, 0x22f

    const-string v17, "reviews"

    aput-object v17, v0, v16

    const/16 v16, 0x230

    const-string v17, "rich"

    aput-object v17, v0, v16

    const/16 v16, 0x231

    const-string v17, "ricoh"

    aput-object v17, v0, v16

    const/16 v16, 0x232

    const-string v17, "rio"

    aput-object v17, v0, v16

    const/16 v16, 0x233

    const-string v17, "rip"

    aput-object v17, v0, v16

    const/16 v16, 0x234

    const-string v17, "rocher"

    aput-object v17, v0, v16

    const/16 v16, 0x235

    const-string v17, "rocks"

    aput-object v17, v0, v16

    const/16 v16, 0x236

    const-string v17, "rodeo"

    aput-object v17, v0, v16

    const/16 v16, 0x237

    const-string v17, "rsvp"

    aput-object v17, v0, v16

    const/16 v16, 0x238

    const-string v17, "ruhr"

    aput-object v17, v0, v16

    const/16 v16, 0x239

    const-string v17, "run"

    aput-object v17, v0, v16

    const/16 v16, 0x23a

    const-string v17, "rwe"

    aput-object v17, v0, v16

    const/16 v16, 0x23b

    const-string v17, "ryukyu"

    aput-object v17, v0, v16

    const/16 v16, 0x23c

    const-string v17, "saarland"

    aput-object v17, v0, v16

    const/16 v16, 0x23d

    const-string v17, "sakura"

    aput-object v17, v0, v16

    const/16 v16, 0x23e

    const-string v17, "sale"

    aput-object v17, v0, v16

    const/16 v16, 0x23f

    const-string v17, "samsung"

    aput-object v17, v0, v16

    const/16 v16, 0x240

    const-string v17, "sandvik"

    aput-object v17, v0, v16

    const/16 v16, 0x241

    const-string v17, "sandvikcoromant"

    aput-object v17, v0, v16

    const/16 v16, 0x242

    const-string v17, "sanofi"

    aput-object v17, v0, v16

    const/16 v16, 0x243

    const-string v17, "sap"

    aput-object v17, v0, v16

    const/16 v16, 0x244

    const-string v17, "sapo"

    aput-object v17, v0, v16

    const/16 v16, 0x245

    const-string v17, "sarl"

    aput-object v17, v0, v16

    const/16 v16, 0x246

    const-string v17, "saxo"

    aput-object v17, v0, v16

    const/16 v16, 0x247

    const-string v17, "sbs"

    aput-object v17, v0, v16

    const/16 v16, 0x248

    const-string v17, "sca"

    aput-object v17, v0, v16

    const/16 v16, 0x249

    const-string v17, "scb"

    aput-object v17, v0, v16

    const/16 v16, 0x24a

    const-string v17, "schmidt"

    aput-object v17, v0, v16

    const/16 v16, 0x24b

    const-string v17, "scholarships"

    aput-object v17, v0, v16

    const/16 v16, 0x24c

    const-string v17, "school"

    aput-object v17, v0, v16

    const/16 v16, 0x24d

    const-string v17, "schule"

    aput-object v17, v0, v16

    const/16 v16, 0x24e

    const-string v17, "schwarz"

    aput-object v17, v0, v16

    const/16 v16, 0x24f

    const-string v17, "science"

    aput-object v17, v0, v16

    const/16 v16, 0x250

    const-string v17, "scor"

    aput-object v17, v0, v16

    const/16 v16, 0x251

    const-string v17, "scot"

    aput-object v17, v0, v16

    const/16 v16, 0x252

    const-string v17, "seat"

    aput-object v17, v0, v16

    const/16 v16, 0x253

    const-string v17, "security"

    aput-object v17, v0, v16

    const/16 v16, 0x254

    const-string v17, "seek"

    aput-object v17, v0, v16

    const/16 v16, 0x255

    const-string v17, "sener"

    aput-object v17, v0, v16

    const/16 v16, 0x256

    const-string v17, "services"

    aput-object v17, v0, v16

    const/16 v16, 0x257

    const-string v17, "seven"

    aput-object v17, v0, v16

    const/16 v16, 0x258

    const-string v17, "sew"

    aput-object v17, v0, v16

    const/16 v16, 0x259

    const-string v17, "sex"

    aput-object v17, v0, v16

    const/16 v16, 0x25a

    const-string v17, "sexy"

    aput-object v17, v0, v16

    const/16 v16, 0x25b

    const-string v17, "shiksha"

    aput-object v17, v0, v16

    const/16 v16, 0x25c

    const-string v17, "shoes"

    aput-object v17, v0, v16

    const/16 v16, 0x25d

    const-string v17, "show"

    aput-object v17, v0, v16

    const/16 v16, 0x25e

    const-string v17, "shriram"

    aput-object v17, v0, v16

    const/16 v16, 0x25f

    const-string v17, "singles"

    aput-object v17, v0, v16

    const/16 v16, 0x260

    const-string v17, "site"

    aput-object v17, v0, v16

    const/16 v16, 0x261

    const-string v17, "ski"

    aput-object v17, v0, v16

    const/16 v16, 0x262

    const-string v17, "sky"

    aput-object v17, v0, v16

    const/16 v16, 0x263

    const-string v17, "skype"

    aput-object v17, v0, v16

    const/16 v16, 0x264

    const-string v17, "sncf"

    aput-object v17, v0, v16

    const/16 v16, 0x265

    const-string v17, "soccer"

    aput-object v17, v0, v16

    const/16 v16, 0x266

    const-string v17, "social"

    aput-object v17, v0, v16

    const/16 v16, 0x267

    const-string v17, "software"

    aput-object v17, v0, v16

    const/16 v16, 0x268

    const-string v17, "sohu"

    aput-object v17, v0, v16

    const/16 v16, 0x269

    const-string v17, "solar"

    aput-object v17, v0, v16

    const/16 v16, 0x26a

    const-string v17, "solutions"

    aput-object v17, v0, v16

    const/16 v16, 0x26b

    const-string v17, "sony"

    aput-object v17, v0, v16

    const/16 v16, 0x26c

    const-string v17, "soy"

    aput-object v17, v0, v16

    const/16 v16, 0x26d

    const-string v17, "space"

    aput-object v17, v0, v16

    const/16 v16, 0x26e

    const-string v17, "spiegel"

    aput-object v17, v0, v16

    const/16 v16, 0x26f

    const-string v17, "spreadbetting"

    aput-object v17, v0, v16

    const/16 v16, 0x270

    const-string v17, "srl"

    aput-object v17, v0, v16

    const/16 v16, 0x271

    const-string v17, "stada"

    aput-object v17, v0, v16

    const/16 v16, 0x272

    const-string v17, "starhub"

    aput-object v17, v0, v16

    const/16 v16, 0x273

    const-string v17, "statoil"

    aput-object v17, v0, v16

    const/16 v16, 0x274

    const-string v17, "stc"

    aput-object v17, v0, v16

    const/16 v16, 0x275

    const-string v17, "stcgroup"

    aput-object v17, v0, v16

    const/16 v16, 0x276

    const-string v17, "stockholm"

    aput-object v17, v0, v16

    const/16 v16, 0x277

    const-string v17, "studio"

    aput-object v17, v0, v16

    const/16 v16, 0x278

    const-string v17, "study"

    aput-object v17, v0, v16

    const/16 v16, 0x279

    const-string v17, "style"

    aput-object v17, v0, v16

    const/16 v16, 0x27a

    const-string v17, "sucks"

    aput-object v17, v0, v16

    const/16 v16, 0x27b

    const-string v17, "supplies"

    aput-object v17, v0, v16

    const/16 v16, 0x27c

    const-string v17, "supply"

    aput-object v17, v0, v16

    const/16 v16, 0x27d

    const-string v17, "support"

    aput-object v17, v0, v16

    const/16 v16, 0x27e

    const-string v17, "surf"

    aput-object v17, v0, v16

    const/16 v16, 0x27f

    const-string v17, "surgery"

    aput-object v17, v0, v16

    const/16 v16, 0x280

    const-string v17, "suzuki"

    aput-object v17, v0, v16

    const/16 v16, 0x281

    const-string v17, "swatch"

    aput-object v17, v0, v16

    const/16 v16, 0x282

    const-string v17, "swiss"

    aput-object v17, v0, v16

    const/16 v16, 0x283

    const-string v17, "sydney"

    aput-object v17, v0, v16

    const/16 v16, 0x284

    const-string v17, "systems"

    aput-object v17, v0, v16

    const/16 v16, 0x285

    const-string v17, "taipei"

    aput-object v17, v0, v16

    const/16 v16, 0x286

    const-string v17, "tatamotors"

    aput-object v17, v0, v16

    const/16 v16, 0x287

    const-string v17, "tatar"

    aput-object v17, v0, v16

    const/16 v16, 0x288

    const-string v17, "tattoo"

    aput-object v17, v0, v16

    const/16 v16, 0x289

    const-string v17, "tax"

    aput-object v17, v0, v16

    const/16 v16, 0x28a

    const-string v17, "taxi"

    aput-object v17, v0, v16

    const/16 v16, 0x28b

    const-string v17, "team"

    aput-object v17, v0, v16

    const/16 v16, 0x28c

    const-string v17, "tech"

    aput-object v17, v0, v16

    const/16 v16, 0x28d

    const-string v17, "technology"

    aput-object v17, v0, v16

    const/16 v16, 0x28e

    const-string v17, "tel"

    aput-object v17, v0, v16

    const/16 v16, 0x28f

    const-string v17, "telefonica"

    aput-object v17, v0, v16

    const/16 v16, 0x290

    const-string v17, "temasek"

    aput-object v17, v0, v16

    const/16 v16, 0x291

    const-string v17, "tennis"

    aput-object v17, v0, v16

    const/16 v16, 0x292

    const-string v17, "thd"

    aput-object v17, v0, v16

    const/16 v16, 0x293

    const-string v17, "theater"

    aput-object v17, v0, v16

    const/16 v16, 0x294

    const-string v17, "theatre"

    aput-object v17, v0, v16

    const/16 v16, 0x295

    const-string v17, "tickets"

    aput-object v17, v0, v16

    const/16 v16, 0x296

    const-string v17, "tienda"

    aput-object v17, v0, v16

    const/16 v16, 0x297

    const-string v17, "tips"

    aput-object v17, v0, v16

    const/16 v16, 0x298

    const-string v17, "tires"

    aput-object v17, v0, v16

    const/16 v16, 0x299

    const-string v17, "tirol"

    aput-object v17, v0, v16

    const/16 v16, 0x29a

    const-string v17, "today"

    aput-object v17, v0, v16

    const/16 v16, 0x29b

    const-string v17, "tokyo"

    aput-object v17, v0, v16

    const/16 v16, 0x29c

    const-string v17, "tools"

    aput-object v17, v0, v16

    const/16 v16, 0x29d

    const-string v17, "top"

    aput-object v17, v0, v16

    const/16 v16, 0x29e

    const-string v17, "toray"

    aput-object v17, v0, v16

    const/16 v16, 0x29f

    const-string v17, "toshiba"

    aput-object v17, v0, v16

    const/16 v16, 0x2a0

    const-string v17, "tours"

    aput-object v17, v0, v16

    const/16 v16, 0x2a1

    const-string v17, "town"

    aput-object v17, v0, v16

    const/16 v16, 0x2a2

    const-string v17, "toyota"

    aput-object v17, v0, v16

    const/16 v16, 0x2a3

    const-string v17, "toys"

    aput-object v17, v0, v16

    const/16 v16, 0x2a4

    const-string v17, "trade"

    aput-object v17, v0, v16

    const/16 v16, 0x2a5

    const-string v17, "trading"

    aput-object v17, v0, v16

    const/16 v16, 0x2a6

    const-string v17, "training"

    aput-object v17, v0, v16

    const/16 v16, 0x2a7

    const-string v17, "travel"

    aput-object v17, v0, v16

    const/16 v16, 0x2a8

    const-string v17, "trust"

    aput-object v17, v0, v16

    const/16 v16, 0x2a9

    const-string v17, "tui"

    aput-object v17, v0, v16

    const/16 v16, 0x2aa

    const-string v17, "ubs"

    aput-object v17, v0, v16

    const/16 v16, 0x2ab

    const-string v17, "university"

    aput-object v17, v0, v16

    const/16 v16, 0x2ac

    const-string v17, "uno"

    aput-object v17, v0, v16

    const/16 v16, 0x2ad

    const-string v17, "uol"

    aput-object v17, v0, v16

    const/16 v16, 0x2ae

    const-string v17, "vacations"

    aput-object v17, v0, v16

    const/16 v16, 0x2af

    const-string v17, "vegas"

    aput-object v17, v0, v16

    const/16 v16, 0x2b0

    const-string v17, "ventures"

    aput-object v17, v0, v16

    const/16 v16, 0x2b1

    const-string v17, "versicherung"

    aput-object v17, v0, v16

    const/16 v16, 0x2b2

    const-string v17, "vet"

    aput-object v17, v0, v16

    const/16 v16, 0x2b3

    const-string v17, "viajes"

    aput-object v17, v0, v16

    const/16 v16, 0x2b4

    const-string v17, "video"

    aput-object v17, v0, v16

    const/16 v16, 0x2b5

    const-string v17, "villas"

    aput-object v17, v0, v16

    const/16 v16, 0x2b6

    const-string v17, "vin"

    aput-object v17, v0, v16

    const/16 v16, 0x2b7

    const-string v17, "virgin"

    aput-object v17, v0, v16

    const/16 v16, 0x2b8

    const-string v17, "vision"

    aput-object v17, v0, v16

    const/16 v16, 0x2b9

    const-string v17, "vista"

    aput-object v17, v0, v16

    const/16 v16, 0x2ba

    const-string v17, "vistaprint"

    aput-object v17, v0, v16

    const/16 v16, 0x2bb

    const-string v17, "viva"

    aput-object v17, v0, v16

    const/16 v16, 0x2bc

    const-string v17, "vlaanderen"

    aput-object v17, v0, v16

    const/16 v16, 0x2bd

    const-string v17, "vodka"

    aput-object v17, v0, v16

    const/16 v16, 0x2be

    const-string v17, "vote"

    aput-object v17, v0, v16

    const/16 v16, 0x2bf

    const-string v17, "voting"

    aput-object v17, v0, v16

    const/16 v16, 0x2c0

    const-string v17, "voto"

    aput-object v17, v0, v16

    const/16 v16, 0x2c1

    const-string v17, "voyage"

    aput-object v17, v0, v16

    const/16 v16, 0x2c2

    const-string v17, "wales"

    aput-object v17, v0, v16

    const/16 v16, 0x2c3

    const-string v17, "walter"

    aput-object v17, v0, v16

    const/16 v16, 0x2c4

    const-string v17, "wang"

    aput-object v17, v0, v16

    const/16 v16, 0x2c5

    const-string v17, "watch"

    aput-object v17, v0, v16

    const/16 v16, 0x2c6

    const-string v17, "webcam"

    aput-object v17, v0, v16

    const/16 v16, 0x2c7

    const-string v17, "website"

    aput-object v17, v0, v16

    const/16 v16, 0x2c8

    const-string v17, "wed"

    aput-object v17, v0, v16

    const/16 v16, 0x2c9

    const-string v17, "wedding"

    aput-object v17, v0, v16

    const/16 v16, 0x2ca

    const-string v17, "weir"

    aput-object v17, v0, v16

    const/16 v16, 0x2cb

    const-string v17, "whoswho"

    aput-object v17, v0, v16

    const/16 v16, 0x2cc

    const-string v17, "wien"

    aput-object v17, v0, v16

    const/16 v16, 0x2cd

    const-string v17, "wiki"

    aput-object v17, v0, v16

    const/16 v16, 0x2ce

    const-string v17, "williamhill"

    aput-object v17, v0, v16

    const/16 v16, 0x2cf

    const-string v17, "win"

    aput-object v17, v0, v16

    const/16 v16, 0x2d0

    const-string v17, "windows"

    aput-object v17, v0, v16

    const/16 v16, 0x2d1

    const-string v17, "wine"

    aput-object v17, v0, v16

    const/16 v16, 0x2d2

    const-string v17, "wme"

    aput-object v17, v0, v16

    const/16 v16, 0x2d3

    const-string v17, "work"

    aput-object v17, v0, v16

    const/16 v16, 0x2d4

    const-string v17, "works"

    aput-object v17, v0, v16

    const/16 v16, 0x2d5

    const-string v17, "world"

    aput-object v17, v0, v16

    const/16 v16, 0x2d6

    const-string v17, "wtc"

    aput-object v17, v0, v16

    const/16 v16, 0x2d7

    const-string v17, "wtf"

    aput-object v17, v0, v16

    const/16 v16, 0x2d8

    const-string/jumbo v17, "xbox"

    aput-object v17, v0, v16

    const/16 v16, 0x2d9

    const-string/jumbo v17, "xerox"

    aput-object v17, v0, v16

    const/16 v16, 0x2da

    const-string/jumbo v17, "xin"

    aput-object v17, v0, v16

    const/16 v16, 0x2db

    const-string/jumbo v17, "xn--11b4c3d"

    aput-object v17, v0, v16

    const/16 v16, 0x2dc

    const-string/jumbo v17, "xn--1qqw23a"

    aput-object v17, v0, v16

    const/16 v16, 0x2dd

    const-string/jumbo v17, "xn--30rr7y"

    aput-object v17, v0, v16

    const/16 v16, 0x2de

    const-string/jumbo v17, "xn--3bst00m"

    aput-object v17, v0, v16

    const/16 v16, 0x2df

    const-string/jumbo v17, "xn--3ds443g"

    aput-object v17, v0, v16

    const/16 v16, 0x2e0

    const-string/jumbo v17, "xn--3pxu8k"

    aput-object v17, v0, v16

    const/16 v16, 0x2e1

    const-string/jumbo v17, "xn--42c2d9a"

    aput-object v17, v0, v16

    const/16 v16, 0x2e2

    const-string/jumbo v17, "xn--45q11c"

    aput-object v17, v0, v16

    const/16 v16, 0x2e3

    const-string/jumbo v17, "xn--4gbrim"

    aput-object v17, v0, v16

    const/16 v16, 0x2e4

    const-string/jumbo v17, "xn--55qw42g"

    aput-object v17, v0, v16

    const/16 v16, 0x2e5

    const-string/jumbo v17, "xn--55qx5d"

    aput-object v17, v0, v16

    const/16 v16, 0x2e6

    const-string/jumbo v17, "xn--6frz82g"

    aput-object v17, v0, v16

    const/16 v16, 0x2e7

    const-string/jumbo v17, "xn--6qq986b3xl"

    aput-object v17, v0, v16

    const/16 v16, 0x2e8

    const-string/jumbo v17, "xn--80adxhks"

    aput-object v17, v0, v16

    const/16 v16, 0x2e9

    const-string/jumbo v17, "xn--80asehdb"

    aput-object v17, v0, v16

    const/16 v16, 0x2ea

    const-string/jumbo v17, "xn--80aswg"

    aput-object v17, v0, v16

    const/16 v16, 0x2eb

    const-string/jumbo v17, "xn--9dbq2a"

    aput-object v17, v0, v16

    const/16 v16, 0x2ec

    const-string/jumbo v17, "xn--9et52u"

    aput-object v17, v0, v16

    const/16 v16, 0x2ed

    const-string/jumbo v17, "xn--b4w605ferd"

    aput-object v17, v0, v16

    const/16 v16, 0x2ee

    const-string/jumbo v17, "xn--c1avg"

    aput-object v17, v0, v16

    const/16 v16, 0x2ef

    const-string/jumbo v17, "xn--c2br7g"

    aput-object v17, v0, v16

    const/16 v16, 0x2f0

    const-string/jumbo v17, "xn--cg4bki"

    aput-object v17, v0, v16

    const/16 v16, 0x2f1

    const-string/jumbo v17, "xn--czr694b"

    aput-object v17, v0, v16

    const/16 v16, 0x2f2

    const-string/jumbo v17, "xn--czrs0t"

    aput-object v17, v0, v16

    const/16 v16, 0x2f3

    const-string/jumbo v17, "xn--czru2d"

    aput-object v17, v0, v16

    const/16 v16, 0x2f4

    const-string/jumbo v17, "xn--d1acj3b"

    aput-object v17, v0, v16

    const/16 v16, 0x2f5

    const-string/jumbo v17, "xn--efvy88h"

    aput-object v17, v0, v16

    const/16 v16, 0x2f6

    const-string/jumbo v17, "xn--estv75g"

    aput-object v17, v0, v16

    const/16 v16, 0x2f7

    const-string/jumbo v17, "xn--fhbei"

    aput-object v17, v0, v16

    const/16 v16, 0x2f8

    const-string/jumbo v17, "xn--fiq228c5hs"

    aput-object v17, v0, v16

    const/16 v16, 0x2f9

    const-string/jumbo v17, "xn--fiq64b"

    aput-object v17, v0, v16

    const/16 v16, 0x2fa

    const-string/jumbo v17, "xn--fjq720a"

    aput-object v17, v0, v16

    const/16 v16, 0x2fb

    const-string/jumbo v17, "xn--flw351e"

    aput-object v17, v0, v16

    const/16 v16, 0x2fc

    const-string/jumbo v17, "xn--hxt814e"

    aput-object v17, v0, v16

    const/16 v16, 0x2fd

    const-string/jumbo v17, "xn--i1b6b1a6a2e"

    aput-object v17, v0, v16

    const/16 v16, 0x2fe

    const-string/jumbo v17, "xn--imr513n"

    aput-object v17, v0, v16

    const/16 v16, 0x2ff

    const-string/jumbo v17, "xn--io0a7i"

    aput-object v17, v0, v16

    const/16 v16, 0x300

    const-string/jumbo v17, "xn--j1aef"

    aput-object v17, v0, v16

    const/16 v16, 0x301

    const-string/jumbo v17, "xn--kcrx77d1x4a"

    aput-object v17, v0, v16

    const/16 v16, 0x302

    const-string/jumbo v17, "xn--kput3i"

    aput-object v17, v0, v16

    const/16 v16, 0x303

    const-string/jumbo v17, "xn--mgba3a3ejt"

    aput-object v17, v0, v16

    const/16 v16, 0x304

    const-string/jumbo v17, "xn--mgbab2bd"

    aput-object v17, v0, v16

    const/16 v16, 0x305

    const-string/jumbo v17, "xn--mk1bu44c"

    aput-object v17, v0, v16

    const/16 v16, 0x306

    const-string/jumbo v17, "xn--mxtq1m"

    aput-object v17, v0, v16

    const/16 v16, 0x307

    const-string/jumbo v17, "xn--ngbc5azd"

    aput-object v17, v0, v16

    const/16 v16, 0x308

    const-string/jumbo v17, "xn--nqv7f"

    aput-object v17, v0, v16

    const/16 v16, 0x309

    const-string/jumbo v17, "xn--nqv7fs00ema"

    aput-object v17, v0, v16

    const/16 v16, 0x30a

    const-string/jumbo v17, "xn--nyqy26a"

    aput-object v17, v0, v16

    const/16 v16, 0x30b

    const-string/jumbo v17, "xn--p1acf"

    aput-object v17, v0, v16

    const/16 v16, 0x30c

    const-string/jumbo v17, "xn--pssy2u"

    aput-object v17, v0, v16

    const/16 v16, 0x30d

    const-string/jumbo v17, "xn--q9jyb4c"

    aput-object v17, v0, v16

    const/16 v16, 0x30e

    const-string/jumbo v17, "xn--qcka1pmc"

    aput-object v17, v0, v16

    const/16 v16, 0x30f

    const-string/jumbo v17, "xn--rhqv96g"

    aput-object v17, v0, v16

    const/16 v16, 0x310

    const-string/jumbo v17, "xn--ses554g"

    aput-object v17, v0, v16

    const/16 v16, 0x311

    const-string/jumbo v17, "xn--t60b56a"

    aput-object v17, v0, v16

    const/16 v16, 0x312

    const-string/jumbo v17, "xn--tckwe"

    aput-object v17, v0, v16

    const/16 v16, 0x313

    const-string/jumbo v17, "xn--unup4y"

    aput-object v17, v0, v16

    const/16 v16, 0x314

    const-string/jumbo v17, "xn--vermgensberater-ctb"

    aput-object v17, v0, v16

    const/16 v16, 0x315

    const-string/jumbo v17, "xn--vermgensberatung-pwb"

    aput-object v17, v0, v16

    const/16 v16, 0x316

    const-string/jumbo v17, "xn--vhquv"

    aput-object v17, v0, v16

    const/16 v16, 0x317

    const-string/jumbo v17, "xn--vuq861b"

    aput-object v17, v0, v16

    const/16 v16, 0x318

    const-string/jumbo v17, "xn--xhq521b"

    aput-object v17, v0, v16

    const/16 v16, 0x319

    const-string/jumbo v17, "xn--zfr164b"

    aput-object v17, v0, v16

    const/16 v16, 0x31a

    const-string/jumbo v17, "xperia"

    aput-object v17, v0, v16

    const/16 v16, 0x31b

    const-string/jumbo v17, "xxx"

    aput-object v17, v0, v16

    const/16 v16, 0x31c

    const-string/jumbo v17, "xyz"

    aput-object v17, v0, v16

    const/16 v16, 0x31d

    const-string/jumbo v17, "yachts"

    aput-object v17, v0, v16

    const/16 v16, 0x31e

    const-string/jumbo v17, "yamaxun"

    aput-object v17, v0, v16

    const/16 v16, 0x31f

    const-string/jumbo v17, "yandex"

    aput-object v17, v0, v16

    const/16 v16, 0x320

    const-string/jumbo v17, "yodobashi"

    aput-object v17, v0, v16

    const/16 v16, 0x321

    const-string/jumbo v17, "yoga"

    aput-object v17, v0, v16

    const/16 v16, 0x322

    const-string/jumbo v17, "yokohama"

    aput-object v17, v0, v16

    const/16 v16, 0x323

    const-string/jumbo v17, "youtube"

    aput-object v17, v0, v16

    const/16 v16, 0x324

    const-string/jumbo v17, "zara"

    aput-object v17, v0, v16

    const/16 v16, 0x325

    const-string/jumbo v17, "zip"

    aput-object v17, v0, v16

    const/16 v16, 0x326

    const-string/jumbo v17, "zone"

    aput-object v17, v0, v16

    const/16 v16, 0x327

    const-string/jumbo v17, "zuerich"

    aput-object v17, v0, v16

    sput-object v0, Laaf;->c:[Ljava/lang/String;

    const/16 v0, 0x122

    .line 925
    new-array v0, v0, [Ljava/lang/String;

    const-string v16, "ac"

    aput-object v16, v0, v1

    const-string v1, "ad"

    aput-object v1, v0, v2

    const-string v1, "ae"

    aput-object v1, v0, v3

    const-string v1, "af"

    aput-object v1, v0, v4

    const-string v1, "ag"

    aput-object v1, v0, v5

    const-string v1, "ai"

    aput-object v1, v0, v6

    const-string v1, "al"

    aput-object v1, v0, v7

    const-string v1, "am"

    aput-object v1, v0, v8

    const-string v1, "ao"

    aput-object v1, v0, v9

    const-string v1, "aq"

    aput-object v1, v0, v10

    const-string v1, "ar"

    aput-object v1, v0, v11

    const-string v1, "as"

    aput-object v1, v0, v12

    const-string v1, "at"

    aput-object v1, v0, v13

    const-string v1, "au"

    aput-object v1, v0, v14

    const-string v1, "aw"

    aput-object v1, v0, v15

    const/16 v1, 0xf

    const-string v2, "ax"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "az"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "ba"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "bb"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "bd"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "be"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "bf"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "bg"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "bh"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "bi"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "bj"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "bm"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "bn"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "bo"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "br"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "bs"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "bt"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "bv"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "bw"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "by"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "bz"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "ca"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "cc"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "cd"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "cf"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "cg"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "ch"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "ci"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "ck"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "cl"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "cm"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "cn"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "co"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "cr"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "cu"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "cv"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "cw"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "cx"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "cy"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "cz"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "de"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "dj"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "dk"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "dm"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "do"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "dz"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "ec"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "ee"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "eg"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "er"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "es"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "et"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "eu"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "fi"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "fj"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "fk"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "fm"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "fo"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "fr"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "ga"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "gb"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "gd"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "ge"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "gf"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "gg"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "gh"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "gi"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "gl"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "gm"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "gn"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "gp"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "gq"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "gr"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "gs"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "gt"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "gu"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "gw"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "gy"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "hk"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "hm"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "hn"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "hr"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "ht"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "hu"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "id"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "ie"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "il"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "im"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "in"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "io"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "iq"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "ir"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "is"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "it"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "je"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "jm"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "jo"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "jp"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "ke"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "kg"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "kh"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "ki"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "km"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "kn"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "kp"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "kr"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "kw"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "ky"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "kz"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "la"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "lb"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "lc"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "li"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "lk"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "lr"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "ls"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "lt"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "lu"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "lv"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "ly"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "ma"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "mc"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "md"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "me"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "mg"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "mh"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "mk"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "ml"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "mm"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "mn"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "mo"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "mp"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "mq"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "mr"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "ms"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "mt"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "mu"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "mv"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "mw"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "mx"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "my"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "mz"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "na"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "nc"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "ne"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "nf"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "ng"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "ni"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "nl"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "no"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "np"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "nr"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "nu"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "nz"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "om"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "pa"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "pe"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "pf"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "pg"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "ph"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "pk"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "pl"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "pm"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "pn"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "pr"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "ps"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "pt"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "pw"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "py"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "qa"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "re"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "ro"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "rs"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "ru"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "rw"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "sa"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "sb"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "sc"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "sd"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "se"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "sg"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "sh"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "si"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "sj"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "sk"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, "sl"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "sm"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "sn"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "so"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "sr"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "st"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "su"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "sv"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, "sx"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, "sy"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "sz"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "tc"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "td"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "tf"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "tg"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "th"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, "tj"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "tk"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v2, "tl"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v2, "tm"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "tn"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v2, "to"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, "tr"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "tt"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string v2, "tv"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "tw"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "tz"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v2, "ua"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string v2, "ug"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string v2, "uk"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string v2, "us"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string v2, "uy"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string v2, "uz"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string v2, "va"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string v2, "vc"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string v2, "ve"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string v2, "vg"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const-string v2, "vi"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const-string v2, "vn"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string v2, "vu"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const-string v2, "wf"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string v2, "ws"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string/jumbo v2, "xn--3e0b707e"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string/jumbo v2, "xn--45brj9c"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string/jumbo v2, "xn--80ao21a"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string/jumbo v2, "xn--90a3ac"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string/jumbo v2, "xn--90ais"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const-string/jumbo v2, "xn--clchc0ea0b2g2a9gcd"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const-string/jumbo v2, "xn--d1alf"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string/jumbo v2, "xn--fiqs8s"

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string/jumbo v2, "xn--fiqz9s"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string/jumbo v2, "xn--fpcrj9c3d"

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string/jumbo v2, "xn--fzc2c9e2c"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string/jumbo v2, "xn--gecrj9c"

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const-string/jumbo v2, "xn--h2brj9c"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string/jumbo v2, "xn--j1amh"

    aput-object v2, v0, v1

    const/16 v1, 0x100

    const-string/jumbo v2, "xn--j6w193g"

    aput-object v2, v0, v1

    const/16 v1, 0x101

    const-string/jumbo v2, "xn--kprw13d"

    aput-object v2, v0, v1

    const/16 v1, 0x102

    const-string/jumbo v2, "xn--kpry57d"

    aput-object v2, v0, v1

    const/16 v1, 0x103

    const-string/jumbo v2, "xn--l1acc"

    aput-object v2, v0, v1

    const/16 v1, 0x104

    const-string/jumbo v2, "xn--lgbbat1ad8j"

    aput-object v2, v0, v1

    const/16 v1, 0x105

    const-string/jumbo v2, "xn--mgb9awbf"

    aput-object v2, v0, v1

    const/16 v1, 0x106

    const-string/jumbo v2, "xn--mgba3a4f16a"

    aput-object v2, v0, v1

    const/16 v1, 0x107

    const-string/jumbo v2, "xn--mgbaam7a8h"

    aput-object v2, v0, v1

    const/16 v1, 0x108

    const-string/jumbo v2, "xn--mgbayh7gpa"

    aput-object v2, v0, v1

    const/16 v1, 0x109

    const-string/jumbo v2, "xn--mgbbh1a71e"

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    const-string/jumbo v2, "xn--mgbc0a9azcg"

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    const-string/jumbo v2, "xn--mgberp4a5d4ar"

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    const-string/jumbo v2, "xn--mgbpl2fh"

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    const-string/jumbo v2, "xn--mgbtx2b"

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    const-string/jumbo v2, "xn--mgbx4cd0ab"

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    const-string/jumbo v2, "xn--node"

    aput-object v2, v0, v1

    const/16 v1, 0x110

    const-string/jumbo v2, "xn--o3cw4h"

    aput-object v2, v0, v1

    const/16 v1, 0x111

    const-string/jumbo v2, "xn--ogbpf8fl"

    aput-object v2, v0, v1

    const/16 v1, 0x112

    const-string/jumbo v2, "xn--p1ai"

    aput-object v2, v0, v1

    const/16 v1, 0x113

    const-string/jumbo v2, "xn--pgbs0dh"

    aput-object v2, v0, v1

    const/16 v1, 0x114

    const-string/jumbo v2, "xn--qxam"

    aput-object v2, v0, v1

    const/16 v1, 0x115

    const-string/jumbo v2, "xn--s9brj9c"

    aput-object v2, v0, v1

    const/16 v1, 0x116

    const-string/jumbo v2, "xn--wgbh1c"

    aput-object v2, v0, v1

    const/16 v1, 0x117

    const-string/jumbo v2, "xn--wgbl6a"

    aput-object v2, v0, v1

    const/16 v1, 0x118

    const-string/jumbo v2, "xn--xkc2al3hye2a"

    aput-object v2, v0, v1

    const/16 v1, 0x119

    const-string/jumbo v2, "xn--xkc2dl3a5ee0h"

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    const-string/jumbo v2, "xn--y9a3aq"

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    const-string/jumbo v2, "xn--yfro4i67o"

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    const-string/jumbo v2, "xn--ygbi2ammx"

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    const-string/jumbo v2, "ye"

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    const-string/jumbo v2, "yt"

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    const-string/jumbo v2, "za"

    aput-object v2, v0, v1

    const/16 v1, 0x120

    const-string/jumbo v2, "zm"

    aput-object v2, v0, v1

    const/16 v1, 0x121

    const-string/jumbo v2, "zw"

    aput-object v2, v0, v1

    sput-object v0, Laaf;->d:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 28
    :cond_0
    invoke-static {p0}, Laaf;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xfd

    if-le v1, v2, :cond_1

    return v0

    .line 37
    :cond_1
    sget-object v1, Laaf;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 38
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 39
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    .line 40
    new-array v2, v1, [Ljava/lang/String;

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_2

    add-int/lit8 v4, v3, 0x1

    .line 42
    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    move v3, v4

    goto :goto_0

    .line 44
    :cond_2
    aget-object p0, v2, v0

    invoke-static {p0}, Laaf;->b(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    return v0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 2

    .line 58
    invoke-static {p0}, Laaf;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 59
    invoke-static {p0}, Laaf;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "."

    .line 60
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 63
    :cond_0
    sget-object v0, Laaf;->b:[Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_2

    sget-object v0, Laaf;->c:[Ljava/lang/String;

    .line 64
    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_2

    sget-object v0, Laaf;->d:[Ljava/lang/String;

    .line 65
    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 78
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 79
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7f

    if-le v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return-object p0

    .line 88
    :cond_2
    invoke-static {p0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
