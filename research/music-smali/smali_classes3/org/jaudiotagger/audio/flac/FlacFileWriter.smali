.class public Lorg/jaudiotagger/audio/flac/FlacFileWriter;
.super Lorg/jaudiotagger/audio/generic/AudioFileWriter2;
.source "FlacFileWriter.java"


# instance fields
.field private tw:Lorg/jaudiotagger/audio/flac/FlacTagWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AudioFileWriter2;-><init>()V

    .line 34
    new-instance v0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;

    invoke-direct {v0}, Lorg/jaudiotagger/audio/flac/FlacTagWriter;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacFileWriter;->tw:Lorg/jaudiotagger/audio/flac/FlacTagWriter;

    return-void
.end method


# virtual methods
.method protected deleteTag(Lorg/jaudiotagger/tag/Tag;Ljava/io/File;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacFileWriter;->tw:Lorg/jaudiotagger/audio/flac/FlacTagWriter;

    invoke-virtual {v0, p1, p2}, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->delete(Lorg/jaudiotagger/tag/Tag;Ljava/io/File;)V

    return-void
.end method

.method protected writeTag(Lorg/jaudiotagger/tag/Tag;Ljava/io/File;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacFileWriter;->tw:Lorg/jaudiotagger/audio/flac/FlacTagWriter;

    invoke-virtual {v0, p1, p2}, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->write(Lorg/jaudiotagger/tag/Tag;Ljava/io/File;)V

    return-void
.end method
