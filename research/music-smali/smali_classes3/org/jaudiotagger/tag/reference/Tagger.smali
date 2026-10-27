.class public final enum Lorg/jaudiotagger/tag/reference/Tagger;
.super Ljava/lang/Enum;
.source "Tagger.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/tag/reference/Tagger;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/tag/reference/Tagger;

.field public static final enum BEATUNES:Lorg/jaudiotagger/tag/reference/Tagger;

.field public static final enum FOOBAR2000:Lorg/jaudiotagger/tag/reference/Tagger;

.field public static final enum GODFATHER:Lorg/jaudiotagger/tag/reference/Tagger;

.field public static final enum ITUNES:Lorg/jaudiotagger/tag/reference/Tagger;

.field public static final enum JAIKOZ:Lorg/jaudiotagger/tag/reference/Tagger;

.field public static final enum JRIVER:Lorg/jaudiotagger/tag/reference/Tagger;

.field public static final enum MEDIAPLAYER:Lorg/jaudiotagger/tag/reference/Tagger;

.field public static final enum MEDIA_MONKEY:Lorg/jaudiotagger/tag/reference/Tagger;

.field public static final enum MP3TAG:Lorg/jaudiotagger/tag/reference/Tagger;

.field public static final enum MUSICHI:Lorg/jaudiotagger/tag/reference/Tagger;

.field public static final enum PICARD:Lorg/jaudiotagger/tag/reference/Tagger;

.field public static final enum SONGBIRD:Lorg/jaudiotagger/tag/reference/Tagger;

.field public static final enum TAGSCANNER:Lorg/jaudiotagger/tag/reference/Tagger;

.field public static final enum TAG_AND_RENAME:Lorg/jaudiotagger/tag/reference/Tagger;

.field public static final enum WINAMP:Lorg/jaudiotagger/tag/reference/Tagger;

.field public static final enum XIPH:Lorg/jaudiotagger/tag/reference/Tagger;


# instance fields
.field private compatability:I

