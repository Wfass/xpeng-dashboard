.class public abstract Lorg/jaudiotagger/audio/generic/AudioFileReader2;
.super Lorg/jaudiotagger/audio/generic/AudioFileReader;
.source "AudioFileReader2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AudioFileReader;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getEncodingInfo(Ljava/io/File;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;
.end method

.method protected getEncodingInfo(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;
    .locals 1

    .line 66
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Old method not used in version 2"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract getTag(Ljava/io/File;)Lorg/jaudiotagger/tag/Tag;
.end method

.method protected getTag(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/tag/Tag;
    .locals 1

    .line 81
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Old method not used in version 2"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read(Ljava/io/File;)Lorg/jaudiotagger/audio/AudioFile;
    .locals 7

    .line 33
    sget-object v0, Lorg/jaudiotagger/audio/generic/AudioFileReader2;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lorg/jaudiotagger/audio/generic/AudioFileReader2;->logger:Ljava/util/logging/Logger;

    sget-object v3, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_READ:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 38
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x64

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    .line 48
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/generic/AudioFileReader2;->getEncodingInfo(Ljava/io/File;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;

    move-result-object v0

    .line 49
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/generic/AudioFileReader2;->getTag(Ljava/io/File;)Lorg/jaudiotagger/tag/Tag;

    move-result-object v1

    .line 50
    new-instance v2, Lorg/jaudiotagger/audio/AudioFile;

    invoke-direct {v2, p1, v0, v1}, Lorg/jaudiotagger/audio/AudioFile;-><init>(Ljava/io/File;Lorg/jaudiotagger/audio/AudioHeader;Lorg/jaudiotagger/tag/Tag;)V

    return-object v2

    .line 45
    :cond_1
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    sget-object v3, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_READ_FAILED_FILE_TOO_SMALL:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v3, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_2
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/NoReadPermissionsException;

    sget-object v3, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_READ_FAILED_DO_NOT_HAVE_PERMISSION_TO_READ_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v3, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/audio/exceptions/NoReadPermissionsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
