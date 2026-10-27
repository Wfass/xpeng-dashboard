.class public final enum Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;
.super Ljava/lang/Enum;
.source "AiffChunkType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

.field public static final enum ANNOTATION:Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

.field public static final enum APPLICATION:Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

.field public static final enum AUTHOR:Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

.field private static final CODE_TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum COMMENTS:Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

.field public static final enum COMMON:Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

.field public static final enum COPYRIGHT:Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

.field public static final enum CORRUPT_TAG_EARLY:Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

.field public static final enum CORRUPT_TAG_LATE:Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

.field public static final enum FORMAT_VERSION:Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

.field public static final enum NAME:Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

.field public static final enum SOUND:Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

.field public static final enum TAG:Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;


# instance fields
.field private code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 13
    new-instance v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    const/4 v1, 0x0

    const-string v2, "FORMAT_VERSION"

    const-string v3, "FVER"

    invoke-direct {v0, v2, v1, v3}, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->FORMAT_VERSION:Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    .line 14
    new-instance v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    const/4 v2, 0x1

    const-string v3, "APPLICATION"

    const-string v4, "APPL"

    invoke-direct {v0, v3, v2, v4}, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->APPLICATION:Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    .line 15
    new-instance v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    const/4 v3, 0x2

    const-string v4, "SOUND"

    const-string v5, "SSND"

    invoke-direct {v0, v4, v3, v5}, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->SOUND:Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    .line 16
    new-instance v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    const/4 v4, 0x3

    const-string v5, "COMMON"

    const-string v6, "COMM"

    invoke-direct {v0, v5, v4, v6}, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->COMMON:Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    .line 17
    new-instance v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    const/4 v5, 0x4

    const-string v6, "COMMENTS"

    const-string v7, "COMT"

    invoke-direct {v0, v6, v5, v7}, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->COMMENTS:Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    .line 18
    new-instance v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    const/4 v6, 0x5

    const-string v7, "NAME"

    invoke-direct {v0, v7, v6, v7}, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->NAME:Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    .line 19
    new-instance v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    const/4 v7, 0x6

    const-string v8, "AUTHOR"

    const-string v9, "AUTH"

    invoke-direct {v0, v8, v7, v9}, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->AUTHOR:Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    .line 20
    new-instance v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    const/4 v8, 0x7

    const-string v9, "COPYRIGHT"

    const-string v10, "(c) "

    invoke-direct {v0, v9, v8, v10}, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->COPYRIGHT:Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    .line 21
    new-instance v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    const/16 v9, 0x8

    const-string v10, "ANNOTATION"

    const-string v11, "ANNO"

    invoke-direct {v0, v10, v9, v11}, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->ANNOTATION:Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    .line 22
    new-instance v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    const/16 v10, 0x9

    const-string v11, "TAG"

    const-string v12, "ID3 "

    invoke-direct {v0, v11, v10, v12}, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->TAG:Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    .line 23
    new-instance v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    const/16 v11, 0xa

    const-string v12, "CORRUPT_TAG_LATE"

    const-string v13, "D3 \u0000"

    invoke-direct {v0, v12, v11, v13}, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->CORRUPT_TAG_LATE:Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    .line 24
    new-instance v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    const/16 v12, 0xb

    const-string v13, "CORRUPT_TAG_EARLY"

    const-string v14, "\u0000ID3"

    invoke-direct {v0, v13, v12, v14}, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->CORRUPT_TAG_EARLY:Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    const/16 v0, 0xc

    .line 11
    new-array v0, v0, [Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    sget-object v13, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->FORMAT_VERSION:Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    aput-object v13, v0, v1

    sget-object v1, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->APPLICATION:Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->SOUND:Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->COMMON:Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->COMMENTS:Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->NAME:Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->AUTHOR:Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    aput-object v1, v0, v7

    sget-object v1, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->COPYRIGHT:Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    aput-object v1, v0, v8

    sget-object v1, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->ANNOTATION:Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    aput-object v1, v0, v9

    sget-object v1, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->TAG:Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    aput-object v1, v0, v10

    sget-object v1, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->CORRUPT_TAG_LATE:Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    aput-object v1, v0, v11

    sget-object v1, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->CORRUPT_TAG_EARLY:Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    aput-object v1, v0, v12

    sput-object v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->$VALUES:[Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->CODE_TYPE_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-object p3, p0, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->code:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized get(Ljava/lang/String;)Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;
    .locals 7

    const-class v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->CODE_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-static {}, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->values()[Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 46
    sget-object v5, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->CODE_TYPE_MAP:Ljava/util/Map;

    invoke-virtual {v4}, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 49
    :cond_0
    sget-object v1, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->CODE_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;
    .locals 1

    .line 11
    const-class v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    return-object p0
.end method

.method public static values()[Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;
    .locals 1

    .line 11
    sget-object v0, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->$VALUES:[Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    invoke-virtual {v0}, [Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->code:Ljava/lang/String;

    return-object v0
.end method
