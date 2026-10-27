.class public Lorg/jaudiotagger/audio/wav/WavFileReader;
.super Lorg/jaudiotagger/audio/generic/AudioFileReader2;
.source "WavFileReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AudioFileReader2;-><init>()V

    return-void
.end method


# virtual methods
.method protected getEncodingInfo(Ljava/io/File;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;
    .locals 2

    .line 43
    new-instance v0, Lorg/jaudiotagger/audio/wav/WavInfoReader;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/wav/WavInfoReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/wav/WavInfoReader;->read(Ljava/io/File;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;

    move-result-object p1

    return-object p1
.end method

.method protected getTag(Ljava/io/File;)Lorg/jaudiotagger/tag/Tag;
    .locals 2

    .line 49
    new-instance v0, Lorg/jaudiotagger/audio/wav/WavTagReader;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/wav/WavTagReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/wav/WavTagReader;->read(Ljava/io/File;)Lorg/jaudiotagger/tag/wav/WavTag;

    move-result-object p1

    .line 50
    sget-object v0, Lorg/jaudiotagger/audio/wav/WavFileReader$1;->$SwitchMap$org$jaudiotagger$audio$wav$WavOptions:[I

    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getWavOptions()Lorg/jaudiotagger/audio/wav/WavOptions;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/wav/WavOptions;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavTag;->syncTagsAfterRead()V

    :goto_0
    return-object p1
.end method
