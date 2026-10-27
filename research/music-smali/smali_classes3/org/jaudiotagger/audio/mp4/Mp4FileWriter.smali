.class public Lorg/jaudiotagger/audio/mp4/Mp4FileWriter;
.super Lorg/jaudiotagger/audio/generic/AudioFileWriter;
.source "Mp4FileWriter.java"


# instance fields
.field private tw:Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AudioFileWriter;-><init>()V

    .line 37
    new-instance v0, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;

    invoke-direct {v0}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4FileWriter;->tw:Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;

    return-void
.end method


# virtual methods
.method protected deleteTag(Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 0

    .line 47
    iget-object p1, p0, Lorg/jaudiotagger/audio/mp4/Mp4FileWriter;->tw:Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;

    invoke-virtual {p1, p2, p3}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->delete(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    return-void
.end method

.method protected writeTag(Lorg/jaudiotagger/audio/AudioFile;Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 0

    .line 42
    iget-object p1, p0, Lorg/jaudiotagger/audio/mp4/Mp4FileWriter;->tw:Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;

    invoke-virtual {p1, p2, p3, p4}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->write(Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    return-void
.end method
