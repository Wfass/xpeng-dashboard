.class public Lorg/jaudiotagger/audio/wav/WavFileWriter;
.super Lorg/jaudiotagger/audio/generic/AudioFileWriter2;
.source "WavFileWriter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AudioFileWriter2;-><init>()V

    return-void
.end method


# virtual methods
.method protected deleteTag(Lorg/jaudiotagger/tag/Tag;Ljava/io/File;)V
    .locals 2

    .line 38
    new-instance v0, Lorg/jaudiotagger/audio/wav/WavTagWriter;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->delete(Lorg/jaudiotagger/tag/Tag;Ljava/io/File;)V

    return-void
.end method

.method protected writeTag(Lorg/jaudiotagger/tag/Tag;Ljava/io/File;)V
    .locals 2

    .line 32
    new-instance v0, Lorg/jaudiotagger/audio/wav/WavTagWriter;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->write(Lorg/jaudiotagger/tag/Tag;Ljava/io/File;)V

    return-void
.end method