.field private desc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 11
    new-instance v0, Lorg/jaudiotagger/tag/reference/Tagger;

    const/4 v1, 0x0

    const-string v2, "ITUNES"

    const-string v3, "iTunes"

    invoke-direct {v0, v2, v1, v1, v3}, Lorg/jaudiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/tag/reference/Tagger;->ITUNES:Lorg/jaudiotagger/tag/reference/Tagger;

    .line 12
    new-instance v0, Lorg/jaudiotagger/tag/reference/Tagger;

    const/4 v2, 0x1

    const-string v3, "MEDIAPLAYER"

    const-string v4, "Windows Media Player"

    invoke-direct {v0, v3, v2, v2, v4}, Lorg/jaudiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/tag/reference/Tagger;->MEDIAPLAYER:Lorg/jaudiotagger/tag/reference/Tagger;

    .line 13
    new-instance v0, Lorg/jaudiotagger/tag/reference/Tagger;

    const/4 v3, 0x2

    const-string v4, "WINAMP"

    const-string v5, "Winamp"

    invoke-direct {v0, v4, v3, v3, v5}, Lorg/jaudiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/tag/reference/Tagger;->WINAMP:Lorg/jaudiotagger/tag/reference/Tagger;

    .line 14
    new-instance v0, Lorg/jaudiotagger/tag/reference/Tagger;

    const/4 v4, 0x3

    const-string v5, "MP3TAG"

    const-string v6, "Mp3 Tag"

    invoke-direct {v0, v5, v4, v4, v6}, Lorg/jaudiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/tag/reference/Tagger;->MP3TAG:Lorg/jaudiotagger/tag/reference/Tagger;

    .line 15
    new-instance v0, Lorg/jaudiotagger/tag/reference/Tagger;

    const/4 v5, 0x4

    const-string v6, "MEDIA_MONKEY"

    const-string v7, "Media Monkey"

    invoke-direct {v0, v6, v5, v5, v7}, Lorg/jaudiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/tag/reference/Tagger;->MEDIA_MONKEY:Lorg/jaudiotagger/tag/reference/Tagger;

    .line 16
    new-instance v0, Lorg/jaudiotagger/tag/reference/Tagger;

    const/4 v6, 0x5

    const-string v7, "TAG_AND_RENAME"

    const-string v8, "Tag and Rename"

    invoke-direct {v0, v7, v6, v6, v8}, Lorg/jaudiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/tag/reference/Tagger;->TAG_AND_RENAME:Lorg/jaudiotagger/tag/reference/Tagger;

    .line 17
    new-instance v0, Lorg/jaudiotagger/tag/reference/Tagger;

    const/4 v7, 0x6

    const-string v8, "PICARD"

    const-string v9, "Picard"

    invoke-direct {v0, v8, v7, v7, v9}, Lorg/jaudiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/tag/reference/Tagger;->PICARD:Lorg/jaudiotagger/tag/reference/Tagger;

    .line 18
    new-instance v0, Lorg/jaudiotagger/tag/reference/Tagger;

    const/4 v8, 0x7

    const-string v9, "JAIKOZ"

    const-string v10, "Jaikoz"

    invoke-direct {v0, v9, v8, v8, v10}, Lorg/jaudiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/tag/reference/Tagger;->JAIKOZ:Lorg/jaudiotagger/tag/reference/Tagger;

    .line 19
    new-instance v0, Lorg/jaudiotagger/tag/reference/Tagger;

    const/16 v9, 0x8

    const-string v10, "TAGSCANNER"

    const-string v11, "Tagscanner"

    invoke-direct {v0, v10, v9, v9, v11}, Lorg/jaudiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/tag/reference/Tagger;->TAGSCANNER:Lorg/jaudiotagger/tag/reference/Tagger;

    .line 20
    new-instance v0, Lorg/jaudiotagger/tag/reference/Tagger;

    const/16 v10, 0x9

    const-string v11, "XIPH"

    const-string v12, "Xiph"

    invoke-direct {v0, v11, v10, v10, v12}, Lorg/jaudiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/tag/reference/Tagger;->XIPH:Lorg/jaudiotagger/tag/reference/Tagger;

    .line 21
    new-instance v0, Lorg/jaudiotagger/tag/reference/Tagger;

    const/16 v11, 0xa

    const-string v12, "FOOBAR2000"

    const-string v13, "Foobar2000"

    invoke-direct {v0, v12, v11, v11, v13}, Lorg/jaudiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/tag/reference/Tagger;->FOOBAR2000:Lorg/jaudiotagger/tag/reference/Tagger;

    .line 22
    new-instance v0, Lorg/jaudiotagger/tag/reference/Tagger;

    const/16 v12, 0xb

    const-string v13, "BEATUNES"

    const-string v14, "Beatunes"

    invoke-direct {v0, v13, v12, v12, v14}, Lorg/jaudiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/tag/reference/Tagger;->BEATUNES:Lorg/jaudiotagger/tag/reference/Tagger;

    .line 23
    new-instance v0, Lorg/jaudiotagger/tag/reference/Tagger;

    const/16 v13, 0xc

    const-string v14, "SONGBIRD"

    const-string v15, "Songbird"

    invoke-direct {v0, v14, v13, v13, v15}, Lorg/jaudiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/tag/reference/Tagger;->SONGBIRD:Lorg/jaudiotagger/tag/reference/Tagger;

    .line 24
    new-instance v0, Lorg/jaudiotagger/tag/reference/Tagger;

    const/16 v14, 0xd

    const-string v15, "JRIVER"

    const-string v13, "JRiver"

    invoke-direct {v0, v15, v14, v14, v13}, Lorg/jaudiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/tag/reference/Tagger;->JRIVER:Lorg/jaudiotagger/tag/reference/Tagger;

    .line 25
    new-instance v0, Lorg/jaudiotagger/tag/reference/Tagger;

    const/16 v13, 0xe

    const-string v15, "GODFATHER"

    const-string v14, "The Godfather"

    invoke-direct {v0, v15, v13, v13, v14}, Lorg/jaudiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/tag/reference/Tagger;->GODFATHER:Lorg/jaudiotagger/tag/reference/Tagger;

    .line 26
    new-instance v0, Lorg/jaudiotagger/tag/reference/Tagger;

    const-string v14, "MUSICHI"

    const/16 v15, 0xf

    const/16 v13, 0xf

    const-string v12, "Musichi"

    invoke-direct {v0, v14, v15, v13, v12}, Lorg/jaudiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/tag/reference/Tagger;->MUSICHI:Lorg/jaudiotagger/tag/reference/Tagger;

    const/16 v0, 0x10

    .line 9
    new-array v0, v0, [Lorg/jaudiotagger/tag/reference/Tagger;

    sget-object v12, Lorg/jaudiotagger/tag/reference/Tagger;->ITUNES:Lorg/jaudiotagger/tag/reference/Tagger;

    aput-object v12, v0, v1

    sget-object v1, Lorg/jaudiotagger/tag/reference/Tagger;->MEDIAPLAYER:Lorg/jaudiotagger/tag/reference/Tagger;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jaudiotagger/tag/reference/Tagger;->WINAMP:Lorg/jaudiotagger/tag/reference/Tagger;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jaudiotagger/tag/reference/Tagger;->MP3TAG:Lorg/jaudiotagger/tag/reference/Tagger;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jaudiotagger/tag/reference/Tagger;->MEDIA_MONKEY:Lorg/jaudiotagger/tag/reference/Tagger;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jaudiotagger/tag/reference/Tagger;->TAG_AND_RENAME:Lorg/jaudiotagger/tag/reference/Tagger;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jaudiotagger/tag/reference/Tagger;->PICARD:Lorg/jaudiotagger/tag/reference/Tagger;

    aput-object v1, v0, v7

    sget-object v1, Lorg/jaudiotagger/tag/reference/Tagger;->JAIKOZ:Lorg/jaudiotagger/tag/reference/Tagger;

    aput-object v1, v0, v8

    sget-object v1, Lorg/jaudiotagger/tag/reference/Tagger;->TAGSCANNER:Lorg/jaudiotagger/tag/reference/Tagger;

    aput-object v1, v0, v9

    sget-object v1, Lorg/jaudiotagger/tag/reference/Tagger;->XIPH:Lorg/jaudiotagger/tag/reference/Tagger;

    aput-object v1, v0, v10

    sget-object v1, Lorg/jaudiotagger/tag/reference/Tagger;->FOOBAR2000:Lorg/jaudiotagger/tag/reference/Tagger;

    aput-object v1, v0, v11

    sget-object v1, Lorg/jaudiotagger/tag/reference/Tagger;->BEATUNES:Lorg/jaudiotagger/tag/reference/Tagger;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lorg/jaudiotagger/tag/reference/Tagger;->SONGBIRD:Lorg/jaudiotagger/tag/reference/Tagger;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lorg/jaudiotagger/tag/reference/Tagger;->JRIVER:Lorg/jaudiotagger/tag/reference/Tagger;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/jaudiotagger/tag/reference/Tagger;->GODFATHER:Lorg/jaudiotagger/tag/reference/Tagger;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lorg/jaudiotagger/tag/reference/Tagger;->MUSICHI:Lorg/jaudiotagger/tag/reference/Tagger;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lorg/jaudiotagger/tag/reference/Tagger;->$VALUES:[Lorg/jaudiotagger/tag/reference/Tagger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput p3, p0, Lorg/jaudiotagger/tag/reference/Tagger;->compatability:I

    .line 35
    iput-object p4, p0, Lorg/jaudiotagger/tag/reference/Tagger;->desc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/tag/reference/Tagger;
    .locals 1

    .line 9
    const-class v0, Lorg/jaudiotagger/tag/reference/Tagger;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/tag/reference/Tagger;

    return-object p0
.end method

.method public static values()[Lorg/jaudiotagger/tag/reference/Tagger;
    .locals 1

    .line 9
    sget-object v0, Lorg/jaudiotagger/tag/reference/Tagger;->$VALUES:[Lorg/jaudiotagger/tag/reference/Tagger;

    invoke-virtual {v0}, [Lorg/jaudiotagger/tag/reference/Tagger;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jaudiotagger/tag/reference/Tagger;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/Tagger;->desc:Ljava/lang/String;

    return-object v0
.end method
