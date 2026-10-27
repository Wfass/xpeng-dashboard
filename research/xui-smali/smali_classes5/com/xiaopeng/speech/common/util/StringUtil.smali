.class public Lcom/xiaopeng/speech/common/util/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AIOS-StringUtil"

.field static pinyins:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    const/16 v0, 0x19a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "sil"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "a"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "ai"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "an"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "ang"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "ao"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "ba"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "bai"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "ban"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "bang"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "bao"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "bei"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "ben"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "beng"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "bi"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "bian"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "biao"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "bie"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "bin"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "bing"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "bo"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "bu"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "ca"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "cai"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "can"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "cang"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "cao"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "ce"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "cen"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, "ceng"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v1, "cha"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string v1, "chai"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string v1, "chan"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string v1, "chang"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string v1, "chao"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string v1, "che"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string v1, "chen"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string v1, "cheng"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string v1, "chi"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string v1, "chong"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string v1, "chou"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string v1, "chu"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string v1, "chuai"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string v1, "chuan"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-string v1, "chuang"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string v1, "chui"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string v1, "chun"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-string v1, "chuo"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string v1, "ci"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-string v1, "cong"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const-string v1, "cou"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const-string v1, "cu"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const-string v1, "cuan"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const-string v1, "cui"

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const-string v1, "cun"

    const/16 v2, 0x36

    aput-object v1, v0, v2

    const-string v1, "cuo"

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const-string v1, "da"

    const/16 v2, 0x38

    aput-object v1, v0, v2

    const-string v1, "dai"

    const/16 v2, 0x39

    aput-object v1, v0, v2

    const-string v1, "dan"

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    const-string v1, "dang"

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    const-string v1, "dao"

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    const-string v1, "de"

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    const-string v1, "dei"

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    const-string v1, "den"

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    const-string v1, "deng"

    const/16 v2, 0x40

    aput-object v1, v0, v2

    const-string v1, "di"

    const/16 v2, 0x41

    aput-object v1, v0, v2

    const-string v1, "dia"

    const/16 v2, 0x42

    aput-object v1, v0, v2

    const-string v1, "dian"

    const/16 v2, 0x43

    aput-object v1, v0, v2

    const-string v1, "diao"

    const/16 v2, 0x44

    aput-object v1, v0, v2

    const-string v1, "die"

    const/16 v2, 0x45

    aput-object v1, v0, v2

    const-string v1, "ding"

    const/16 v2, 0x46

    aput-object v1, v0, v2

    const-string v1, "diu"

    const/16 v2, 0x47

    aput-object v1, v0, v2

    const-string v1, "dong"

    const/16 v2, 0x48

    aput-object v1, v0, v2

    const-string v1, "dou"

    const/16 v2, 0x49

    aput-object v1, v0, v2

    const-string v1, "du"

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    const-string v1, "duan"

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    const-string v1, "dui"

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    const-string v1, "dun"

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    const-string v1, "duo"

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    const-string v1, "e"

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    const-string v1, "ei"

    const/16 v2, 0x50

    aput-object v1, v0, v2

    const-string v1, "en"

    const/16 v2, 0x51

    aput-object v1, v0, v2

    const-string v1, "er"

    const/16 v2, 0x52

    aput-object v1, v0, v2

    const-string v1, "fa"

    const/16 v2, 0x53

    aput-object v1, v0, v2

    const-string v1, "fan"

    const/16 v2, 0x54

    aput-object v1, v0, v2

    const-string v1, "fang"

    const/16 v2, 0x55

    aput-object v1, v0, v2

    const-string v1, "fei"

    const/16 v2, 0x56

    aput-object v1, v0, v2

    const-string v1, "fen"

    const/16 v2, 0x57

    aput-object v1, v0, v2

    const-string v1, "feng"

    const/16 v2, 0x58

    aput-object v1, v0, v2

    const-string v1, "fo"

    const/16 v2, 0x59

    aput-object v1, v0, v2

    const-string v1, "fou"

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    const-string v1, "fu"

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    const-string v1, "ga"

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    const-string v1, "gai"

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    const-string v1, "gan"

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    const-string v1, "gang"

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    const-string v1, "gao"

    const/16 v2, 0x60

    aput-object v1, v0, v2

    const-string v1, "ge"

    const/16 v2, 0x61

    aput-object v1, v0, v2

    const-string v1, "gei"

    const/16 v2, 0x62

    aput-object v1, v0, v2

    const-string v1, "gen"

    const/16 v2, 0x63

    aput-object v1, v0, v2

    const-string v1, "geng"

    const/16 v2, 0x64

    aput-object v1, v0, v2

    const-string v1, "gong"

    const/16 v2, 0x65

    aput-object v1, v0, v2

    const-string v1, "gou"

    const/16 v2, 0x66

    aput-object v1, v0, v2

    const-string v1, "gu"

    const/16 v2, 0x67

    aput-object v1, v0, v2

    const-string v1, "gua"

    const/16 v2, 0x68

    aput-object v1, v0, v2

    const-string v1, "guai"

    const/16 v2, 0x69

    aput-object v1, v0, v2

    const-string v1, "guan"

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    const-string v1, "guang"

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    const-string v1, "gui"

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    const-string v1, "gun"

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    const-string v1, "guo"

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    const-string v1, "ha"

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    const-string v1, "hai"

    const/16 v2, 0x70

    aput-object v1, v0, v2

    const-string v1, "han"

    const/16 v2, 0x71

    aput-object v1, v0, v2

    const-string v1, "hang"

    const/16 v2, 0x72

    aput-object v1, v0, v2

    const-string v1, "hao"

    const/16 v2, 0x73

    aput-object v1, v0, v2

    const-string v1, "he"

    const/16 v2, 0x74

    aput-object v1, v0, v2

    const-string v1, "hei"

    const/16 v2, 0x75

    aput-object v1, v0, v2

    const-string v1, "hen"

    const/16 v2, 0x76

    aput-object v1, v0, v2

    const-string v1, "heng"

    const/16 v2, 0x77

    aput-object v1, v0, v2

    const-string v1, "hng"

    const/16 v2, 0x78

    aput-object v1, v0, v2

    const-string v1, "hong"

    const/16 v2, 0x79

    aput-object v1, v0, v2

    const-string v1, "hou"

    const/16 v2, 0x7a

    aput-object v1, v0, v2

    const-string v1, "hu"

    const/16 v2, 0x7b

    aput-object v1, v0, v2

    const-string v1, "hua"

    const/16 v2, 0x7c

    aput-object v1, v0, v2

    const-string v1, "huai"

    const/16 v2, 0x7d

    aput-object v1, v0, v2

    const-string v1, "huan"

    const/16 v2, 0x7e

    aput-object v1, v0, v2

    const-string v1, "huang"

    const/16 v2, 0x7f

    aput-object v1, v0, v2

    const-string v1, "hui"

    const/16 v2, 0x80

    aput-object v1, v0, v2

    const-string v1, "hun"

    const/16 v2, 0x81

    aput-object v1, v0, v2

    const-string v1, "huo"

    const/16 v2, 0x82

    aput-object v1, v0, v2

    const-string v1, "ji"

    const/16 v2, 0x83

    aput-object v1, v0, v2

    const-string v1, "jia"

    const/16 v2, 0x84

    aput-object v1, v0, v2

    const-string v1, "jian"

    const/16 v2, 0x85

    aput-object v1, v0, v2

    const-string v1, "jiang"

    const/16 v2, 0x86

    aput-object v1, v0, v2

    const-string v1, "jiao"

    const/16 v2, 0x87

    aput-object v1, v0, v2

    const-string v1, "jie"

    const/16 v2, 0x88

    aput-object v1, v0, v2

    const-string v1, "jin"

    const/16 v2, 0x89

    aput-object v1, v0, v2

    const-string v1, "jing"

    const/16 v2, 0x8a

    aput-object v1, v0, v2

    const-string v1, "jiong"

    const/16 v2, 0x8b

    aput-object v1, v0, v2

    const-string v1, "jiu"

    const/16 v2, 0x8c

    aput-object v1, v0, v2

    const-string v1, "juan"

    const/16 v2, 0x8d

    aput-object v1, v0, v2

    const-string v1, "jue"

    const/16 v2, 0x8e

    aput-object v1, v0, v2

    const-string v1, "jun"

    const/16 v2, 0x8f

    aput-object v1, v0, v2

    const-string v1, "jv"

    const/16 v2, 0x90

    aput-object v1, v0, v2

    const-string v1, "ka"

    const/16 v2, 0x91

    aput-object v1, v0, v2

    const-string v1, "kai"

    const/16 v2, 0x92

    aput-object v1, v0, v2

    const-string v1, "kan"

    const/16 v2, 0x93

    aput-object v1, v0, v2

    const-string v1, "kang"

    const/16 v2, 0x94

    aput-object v1, v0, v2

    const-string v1, "kao"

    const/16 v2, 0x95

    aput-object v1, v0, v2

    const-string v1, "ke"

    const/16 v2, 0x96

    aput-object v1, v0, v2

    const-string v1, "ken"

    const/16 v2, 0x97

    aput-object v1, v0, v2

    const-string v1, "keng"

    const/16 v2, 0x98

    aput-object v1, v0, v2

    const-string v1, "kong"

    const/16 v2, 0x99

    aput-object v1, v0, v2

    const-string v1, "kou"

    const/16 v2, 0x9a

    aput-object v1, v0, v2

    const-string v1, "ku"

    const/16 v2, 0x9b

    aput-object v1, v0, v2

    const-string v1, "kua"

    const/16 v2, 0x9c

    aput-object v1, v0, v2

    const-string v1, "kuai"

    const/16 v2, 0x9d

    aput-object v1, v0, v2

    const-string v1, "kuan"

    const/16 v2, 0x9e

    aput-object v1, v0, v2

    const-string v1, "kuang"

    const/16 v2, 0x9f

    aput-object v1, v0, v2

    const-string v1, "kui"

    const/16 v2, 0xa0

    aput-object v1, v0, v2

    const-string v1, "kun"

    const/16 v2, 0xa1

    aput-object v1, v0, v2

    const-string v1, "kuo"

    const/16 v2, 0xa2

    aput-object v1, v0, v2

    const-string v1, "la"

    const/16 v2, 0xa3

    aput-object v1, v0, v2

    const-string v1, "lai"

    const/16 v2, 0xa4

    aput-object v1, v0, v2

    const-string v1, "lan"

    const/16 v2, 0xa5

    aput-object v1, v0, v2

    const-string v1, "lang"

    const/16 v2, 0xa6

    aput-object v1, v0, v2

    const-string v1, "lao"

    const/16 v2, 0xa7

    aput-object v1, v0, v2

    const-string v1, "le"

    const/16 v2, 0xa8

    aput-object v1, v0, v2

    const-string v1, "lei"

    const/16 v2, 0xa9

    aput-object v1, v0, v2

    const-string v1, "leng"

    const/16 v2, 0xaa

    aput-object v1, v0, v2

    const-string v1, "li"

    const/16 v2, 0xab

    aput-object v1, v0, v2

    const-string v1, "lia"

    const/16 v2, 0xac

    aput-object v1, v0, v2

    const-string v1, "lian"

    const/16 v2, 0xad

    aput-object v1, v0, v2

    const-string v1, "liang"

    const/16 v2, 0xae

    aput-object v1, v0, v2

    const-string v1, "liao"

    const/16 v2, 0xaf

    aput-object v1, v0, v2

    const-string v1, "lie"

    const/16 v2, 0xb0

    aput-object v1, v0, v2

    const-string v1, "lin"

    const/16 v2, 0xb1

    aput-object v1, v0, v2

    const-string v1, "ling"

    const/16 v2, 0xb2

    aput-object v1, v0, v2

    const-string v1, "liu"

    const/16 v2, 0xb3

    aput-object v1, v0, v2

    const-string v1, "lo"

    const/16 v2, 0xb4

    aput-object v1, v0, v2

    const-string v1, "long"

    const/16 v2, 0xb5

    aput-object v1, v0, v2

    const-string v1, "lou"

    const/16 v2, 0xb6

    aput-object v1, v0, v2

    const-string v1, "lu"

    const/16 v2, 0xb7

    aput-object v1, v0, v2

    const-string v1, "luan"

    const/16 v2, 0xb8

    aput-object v1, v0, v2

    const-string v1, "lue"

    const/16 v2, 0xb9

    aput-object v1, v0, v2

    const-string v1, "lun"

    const/16 v2, 0xba

    aput-object v1, v0, v2

    const-string v1, "luo"

    const/16 v2, 0xbb

    aput-object v1, v0, v2

    const-string v1, "lv"

    const/16 v2, 0xbc

    aput-object v1, v0, v2

    const-string v1, "ma"

    const/16 v2, 0xbd

    aput-object v1, v0, v2

    const-string v1, "mai"

    const/16 v2, 0xbe

    aput-object v1, v0, v2

    const-string v1, "man"

    const/16 v2, 0xbf

    aput-object v1, v0, v2

    const-string v1, "mang"

    const/16 v2, 0xc0

    aput-object v1, v0, v2

    const-string v1, "mao"

    const/16 v2, 0xc1

    aput-object v1, v0, v2

    const-string v1, "me"

    const/16 v2, 0xc2

    aput-object v1, v0, v2

    const-string v1, "mei"

    const/16 v2, 0xc3

    aput-object v1, v0, v2

    const-string v1, "men"

    const/16 v2, 0xc4

    aput-object v1, v0, v2

    const-string v1, "meng"

    const/16 v2, 0xc5

    aput-object v1, v0, v2

    const-string v1, "mi"

    const/16 v2, 0xc6

    aput-object v1, v0, v2

    const-string v1, "mian"

    const/16 v2, 0xc7

    aput-object v1, v0, v2

    const-string v1, "miao"

    const/16 v2, 0xc8

    aput-object v1, v0, v2

    const-string v1, "mie"

    const/16 v2, 0xc9

    aput-object v1, v0, v2

    const-string v1, "min"

    const/16 v2, 0xca

    aput-object v1, v0, v2

    const-string v1, "ming"

    const/16 v2, 0xcb

    aput-object v1, v0, v2

    const-string v1, "miu"

    const/16 v2, 0xcc

    aput-object v1, v0, v2

    const-string v1, "mo"

    const/16 v2, 0xcd

    aput-object v1, v0, v2

    const-string v1, "mou"

    const/16 v2, 0xce

    aput-object v1, v0, v2

    const-string v1, "mu"

    const/16 v2, 0xcf

    aput-object v1, v0, v2

    const-string v1, "na"

    const/16 v2, 0xd0

    aput-object v1, v0, v2

    const-string v1, "nai"

    const/16 v2, 0xd1

    aput-object v1, v0, v2

    const-string v1, "nan"

    const/16 v2, 0xd2

    aput-object v1, v0, v2

    const-string v1, "nang"

    const/16 v2, 0xd3

    aput-object v1, v0, v2

    const-string v1, "nao"

    const/16 v2, 0xd4

    aput-object v1, v0, v2

    const-string v1, "ne"

    const/16 v2, 0xd5

    aput-object v1, v0, v2

    const-string v1, "nei"

    const/16 v2, 0xd6

    aput-object v1, v0, v2

    const-string v1, "nen"

    const/16 v2, 0xd7

    aput-object v1, v0, v2

    const-string v1, "neng"

    const/16 v2, 0xd8

    aput-object v1, v0, v2

    const-string v1, "ng"

    const/16 v2, 0xd9

    aput-object v1, v0, v2

    const-string v1, "ni"

    const/16 v2, 0xda

    aput-object v1, v0, v2

    const-string v1, "nian"

    const/16 v2, 0xdb

    aput-object v1, v0, v2

    const-string v1, "niang"

    const/16 v2, 0xdc

    aput-object v1, v0, v2

    const-string v1, "niao"

    const/16 v2, 0xdd

    aput-object v1, v0, v2

    const-string v1, "nie"

    const/16 v2, 0xde

    aput-object v1, v0, v2

    const-string v1, "nin"

    const/16 v2, 0xdf

    aput-object v1, v0, v2

    const-string v1, "ning"

    const/16 v2, 0xe0

    aput-object v1, v0, v2

    const-string v1, "niu"

    const/16 v2, 0xe1

    aput-object v1, v0, v2

    const-string v1, "nong"

    const/16 v2, 0xe2

    aput-object v1, v0, v2

    const-string v1, "nou"

    const/16 v2, 0xe3

    aput-object v1, v0, v2

    const-string v1, "nu"

    const/16 v2, 0xe4

    aput-object v1, v0, v2

    const-string v1, "nuan"

    const/16 v2, 0xe5

    aput-object v1, v0, v2

    const-string v1, "nue"

    const/16 v2, 0xe6

    aput-object v1, v0, v2

    const-string v1, "nuo"

    const/16 v2, 0xe7

    aput-object v1, v0, v2

    const-string v1, "nv"

    const/16 v2, 0xe8

    aput-object v1, v0, v2

    const-string v1, "o"

    const/16 v2, 0xe9

    aput-object v1, v0, v2

    const-string v1, "ou"

    const/16 v2, 0xea

    aput-object v1, v0, v2

    const-string v1, "pa"

    const/16 v2, 0xeb

    aput-object v1, v0, v2

    const-string v1, "pai"

    const/16 v2, 0xec

    aput-object v1, v0, v2

    const-string v1, "pan"

    const/16 v2, 0xed

    aput-object v1, v0, v2

    const-string v1, "pang"

    const/16 v2, 0xee

    aput-object v1, v0, v2

    const-string v1, "pao"

    const/16 v2, 0xef

    aput-object v1, v0, v2

    const-string v1, "pei"

    const/16 v2, 0xf0

    aput-object v1, v0, v2

    const-string v1, "pen"

    const/16 v2, 0xf1

    aput-object v1, v0, v2

    const-string v1, "peng"

    const/16 v2, 0xf2

    aput-object v1, v0, v2

    const-string v1, "pi"

    const/16 v2, 0xf3

    aput-object v1, v0, v2

    const-string v1, "pian"

    const/16 v2, 0xf4

    aput-object v1, v0, v2

    const-string v1, "piao"

    const/16 v2, 0xf5

    aput-object v1, v0, v2

    const-string v1, "pie"

    const/16 v2, 0xf6

    aput-object v1, v0, v2

    const-string v1, "pin"

    const/16 v2, 0xf7

    aput-object v1, v0, v2

    const-string v1, "ping"

    const/16 v2, 0xf8

    aput-object v1, v0, v2

    const-string v1, "po"

    const/16 v2, 0xf9

    aput-object v1, v0, v2

    const-string v1, "pou"

    const/16 v2, 0xfa

    aput-object v1, v0, v2

    const-string v1, "pu"

    const/16 v2, 0xfb

    aput-object v1, v0, v2

    const-string v1, "qi"

    const/16 v2, 0xfc

    aput-object v1, v0, v2

    const-string v1, "qia"

    const/16 v2, 0xfd

    aput-object v1, v0, v2

    const-string v1, "qian"

    const/16 v2, 0xfe

    aput-object v1, v0, v2

    const-string v1, "qiang"

    const/16 v2, 0xff

    aput-object v1, v0, v2

    const-string v1, "qiao"

    const/16 v2, 0x100

    aput-object v1, v0, v2

    const-string v1, "qie"

    const/16 v2, 0x101

    aput-object v1, v0, v2

    const-string v1, "qin"

    const/16 v2, 0x102

    aput-object v1, v0, v2

    const-string v1, "qing"

    const/16 v2, 0x103

    aput-object v1, v0, v2

    const-string v1, "qiong"

    const/16 v2, 0x104

    aput-object v1, v0, v2

    const-string v1, "qiu"

    const/16 v2, 0x105

    aput-object v1, v0, v2

    const-string v1, "quan"

    const/16 v2, 0x106

    aput-object v1, v0, v2

    const-string v1, "que"

    const/16 v2, 0x107

    aput-object v1, v0, v2

    const-string v1, "qun"

    const/16 v2, 0x108

    aput-object v1, v0, v2

    const-string v1, "qv"

    const/16 v2, 0x109

    aput-object v1, v0, v2

    const-string v1, "ran"

    const/16 v2, 0x10a

    aput-object v1, v0, v2

    const-string v1, "rang"

    const/16 v2, 0x10b

    aput-object v1, v0, v2

    const-string v1, "rao"

    const/16 v2, 0x10c

    aput-object v1, v0, v2

    const-string v1, "re"

    const/16 v2, 0x10d

    aput-object v1, v0, v2

    const-string v1, "ren"

    const/16 v2, 0x10e

    aput-object v1, v0, v2

    const-string v1, "reng"

    const/16 v2, 0x10f

    aput-object v1, v0, v2

    const-string v1, "ri"

    const/16 v2, 0x110

    aput-object v1, v0, v2

    const-string v1, "rong"

    const/16 v2, 0x111

    aput-object v1, v0, v2

    const-string v1, "rou"

    const/16 v2, 0x112

    aput-object v1, v0, v2

    const-string v1, "ru"

    const/16 v2, 0x113

    aput-object v1, v0, v2

    const-string v1, "ruan"

    const/16 v2, 0x114

    aput-object v1, v0, v2

    const-string v1, "rui"

    const/16 v2, 0x115

    aput-object v1, v0, v2

    const-string v1, "run"

    const/16 v2, 0x116

    aput-object v1, v0, v2

    const-string v1, "ruo"

    const/16 v2, 0x117

    aput-object v1, v0, v2

    const-string v1, "sa"

    const/16 v2, 0x118

    aput-object v1, v0, v2

    const-string v1, "sai"

    const/16 v2, 0x119

    aput-object v1, v0, v2

    const-string v1, "san"

    const/16 v2, 0x11a

    aput-object v1, v0, v2

    const-string v1, "sang"

    const/16 v2, 0x11b

    aput-object v1, v0, v2

    const-string v1, "sao"

    const/16 v2, 0x11c

    aput-object v1, v0, v2

    const-string v1, "se"

    const/16 v2, 0x11d

    aput-object v1, v0, v2

    const-string v1, "sen"

    const/16 v2, 0x11e

    aput-object v1, v0, v2

    const-string v1, "seng"

    const/16 v2, 0x11f

    aput-object v1, v0, v2

    const-string v1, "sha"

    const/16 v2, 0x120

    aput-object v1, v0, v2

    const-string v1, "shai"

    const/16 v2, 0x121

    aput-object v1, v0, v2

    const-string v1, "shan"

    const/16 v2, 0x122

    aput-object v1, v0, v2

    const-string v1, "shang"

    const/16 v2, 0x123

    aput-object v1, v0, v2

    const-string v1, "shao"

    const/16 v2, 0x124

    aput-object v1, v0, v2

    const-string v1, "she"

    const/16 v2, 0x125

    aput-object v1, v0, v2

    const-string v1, "shei"

    const/16 v2, 0x126

    aput-object v1, v0, v2

    const-string v1, "shen"

    const/16 v2, 0x127

    aput-object v1, v0, v2

    const-string v1, "sheng"

    const/16 v2, 0x128

    aput-object v1, v0, v2

    const-string v1, "shi"

    const/16 v2, 0x129

    aput-object v1, v0, v2

    const-string v1, "shou"

    const/16 v2, 0x12a

    aput-object v1, v0, v2

    const-string v1, "shu"

    const/16 v2, 0x12b

    aput-object v1, v0, v2

    const-string v1, "shua"

    const/16 v2, 0x12c

    aput-object v1, v0, v2

    const-string v1, "shuai"

    const/16 v2, 0x12d

    aput-object v1, v0, v2

    const-string v1, "shuan"

    const/16 v2, 0x12e

    aput-object v1, v0, v2

    const-string v1, "shuang"

    const/16 v2, 0x12f

    aput-object v1, v0, v2

    const-string v1, "shui"

    const/16 v2, 0x130

    aput-object v1, v0, v2

    const-string v1, "shun"

    const/16 v2, 0x131

    aput-object v1, v0, v2

    const-string v1, "shuo"

    const/16 v2, 0x132

    aput-object v1, v0, v2

    const-string v1, "si"

    const/16 v2, 0x133

    aput-object v1, v0, v2

    const-string v1, "song"

    const/16 v2, 0x134

    aput-object v1, v0, v2

    const-string v1, "sou"

    const/16 v2, 0x135

    aput-object v1, v0, v2

    const-string v1, "su"

    const/16 v2, 0x136

    aput-object v1, v0, v2

    const-string v1, "suan"

    const/16 v2, 0x137

    aput-object v1, v0, v2

    const-string v1, "sui"

    const/16 v2, 0x138

    aput-object v1, v0, v2

    const-string v1, "sun"

    const/16 v2, 0x139

    aput-object v1, v0, v2

    const-string v1, "suo"

    const/16 v2, 0x13a

    aput-object v1, v0, v2

    const-string v1, "ta"

    const/16 v2, 0x13b

    aput-object v1, v0, v2

    const-string v1, "tai"

    const/16 v2, 0x13c

    aput-object v1, v0, v2

    const-string v1, "tan"

    const/16 v2, 0x13d

    aput-object v1, v0, v2

    const-string v1, "tang"

    const/16 v2, 0x13e

    aput-object v1, v0, v2

    const-string v1, "tao"

    const/16 v2, 0x13f

    aput-object v1, v0, v2

    const-string v1, "te"

    const/16 v2, 0x140

    aput-object v1, v0, v2

    const-string v1, "tei"

    const/16 v2, 0x141

    aput-object v1, v0, v2

    const-string v1, "teng"

    const/16 v2, 0x142

    aput-object v1, v0, v2

    const-string v1, "ti"

    const/16 v2, 0x143

    aput-object v1, v0, v2

    const-string v1, "tian"

    const/16 v2, 0x144

    aput-object v1, v0, v2

    const-string v1, "tiao"

    const/16 v2, 0x145

    aput-object v1, v0, v2

    const-string v1, "tie"

    const/16 v2, 0x146

    aput-object v1, v0, v2

    const-string v1, "ting"

    const/16 v2, 0x147

    aput-object v1, v0, v2

    const-string v1, "tong"

    const/16 v2, 0x148

    aput-object v1, v0, v2

    const-string v1, "tou"

    const/16 v2, 0x149

    aput-object v1, v0, v2

    const-string v1, "tu"

    const/16 v2, 0x14a

    aput-object v1, v0, v2

    const-string v1, "tuan"

    const/16 v2, 0x14b

    aput-object v1, v0, v2

    const-string v1, "tui"

    const/16 v2, 0x14c

    aput-object v1, v0, v2

    const-string v1, "tun"

    const/16 v2, 0x14d

    aput-object v1, v0, v2

    const-string v1, "tuo"

    const/16 v2, 0x14e

    aput-object v1, v0, v2

    const-string v1, "wa"

    const/16 v2, 0x14f

    aput-object v1, v0, v2

    const-string v1, "wai"

    const/16 v2, 0x150

    aput-object v1, v0, v2

    const-string v1, "wan"

    const/16 v2, 0x151

    aput-object v1, v0, v2

    const-string v1, "wang"

    const/16 v2, 0x152

    aput-object v1, v0, v2

    const-string v1, "wei"

    const/16 v2, 0x153

    aput-object v1, v0, v2

    const-string v1, "wen"

    const/16 v2, 0x154

    aput-object v1, v0, v2

    const-string v1, "weng"

    const/16 v2, 0x155

    aput-object v1, v0, v2

    const-string v1, "wo"

    const/16 v2, 0x156

    aput-object v1, v0, v2

    const-string v1, "wu"

    const/16 v2, 0x157

    aput-object v1, v0, v2

    const-string v1, "xi"

    const/16 v2, 0x158

    aput-object v1, v0, v2

    const-string v1, "xia"

    const/16 v2, 0x159

    aput-object v1, v0, v2

    const-string v1, "xian"

    const/16 v2, 0x15a

    aput-object v1, v0, v2

    const-string v1, "xiang"

    const/16 v2, 0x15b

    aput-object v1, v0, v2

    const-string v1, "xiao"

    const/16 v2, 0x15c

    aput-object v1, v0, v2

    const-string v1, "xie"

    const/16 v2, 0x15d

    aput-object v1, v0, v2

    const-string v1, "xin"

    const/16 v2, 0x15e

    aput-object v1, v0, v2

    const-string v1, "xing"

    const/16 v2, 0x15f

    aput-object v1, v0, v2

    const-string v1, "xiong"

    const/16 v2, 0x160

    aput-object v1, v0, v2

    const-string v1, "xiu"

    const/16 v2, 0x161

    aput-object v1, v0, v2

    const-string v1, "xuan"

    const/16 v2, 0x162

    aput-object v1, v0, v2

    const-string v1, "xue"

    const/16 v2, 0x163

    aput-object v1, v0, v2

    const-string v1, "xun"

    const/16 v2, 0x164

    aput-object v1, v0, v2

    const-string v1, "xv"

    const/16 v2, 0x165

    aput-object v1, v0, v2

    const-string v1, "ya"

    const/16 v2, 0x166

    aput-object v1, v0, v2

    const-string v1, "yan"

    const/16 v2, 0x167

    aput-object v1, v0, v2

    const-string v1, "yang"

    const/16 v2, 0x168

    aput-object v1, v0, v2

    const-string v1, "yao"

    const/16 v2, 0x169

    aput-object v1, v0, v2

    const-string v1, "ye"

    const/16 v2, 0x16a

    aput-object v1, v0, v2

    const-string v1, "yi"

    const/16 v2, 0x16b

    aput-object v1, v0, v2

    const-string v1, "yin"

    const/16 v2, 0x16c

    aput-object v1, v0, v2

    const-string v1, "ying"

    const/16 v2, 0x16d

    aput-object v1, v0, v2

    const-string v1, "yo"

    const/16 v2, 0x16e

    aput-object v1, v0, v2

    const-string v1, "yong"

    const/16 v2, 0x16f

    aput-object v1, v0, v2

    const-string v1, "you"

    const/16 v2, 0x170

    aput-object v1, v0, v2

    const-string v1, "yu"

    const/16 v2, 0x171

    aput-object v1, v0, v2

    const-string v1, "yuan"

    const/16 v2, 0x172

    aput-object v1, v0, v2

    const-string v1, "yue"

    const/16 v2, 0x173

    aput-object v1, v0, v2

    const-string v1, "yun"

    const/16 v2, 0x174

    aput-object v1, v0, v2

    const-string v1, "za"

    const/16 v2, 0x175

    aput-object v1, v0, v2

    const-string v1, "zai"

    const/16 v2, 0x176

    aput-object v1, v0, v2

    const-string v1, "zan"

    const/16 v2, 0x177

    aput-object v1, v0, v2

    const-string v1, "zang"

    const/16 v2, 0x178

    aput-object v1, v0, v2

    const-string v1, "zao"

    const/16 v2, 0x179

    aput-object v1, v0, v2

    const-string v1, "ze"

    const/16 v2, 0x17a

    aput-object v1, v0, v2

    const-string v1, "zei"

    const/16 v2, 0x17b

    aput-object v1, v0, v2

    const-string v1, "zen"

    const/16 v2, 0x17c

    aput-object v1, v0, v2

    const-string v1, "zeng"

    const/16 v2, 0x17d

    aput-object v1, v0, v2

    const-string v1, "zha"

    const/16 v2, 0x17e

    aput-object v1, v0, v2

    const-string v1, "zhai"

    const/16 v2, 0x17f

    aput-object v1, v0, v2

    const-string v1, "zhan"

    const/16 v2, 0x180

    aput-object v1, v0, v2

    const-string v1, "zhang"

    const/16 v2, 0x181

    aput-object v1, v0, v2

    const-string v1, "zhao"

    const/16 v2, 0x182

    aput-object v1, v0, v2

    const-string v1, "zhe"

    const/16 v2, 0x183

    aput-object v1, v0, v2

    const-string v1, "zhei"

    const/16 v2, 0x184

    aput-object v1, v0, v2

    const-string v1, "zhen"

    const/16 v2, 0x185

    aput-object v1, v0, v2

    const-string v1, "zheng"

    const/16 v2, 0x186

    aput-object v1, v0, v2

    const-string v1, "zhi"

    const/16 v2, 0x187

    aput-object v1, v0, v2

    const-string v1, "zhong"

    const/16 v2, 0x188

    aput-object v1, v0, v2

    const-string v1, "zhou"

    const/16 v2, 0x189

    aput-object v1, v0, v2

    const-string v1, "zhu"

    const/16 v2, 0x18a

    aput-object v1, v0, v2

    const-string v1, "zhua"

    const/16 v2, 0x18b

    aput-object v1, v0, v2

    const-string v1, "zhuai"

    const/16 v2, 0x18c

    aput-object v1, v0, v2

    const-string v1, "zhuan"

    const/16 v2, 0x18d

    aput-object v1, v0, v2

    const-string v1, "zhuang"

    const/16 v2, 0x18e

    aput-object v1, v0, v2

    const-string v1, "zhui"

    const/16 v2, 0x18f

    aput-object v1, v0, v2

    const-string v1, "zhun"

    const/16 v2, 0x190

    aput-object v1, v0, v2

    const-string v1, "zhuo"

    const/16 v2, 0x191

    aput-object v1, v0, v2

    const-string v1, "zi"

    const/16 v2, 0x192

    aput-object v1, v0, v2

    const-string v1, "zong"

    const/16 v2, 0x193

    aput-object v1, v0, v2

    const-string v1, "zou"

    const/16 v2, 0x194

    aput-object v1, v0, v2

    const-string v1, "zu"

    const/16 v2, 0x195

    aput-object v1, v0, v2

    const-string v1, "zuan"

    const/16 v2, 0x196

    aput-object v1, v0, v2

    const-string v1, "zui"

    const/16 v2, 0x197

    aput-object v1, v0, v2

    const-string v1, "zun"

    const/16 v2, 0x198

    aput-object v1, v0, v2

    const-string v1, "zuo"

    const/16 v2, 0x199

    aput-object v1, v0, v2

    sput-object v0, Lcom/xiaopeng/speech/common/util/StringUtil;->pinyins:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEncodedString([B)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B

    .line 54
    const-string v0, ""

    .line 56
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 59
    goto :goto_0

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "AIOS-StringUtil"

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isLegalPinyin(Ljava/lang/String;)Z
    .locals 11
    .param p0, "pinyin"    # Ljava/lang/String;

    .line 111
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "pinyinArr":[Ljava/lang/String;
    const/4 v1, 0x1

    .line 114
    .local v1, "isLegal":Z
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v1

    move v1, v3

    .end local v1    # "isLegal":Z
    .local v4, "isLegal":Z
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v5, v0, v1

    .line 115
    .local v5, "py":Ljava/lang/String;
    move v6, v3

    .line 116
    .local v6, "index":I
    :goto_1
    sget-object v7, Lcom/xiaopeng/speech/common/util/StringUtil;->pinyins:[Ljava/lang/String;

    array-length v7, v7

    if-ge v6, v7, :cond_1

    .line 117
    sget-object v7, Lcom/xiaopeng/speech/common/util/StringUtil;->pinyins:[Ljava/lang/String;

    aget-object v7, v7, v6

    .line 118
    .local v7, "pyLegal":Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 119
    const-string v8, "AIOS-StringUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Legal pinyin: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/speech/common/util/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    goto :goto_2

    .line 116
    .end local v7    # "pyLegal":Ljava/lang/String;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 123
    :cond_1
    :goto_2
    sget-object v7, Lcom/xiaopeng/speech/common/util/StringUtil;->pinyins:[Ljava/lang/String;

    array-length v7, v7

    if-lt v6, v7, :cond_2

    .line 124
    const/4 v4, 0x0

    .line 114
    .end local v5    # "py":Ljava/lang/String;
    .end local v6    # "index":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_3
    return v4
.end method

.method public static isUrl(Ljava/lang/String;)Z
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .line 97
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    const-string v0, "^(http|www|https)?(://)?(\\w+(-\\w+)*)(\\.(\\w+(-\\w+)*))*((:\\d+)?)(/(\\w+(-\\w+)*))*(\\.?(\\w)*)(\\?)?(((\\w*%)*(\\w*\\?)*(\\w*:)*(\\w*\\+)*(\\w*\\.)*(\\w*&)*(\\w*-)*(\\w*=)*(\\w*%)*(\\w*\\?)*(\\w*:)*(\\w*\\+)*(\\w*\\.)*(\\w*&)*(\\w*-)*(\\w*=)*)*(\\w*)*)$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 99
    .local v0, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    return v1

    .line 101
    .end local v0    # "p":Ljava/util/regex/Pattern;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static joinJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3
    .param p0, "source"    # Lorg/json/JSONObject;
    .param p1, "append"    # Lorg/json/JSONObject;

    .line 72
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 77
    .local v0, "iterator":Ljava/util/Iterator;
    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 79
    .local v1, "itemName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 80
    .local v2, "object":Ljava/lang/Object;
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v1    # "itemName":Ljava/lang/String;
    .end local v2    # "object":Ljava/lang/Object;
    goto :goto_0

    .line 84
    :cond_0
    goto :goto_1

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 87
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    return-object p0
.end method
