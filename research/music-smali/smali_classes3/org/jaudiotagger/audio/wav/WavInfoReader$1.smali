.class synthetic Lorg/jaudiotagger/audio/wav/WavInfoReader$1;
.super Ljava/lang/Object;
.source "WavInfoReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jaudiotagger/audio/wav/WavInfoReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$jaudiotagger$audio$wav$WavChunkType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 115
    invoke-static {}, Lorg/jaudiotagger/audio/wav/WavChunkType;->values()[Lorg/jaudiotagger/audio/wav/WavChunkType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/jaudiotagger/audio/wav/WavInfoReader$1;->$SwitchMap$org$jaudiotagger$audio$wav$WavChunkType:[I

    :try_start_0
    sget-object v0, Lorg/jaudiotagger/audio/wav/WavInfoReader$1;->$SwitchMap$org$jaudiotagger$audio$wav$WavChunkType:[I

    sget-object v1, Lorg/jaudiotagger/audio/wav/WavChunkType;->FACT:Lorg/jaudiotagger/audio/wav/WavChunkType;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/wav/WavChunkType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/jaudiotagger/audio/wav/WavInfoReader$1;->$SwitchMap$org$jaudiotagger$audio$wav$WavChunkType:[I

    sget-object v1, Lorg/jaudiotagger/audio/wav/WavChunkType;->DATA:Lorg/jaudiotagger/audio/wav/WavChunkType;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/wav/WavChunkType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lorg/jaudiotagger/audio/wav/WavInfoReader$1;->$SwitchMap$org$jaudiotagger$audio$wav$WavChunkType:[I

    sget-object v1, Lorg/jaudiotagger/audio/wav/WavChunkType;->FORMAT:Lorg/jaudiotagger/audio/wav/WavChunkType;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/wav/WavChunkType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lorg/jaudiotagger/audio/wav/WavInfoReader$1;->$SwitchMap$org$jaudiotagger$audio$wav$WavChunkType:[I

    sget-object v1, Lorg/jaudiotagger/audio/wav/WavChunkType;->CORRUPT_LIST:Lorg/jaudiotagger/audio/wav/WavChunkType;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/wav/WavChunkType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
