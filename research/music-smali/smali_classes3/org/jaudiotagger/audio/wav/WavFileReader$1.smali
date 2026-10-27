.class synthetic Lorg/jaudiotagger/audio/wav/WavFileReader$1;
.super Ljava/lang/Object;
.source "WavFileReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jaudiotagger/audio/wav/WavFileReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$jaudiotagger$audio$wav$WavOptions:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    invoke-static {}, Lorg/jaudiotagger/audio/wav/WavOptions;->values()[Lorg/jaudiotagger/audio/wav/WavOptions;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/jaudiotagger/audio/wav/WavFileReader$1;->$SwitchMap$org$jaudiotagger$audio$wav$WavOptions:[I

    :try_start_0
    sget-object v0, Lorg/jaudiotagger/audio/wav/WavFileReader$1;->$SwitchMap$org$jaudiotagger$audio$wav$WavOptions:[I

    sget-object v1, Lorg/jaudiotagger/audio/wav/WavOptions;->READ_ID3_ONLY_AND_SYNC:Lorg/jaudiotagger/audio/wav/WavOptions;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/wav/WavOptions;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/jaudiotagger/audio/wav/WavFileReader$1;->$SwitchMap$org$jaudiotagger$audio$wav$WavOptions:[I

    sget-object v1, Lorg/jaudiotagger/audio/wav/WavOptions;->READ_ID3_UNLESS_ONLY_INFO_AND_SYNC:Lorg/jaudiotagger/audio/wav/WavOptions;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/wav/WavOptions;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lorg/jaudiotagger/audio/wav/WavFileReader$1;->$SwitchMap$org$jaudiotagger$audio$wav$WavOptions:[I

    sget-object v1, Lorg/jaudiotagger/audio/wav/WavOptions;->READ_INFO_ONLY_AND_SYNC:Lorg/jaudiotagger/audio/wav/WavOptions;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/wav/WavOptions;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lorg/jaudiotagger/audio/wav/WavFileReader$1;->$SwitchMap$org$jaudiotagger$audio$wav$WavOptions:[I

    sget-object v1, Lorg/jaudiotagger/audio/wav/WavOptions;->READ_INFO_UNLESS_ONLY_ID3_AND_SYNC:Lorg/jaudiotagger/audio/wav/WavOptions;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/wav/WavOptions;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
