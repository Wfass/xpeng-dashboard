.class public final enum Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;
.super Ljava/lang/Enum;
.source "WavInfoIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum ALBUM:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum ALBUM_ARTIST:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum ALBUM_GAIN:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum ARTIST:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

.field private static final CODE_TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum COMMENTS:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum COMPOSER:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum CONDUCTOR:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum COPYRIGHT:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum ENCODER:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

.field private static final FIELDKEY_TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jaudiotagger/tag/FieldKey;",
            "Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum GENRE:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum ISRC:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum LABEL:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum LYRICIST:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum RATING:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum TITLE:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum TRACKNO:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum TRACK_GAIN:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum TWONKY_TRACKNO:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum YEAR:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;


# instance fields
.field private code:Ljava/lang/String;

.field private fieldKey:Lorg/jaudiotagger/tag/FieldKey;

.field private preferredWriteOrder:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 13
    new-instance v6, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v4, Lorg/jaudiotagger/tag/FieldKey;->ARTIST:Lorg/jaudiotagger/tag/FieldKey;

    const-string v1, "ARTIST"

    const/4 v2, 0x0

    const-string v3, "IART"

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jaudiotagger/tag/FieldKey;I)V

    sput-object v6, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->ARTIST:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    .line 14
    new-instance v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v11, Lorg/jaudiotagger/tag/FieldKey;->ALBUM:Lorg/jaudiotagger/tag/FieldKey;

    const-string v8, "ALBUM"

    const/4 v9, 0x1

    const-string v10, "IPRD"

    const/4 v12, 0x2

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jaudiotagger/tag/FieldKey;I)V

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->ALBUM:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    .line 15
    new-instance v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v5, Lorg/jaudiotagger/tag/FieldKey;->TITLE:Lorg/jaudiotagger/tag/FieldKey;

    const-string v2, "TITLE"

    const/4 v3, 0x2

    const-string v4, "INAM"

    const/4 v6, 0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jaudiotagger/tag/FieldKey;I)V

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->TITLE:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    .line 16
    new-instance v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v11, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    const-string v8, "TRACKNO"

    const/4 v9, 0x3

    const-string v10, "ITRK"

    const/4 v12, 0x4

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jaudiotagger/tag/FieldKey;I)V

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->TRACKNO:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    .line 17
    new-instance v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v5, Lorg/jaudiotagger/tag/FieldKey;->YEAR:Lorg/jaudiotagger/tag/FieldKey;

    const-string v2, "YEAR"

    const/4 v3, 0x4

    const-string v4, "ICRD"

    const/4 v6, 0x5

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jaudiotagger/tag/FieldKey;I)V

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->YEAR:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    .line 18
    new-instance v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v11, Lorg/jaudiotagger/tag/FieldKey;->GENRE:Lorg/jaudiotagger/tag/FieldKey;

    const-string v8, "GENRE"

    const/4 v9, 0x5

    const-string v10, "IGNR"

    const/4 v12, 0x6

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jaudiotagger/tag/FieldKey;I)V

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->GENRE:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    .line 20
    new-instance v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v5, Lorg/jaudiotagger/tag/FieldKey;->ALBUM_ARTIST:Lorg/jaudiotagger/tag/FieldKey;

    const-string v2, "ALBUM_ARTIST"

    const/4 v3, 0x6

    const-string v4, "iaar"

    const/4 v6, 0x7

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jaudiotagger/tag/FieldKey;I)V

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->ALBUM_ARTIST:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    .line 21
    new-instance v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v11, Lorg/jaudiotagger/tag/FieldKey;->COMMENT:Lorg/jaudiotagger/tag/FieldKey;

    const-string v8, "COMMENTS"

    const/4 v9, 0x7

    const-string v10, "ICMT"

    const/16 v12, 0x8

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jaudiotagger/tag/FieldKey;I)V

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->COMMENTS:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    .line 22
    new-instance v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v5, Lorg/jaudiotagger/tag/FieldKey;->COMPOSER:Lorg/jaudiotagger/tag/FieldKey;

    const-string v2, "COMPOSER"

    const/16 v3, 0x8

    const-string v4, "IMUS"

    const/16 v6, 0x9

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jaudiotagger/tag/FieldKey;I)V

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->COMPOSER:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    .line 23
    new-instance v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v11, Lorg/jaudiotagger/tag/FieldKey;->CONDUCTOR:Lorg/jaudiotagger/tag/FieldKey;

    const-string v8, "CONDUCTOR"

    const/16 v9, 0x9

    const-string v10, "ITCH"

    const/16 v12, 0xa

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jaudiotagger/tag/FieldKey;I)V

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->CONDUCTOR:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    .line 24
    new-instance v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v5, Lorg/jaudiotagger/tag/FieldKey;->LYRICIST:Lorg/jaudiotagger/tag/FieldKey;

    const-string v2, "LYRICIST"

    const/16 v3, 0xa

    const-string v4, "IWRI"

    const/16 v6, 0xb

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jaudiotagger/tag/FieldKey;I)V

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->LYRICIST:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    .line 25
    new-instance v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v11, Lorg/jaudiotagger/tag/FieldKey;->ENCODER:Lorg/jaudiotagger/tag/FieldKey;

    const-string v8, "ENCODER"

    const/16 v9, 0xb

    const-string v10, "ISFT"

    const/16 v12, 0xc

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jaudiotagger/tag/FieldKey;I)V

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->ENCODER:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    .line 26
    new-instance v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v5, Lorg/jaudiotagger/tag/FieldKey;->RATING:Lorg/jaudiotagger/tag/FieldKey;

    const-string v2, "RATING"

    const/16 v3, 0xc

    const-string v4, "IRTD"

    const/16 v6, 0xd

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jaudiotagger/tag/FieldKey;I)V

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->RATING:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    .line 27
    new-instance v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v11, Lorg/jaudiotagger/tag/FieldKey;->ISRC:Lorg/jaudiotagger/tag/FieldKey;

    const-string v8, "ISRC"

    const/16 v9, 0xd

    const-string v10, "ISRC"

    const/16 v12, 0xe

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jaudiotagger/tag/FieldKey;I)V

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->ISRC:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    .line 28
    new-instance v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v5, Lorg/jaudiotagger/tag/FieldKey;->RECORD_LABEL:Lorg/jaudiotagger/tag/FieldKey;

    const-string v2, "LABEL"

    const/16 v3, 0xe

    const-string v4, "ICMS"

    const/16 v6, 0xf

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jaudiotagger/tag/FieldKey;I)V

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->LABEL:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    .line 29
    new-instance v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    const-string v8, "TRACK_GAIN"

    const/16 v9, 0xf

    const-string v10, "ITGL"

    const/4 v11, 0x0

    const/16 v12, 0x10

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jaudiotagger/tag/FieldKey;I)V

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->TRACK_GAIN:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    .line 30
    new-instance v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    const-string v2, "ALBUM_GAIN"

    const/16 v3, 0x10

    const-string v4, "IAGL"

    const/4 v5, 0x0

    const/16 v6, 0x11

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jaudiotagger/tag/FieldKey;I)V

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->ALBUM_GAIN:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    .line 31
    new-instance v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    const-string v8, "COPYRIGHT"

    const/16 v9, 0x11

    const-string v10, "ICOP"

    const/16 v12, 0x12

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jaudiotagger/tag/FieldKey;I)V

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->COPYRIGHT:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    .line 32
    new-instance v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    const-string v2, "TWONKY_TRACKNO"

    const/16 v3, 0x12

    const-string v4, "itrk"

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jaudiotagger/tag/FieldKey;I)V

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->TWONKY_TRACKNO:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    const/16 v0, 0x13

    .line 11
    new-array v0, v0, [Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v1, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->ARTIST:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->ALBUM:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->TITLE:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->TRACKNO:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->YEAR:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->GENRE:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->ALBUM_ARTIST:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->COMMENTS:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->COMPOSER:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->CONDUCTOR:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->LYRICIST:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->ENCODER:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->RATING:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->ISRC:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->LABEL:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->TRACK_GAIN:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->ALBUM_GAIN:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->COPYRIGHT:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->TWONKY_TRACKNO:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->$VALUES:[Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->CODE_TYPE_MAP:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->FIELDKEY_TYPE_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/jaudiotagger/tag/FieldKey;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jaudiotagger/tag/FieldKey;",
            "I)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput-object p3, p0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->code:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->fieldKey:Lorg/jaudiotagger/tag/FieldKey;

    .line 44
    iput p5, p0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->preferredWriteOrder:I

    return-void
.end method

.method public static declared-synchronized getByByFieldKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;
    .locals 7

    const-class v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    monitor-enter v0

    .line 88
    :try_start_0
    sget-object v1, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->FIELDKEY_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    invoke-static {}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->values()[Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 92
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->getFieldKey()Lorg/jaudiotagger/tag/FieldKey;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 94
    sget-object v5, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->FIELDKEY_TYPE_MAP:Ljava/util/Map;

    invoke-virtual {v4}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->getFieldKey()Lorg/jaudiotagger/tag/FieldKey;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 98
    :cond_1
    sget-object v1, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->FIELDKEY_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getByCode(Ljava/lang/String;)Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;
    .locals 7

    const-class v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-object v1, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->CODE_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-static {}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->values()[Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 74
    sget-object v5, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->CODE_TYPE_MAP:Ljava/util/Map;

    invoke-virtual {v4}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 77
    :cond_0
    sget-object v1, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->CODE_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;
    .locals 1

    .line 11
    const-class v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    return-object p0
.end method

.method public static values()[Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;
    .locals 1

    .line 11
    sget-object v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->$VALUES:[Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    invoke-virtual {v0}, [Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldKey()Lorg/jaudiotagger/tag/FieldKey;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->fieldKey:Lorg/jaudiotagger/tag/FieldKey;

    return-object v0
.end method

.method public getPreferredWriteOrder()I
    .locals 1

    .line 59
    iget v0, p0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->preferredWriteOrder:I

    return v0
.end method
