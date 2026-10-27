.class public Lorg/jaudiotagger/audio/aiff/AiffFileReader;
.super Lorg/jaudiotagger/audio/generic/AudioFileReader2;
.source "AiffFileReader.java"


# instance fields
.field private im:Lorg/jaudiotagger/audio/aiff/AiffTagReader;

.field private ir:Lorg/jaudiotagger/audio/aiff/AiffInfoReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AudioFileReader2;-><init>()V

    .line 15
    new-instance v0, Lorg/jaudiotagger/audio/aiff/AiffInfoReader;

    invoke-direct {v0}, Lorg/jaudiotagger/audio/aiff/AiffInfoReader;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/aiff/AiffFileReader;->ir:Lorg/jaudiotagger/audio/aiff/AiffInfoReader;

    .line 16
    new-instance v0, Lorg/jaudiotagger/audio/aiff/AiffTagReader;

    invoke-direct {v0}, Lorg/jaudiotagger/audio/aiff/AiffTagReader;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/aiff/AiffFileReader;->im:Lorg/jaudiotagger/audio/aiff/AiffTagReader;

    return-void
.end method


# virtual methods
.method protected getEncodingInfo(Ljava/io/File;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/jaudiotagger/audio/aiff/AiffFileReader;->ir:Lorg/jaudiotagger/audio/aiff/AiffInfoReader;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/aiff/AiffInfoReader;->read(Ljava/io/File;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;

    move-result-object p1

    return-object p1
.end method

.method protected getTag(Ljava/io/File;)Lorg/jaudiotagger/tag/Tag;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/jaudiotagger/audio/aiff/AiffFileReader;->im:Lorg/jaudiotagger/audio/aiff/AiffTagReader;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/aiff/AiffTagReader;->read(Ljava/io/File;)Lorg/jaudiotagger/tag/aiff/AiffTag;

    move-result-object p1

    return-object p1
.end method
