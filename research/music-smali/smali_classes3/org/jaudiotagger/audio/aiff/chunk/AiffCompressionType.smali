.class public final enum Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;
.super Ljava/lang/Enum;
.source "AiffCompressionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

.field public static final enum ALAW:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

.field public static final enum FL32:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

.field public static final enum IN24:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

.field public static final enum IN32:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

.field public static final enum MAC3:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

.field public static final enum MAC6:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

.field public static final enum NONE:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

.field public static final enum RAW:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

.field public static final enum SOWT:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

.field public static final enum TWOS:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

.field public static final enum ULAW:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

.field public static final enum alaw:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

.field public static final enum fl32:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

.field public static final enum ll64:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum rt24:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

.field public static final enum rt29:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

.field public static final enum ulaw:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;


# instance fields
.field private final code:Ljava/lang/String;

.field private final compression:Ljava/lang/String;

.field private final dataType:Ljava/lang/String;

.field private final isLossless:Z

.field private final provider:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 15
    new-instance v8, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const-string v3, "NONE"

    const-string v4, "not compressed"

    const-string v5, "big-endian"

    const-string v6, "Apple"

    const/4 v7, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v8, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->NONE:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    .line 16
    new-instance v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    const-string v10, "RAW"

    const/4 v11, 0x1

    const-string v12, "raw "

    const-string v13, "PCM 8-bit"

    const-string v14, "offset-binary"

    const-string v15, "Apple"

    const/16 v16, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->RAW:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    .line 17
    new-instance v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    const-string v2, "TWOS"

    const/4 v3, 0x2

    const-string v4, "twos"

    const-string v5, "PCM 16-bit"

    const-string v6, "twos-complement little-endian"

    const-string v7, "Apple"

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->TWOS:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    .line 18
    new-instance v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    const-string v10, "SOWT"

    const/4 v11, 0x3

    const-string v12, "sowt"

    const-string v13, "not compressed"

    const-string v14, "little-endian"

    const-string v15, "Apple"

    const/16 v16, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->SOWT:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    .line 19
    new-instance v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    const-string v2, "fl32"

    const/4 v3, 0x4

    const-string v4, "fl32"

    const-string v5, "PCM 32-bit"

    const-string v6, "floating point,"

    const-string v7, "Apple"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->fl32:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    .line 20
    new-instance v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    const-string v10, "ll64"

    const/4 v11, 0x5

    const-string v12, "fl64"

    const-string v13, "PCM 64-bit"

    const-string v14, "floating point"

    const-string v15, "Apple"

    const/16 v16, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->ll64:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    .line 21
    new-instance v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    const-string v2, "IN24"

    const/4 v3, 0x6

    const-string v4, "in24"

    const-string v5, "PCM 24-bit"

    const-string v6, "integer"

    const-string v7, "Apple"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->IN24:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    .line 22
    new-instance v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    const-string v10, "IN32"

    const/4 v11, 0x7

    const-string v12, "in32"

    const-string v13, "PCM 32-bit"

    const-string v14, "integer"

    const-string v15, "Apple"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->IN32:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    .line 23
    new-instance v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    const-string v2, "alaw"

    const/16 v3, 0x8

    const-string v4, "alaw"

    const-string v5, "Alaw 2:1"

    const-string v6, "8-bit ITU-T G.711 A-law"

    const-string v7, "Apple"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->alaw:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    .line 24
    new-instance v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    const-string v10, "ulaw"

    const/16 v11, 0x9

    const-string v12, "ulaw"

    const-string/jumbo v13, "\u00b5law 2:1"

    const-string v14, "8-bit ITU-T G.711 \u00b5-law"

    const-string v15, "Apple"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->ulaw:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    .line 25
    new-instance v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    const-string v2, "MAC3"

    const/16 v3, 0xa

    const-string v4, "MAC3"

    const-string v5, "MACE 3-to-1"

    const-string v6, ""

    const-string v7, "Apple"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->MAC3:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    .line 26
    new-instance v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    const-string v10, "MAC6"

    const/16 v11, 0xb

    const-string v12, "MAC6"

    const-string v13, "MACE 6-to-1"

    const-string v14, ""

    const-string v15, "Apple"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->MAC6:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    .line 27
    new-instance v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    const-string v2, "ALAW"

    const/16 v3, 0xc

    const-string v4, "ALAW"

    const-string v5, "CCITT G.711 A-law"

    const-string v6, "8-bit ITU-T G.711 A-law (64 kbit/s)"

    const-string v7, "SGI"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->ALAW:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    .line 28
    new-instance v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    const-string v10, "ULAW"

    const/16 v11, 0xd

    const-string v12, "ULAW"

    const-string v13, "CCITT G.711 u-law"

    const-string v14, "8-bit ITU-T G.711 A-law (64 kbit/s)"

    const-string v15, "SGI"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->ULAW:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    .line 29
    new-instance v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    const-string v2, "FL32"

    const/16 v3, 0xe

    const-string v4, "FL32"

    const-string v5, "Float 32"

    const-string v6, "IEEE 32-bit float"

    const-string v7, "SoundHack & Csound"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->FL32:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    .line 30
    new-instance v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    const-string v10, "rt24"

    const/16 v11, 0xf

    const-string v12, "rt24"

    const-string v13, "RT24 50:1"

    const-string v14, ""

    const-string v15, "Voxware"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->rt24:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    .line 31
    new-instance v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    const-string v2, "rt29"

    const/16 v3, 0x10

    const-string v4, "rt29"

    const-string v5, "RT29 50:1"

    const-string v6, ""

    const-string v7, "Voxware"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->rt29:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    const/16 v0, 0x11

    .line 13
    new-array v0, v0, [Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    sget-object v1, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->NONE:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->RAW:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->TWOS:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->SOWT:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sget-object v1, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->fl32:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    sget-object v1, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->ll64:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    sget-object v1, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->IN24:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    const/4 v3, 0x6

    aput-object v1, v0, v3

    sget-object v1, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->IN32:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    const/4 v3, 0x7

    aput-object v1, v0, v3

    sget-object v1, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->alaw:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    const/16 v3, 0x8

    aput-object v1, v0, v3

    sget-object v1, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->ulaw:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    const/16 v3, 0x9

    aput-object v1, v0, v3

    sget-object v1, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->MAC3:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    const/16 v3, 0xa

    aput-object v1, v0, v3

    sget-object v1, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->MAC6:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    const/16 v3, 0xb

    aput-object v1, v0, v3

    sget-object v1, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->ALAW:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    const/16 v3, 0xc

    aput-object v1, v0, v3

    sget-object v1, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->ULAW:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    const/16 v3, 0xd

    aput-object v1, v0, v3

    sget-object v1, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->FL32:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    const/16 v3, 0xe

    aput-object v1, v0, v3

    sget-object v1, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->rt24:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    const/16 v3, 0xf

    aput-object v1, v0, v3

    sget-object v1, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->rt29:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    const/16 v3, 0x10

    aput-object v1, v0, v3

    sput-object v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->$VALUES:[Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->lookup:Ljava/util/Map;

    .line 39
    invoke-static {}, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->values()[Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 41
    sget-object v4, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->lookup:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput-object p3, p0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->code:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->compression:Ljava/lang/String;

    .line 56
    iput-object p5, p0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->dataType:Ljava/lang/String;

    .line 57
    iput-object p6, p0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->provider:Ljava/lang/String;

    .line 58
    iput-boolean p7, p0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->isLossless:Z

    return-void
.end method

.method public static getByCode(Ljava/lang/String;)Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;
    .locals 1

    .line 88
    sget-object v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;
    .locals 1

    .line 13
    const-class v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    return-object p0
.end method

.method public static values()[Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;
    .locals 1

    .line 13
    sget-object v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->$VALUES:[Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    invoke-virtual {v0}, [Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getCompression()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->compression:Ljava/lang/String;

    return-object v0
.end method

.method public getDataType()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->dataType:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public isLossless()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->isLossless:Z

    return v0
.end method
