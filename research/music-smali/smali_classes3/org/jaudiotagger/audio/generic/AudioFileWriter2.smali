.class public abstract Lorg/jaudiotagger/audio/generic/AudioFileWriter2;
.super Lorg/jaudiotagger/audio/generic/AudioFileWriter;
.source "AudioFileWriter2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AudioFileWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Lorg/jaudiotagger/audio/AudioFile;)V
    .locals 8

    .line 30
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v0

    .line 32
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isCheckIsWritable()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_DELETE_FAILED:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    .line 35
    invoke-virtual {v1, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x64

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    .line 43
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/audio/generic/AudioFileWriter2;->deleteTag(Lorg/jaudiotagger/tag/Tag;Ljava/io/File;)V

    return-void

    .line 40
    :cond_2
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_DELETE_FAILED_BECAUSE_FILE_IS_TOO_SMALL:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    .line 41
    invoke-virtual {v1, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract deleteTag(Lorg/jaudiotagger/tag/Tag;Ljava/io/File;)V
.end method

.method public deleteTag(Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 0

    .line 86
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Old method not used in version 2"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Lorg/jaudiotagger/audio/AudioFile;)V
    .locals 8

    .line 55
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v0

    .line 57
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isCheckIsWritable()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    sget-object v1, Lorg/jaudiotagger/audio/generic/AudioFileWriter2;->logger:Ljava/util/logging/Logger;

    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v2

    .line 59
    invoke-virtual {v4, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 61
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_OPEN_FILE_FOR_EDITING:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    .line 62
    invoke-virtual {v1, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x64

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    .line 70
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/audio/generic/AudioFileWriter2;->writeTag(Lorg/jaudiotagger/tag/Tag;Ljava/io/File;)V

    return-void

    .line 67
    :cond_2
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_BECAUSE_FILE_IS_TOO_SMALL:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    .line 68
    invoke-virtual {v1, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected writeTag(Lorg/jaudiotagger/audio/AudioFile;Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 0

    .line 100
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Old method not used in version 2"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract writeTag(Lorg/jaudiotagger/tag/Tag;Ljava/io/File;)V
.end method
