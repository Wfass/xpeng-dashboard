.class public abstract Lorg/jaudiotagger/audio/generic/AudioFileWriter;
.super Ljava/lang/Object;
.source "AudioFileWriter.java"


# static fields
.field private static final FILE_NAME_TOO_LONG:Ljava/lang/String; = "File name too long"

.field private static final FILE_NAME_TOO_LONG2:Ljava/lang/String; = "The filename, directory name, or volume label syntax is incorrect"

.field private static final FILE_NAME_TOO_LONG_SAFE_LIMIT:I = 0x32

.field protected static final MINIMUM_FILESIZE:I = 0x64

.field private static final TEMP_FILENAME_SUFFIX:Ljava/lang/String; = ".tmp"

.field private static final WRITE_MODE:Ljava/lang/String; = "rw"

.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private modificationListener:Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "org.jaudiotagger.audio.generic"

    .line 56
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->modificationListener:Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;

    return-void
.end method

.method private precheckWrite(Lorg/jaudiotagger/audio/AudioFile;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 224
    :try_start_0
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v2

    invoke-interface {v2}, Lorg/jaudiotagger/tag/Tag;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->delete(Lorg/jaudiotagger/audio/AudioFile;)V
    :try_end_0
    .catch Lorg/jaudiotagger/audio/exceptions/CannotReadException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 232
    :cond_0
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v2

    .line 233
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isCheckIsWritable()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 234
    :cond_1
    sget-object v3, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v0

    invoke-virtual {v4, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 235
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v3, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_OPEN_FILE_FOR_EDITING:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {v3, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 238
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x64

    cmp-long p1, v3, v5

    if-lez p1, :cond_3

    return-void

    .line 239
    :cond_3
    sget-object p1, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    sget-object v3, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_BECAUSE_FILE_IS_TOO_SMALL:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v3, v4}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 240
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v3, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_BECAUSE_FILE_IS_TOO_SMALL:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {v3, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 229
    :catch_0
    new-instance v2, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v3, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-virtual {v3, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private transferNewFileContentToOriginalFile(Ljava/io/File;Ljava/io/File;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 452
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, p2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 453
    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 456
    :try_start_2
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 458
    invoke-direct {p0, p1, p2, v3, v4}, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->transferNewFileContentToOriginalFile(Ljava/io/File;Ljava/io/File;Ljava/io/RandomAccessFile;Ljava/nio/channels/FileChannel;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 482
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_1

    .line 461
    :cond_0
    :try_start_4
    sget-object v5, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    sget-object v6, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_FILE_LOCKED:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {v6, v7}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 462
    new-instance v5, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v6, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_FILE_LOCKED:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {v6, v7}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 478
    :try_start_5
    sget-object v4, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    sget-object v5, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_FILE_LOCKED:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v5, v6}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 479
    new-instance v4, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v5, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_FILE_LOCKED:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v5, v6}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception v5

    .line 465
    sget-object v6, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    sget-object v7, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_FILE_LOCKED:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v8, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-virtual {v7, v8}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const-string v6, "Operation not supported"

    .line 470
    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 472
    invoke-direct {p0, p1, p2, v3, v4}, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->transferNewFileContentToOriginalFile(Ljava/io/File;Ljava/io/File;Ljava/io/RandomAccessFile;Ljava/nio/channels/FileChannel;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 491
    :cond_1
    :goto_1
    new-array p1, v2, [Ljava/io/Closeable;

    aput-object v3, p1, v1

    invoke-static {p1}, Lorg/jaudiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    return-void

    .line 474
    :cond_2
    :try_start_6
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_FILE_LOCKED:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v4, v6}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v4, v5}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_2
    if-eqz v0, :cond_3

    .line 482
    :try_start_7
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V

    .line 483
    :cond_3
    throw p1
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, v3

    goto :goto_5

    :catch_2
    move-exception p1

    move-object v0, v3

    goto :goto_3

    :catch_3
    move-exception p1

    move-object v0, v3

    goto :goto_4

    :catchall_2
    move-exception p1

    goto :goto_5

    :catch_4
    move-exception p1

    .line 488
    :goto_3
    :try_start_8
    sget-object v3, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v4, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 489
    new-instance v3, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, v1

    invoke-virtual {v4, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2, p1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_5
    move-exception p1

    .line 485
    :goto_4
    sget-object v3, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_BECAUSE_FILE_NOT_FOUND:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v4, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 486
    new-instance v3, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_BECAUSE_FILE_NOT_FOUND:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, v1

    invoke-virtual {v4, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2, p1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 491
    :goto_5
    new-array p2, v2, [Ljava/io/Closeable;

    aput-object v0, p2, v1

    invoke-static {p2}, Lorg/jaudiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    .line 492
    throw p1
.end method

.method private transferNewFileContentToOriginalFile(Ljava/io/File;Ljava/io/File;Ljava/io/RandomAccessFile;Ljava/nio/channels/FileChannel;)V
    .locals 16

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 498
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v5, p1

    :try_start_1
    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 499
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 502
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v12

    const-wide/16 v6, 0x0

    move-wide v14, v6

    :goto_0
    cmp-long v3, v14, v12

    if-gez v3, :cond_0

    const-wide/32 v9, 0x100000

    move-object v6, v0

    move-wide v7, v14

    move-object/from16 v11, p4

    .line 505
    invoke-virtual/range {v6 .. v11}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v6

    add-long/2addr v14, v6

    goto :goto_0

    :cond_0
    move-object/from16 v0, p3

    .line 508
    invoke-virtual {v0, v12, v13}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 516
    new-array v0, v2, [Ljava/io/Closeable;

    aput-object v4, v0, v1

    invoke-static {v0}, Lorg/jaudiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    .line 519
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 521
    sget-object v0, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    sget-object v3, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_DELETE_TEMPORARY_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {v3, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    move-object v3, v4

    goto/16 :goto_3

    :catch_0
    move-exception v0

    move-object v3, v4

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v3, v4

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    move-object/from16 v5, p1

    .line 513
    :goto_1
    :try_start_3
    sget-object v4, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    sget-object v6, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_RENAME_TO_ORIGINAL_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-virtual {v6, v8}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 514
    new-instance v4, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v6, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_RENAME_TO_ORIGINAL_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v2

    invoke-virtual {v6, v7}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_5
    move-exception v0

    move-object/from16 v5, p1

    .line 510
    :goto_2
    sget-object v4, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    sget-object v6, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_NEW_FILE_DOESNT_EXIST:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {v6, v7}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 511
    new-instance v4, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v6, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_NEW_FILE_DOESNT_EXIST:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v1

    invoke-virtual {v6, v7}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 516
    :goto_3
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v3, v2, v1

    invoke-static {v2}, Lorg/jaudiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    .line 517
    throw v0
.end method

.method private transferNewFileToNewOriginalFile(Ljava/io/File;Ljava/io/File;)V
    .locals 9

    .line 551
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lorg/jaudiotagger/audio/AudioFile;->getBaseFilename(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".old"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    move v2, v1

    .line 555
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 556
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lorg/jaudiotagger/audio/AudioFile;->getBaseFilename(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    add-int/2addr v2, v1

    goto :goto_0

    .line 560
    :cond_0
    invoke-static {p2, v0}, Lorg/jaudiotagger/audio/generic/Utils;->rename(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v2, :cond_2

    .line 562
    sget-object v2, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    sget-object v6, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_RENAME_ORIGINAL_FILE_TO_BACKUP:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {v6, v7}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 566
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 568
    :cond_1
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_RENAME_ORIGINAL_FILE_TO_BACKUP:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v4

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v1

    invoke-virtual {v2, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 572
    :cond_2
    invoke-static {p1, p2}, Lorg/jaudiotagger/audio/generic/Utils;->rename(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 576
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 577
    sget-object v2, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    sget-object v5, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_NEW_FILE_DOESNT_EXIST:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v5, v6}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 581
    :cond_3
    invoke-virtual {v0, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 584
    sget-object v2, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    sget-object v5, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_RENAME_ORIGINAL_BACKUP_TO_ORIGINAL:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v4

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-virtual {v5, v6}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 587
    :cond_4
    sget-object v0, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    sget-object v2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_RENAME_TO_ORIGINAL_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v2, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 588
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_RENAME_TO_ORIGINAL_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v4

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {v2, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p2

    if-nez p2, :cond_6

    .line 596
    sget-object p2, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    sget-object v2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_WARNING_UNABLE_TO_DELETE_BACKUP_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 602
    :cond_6
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 603
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p2

    if-nez p2, :cond_7

    .line 605
    sget-object p2, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_DELETE_TEMPORARY_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private transferNewFileToOriginalFile(Ljava/io/File;Ljava/io/File;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 419
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->transferNewFileContentToOriginalFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0

    .line 421
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->transferNewFileToNewOriginalFile(Ljava/io/File;Ljava/io/File;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public delete(Lorg/jaudiotagger/audio/AudioFile;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "rw"

    const-string v3, ":"

    const-string v4, " or"

    const-string v5, "AudioFileWriter exception cleaning up delete:"

    .line 78
    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v6

    .line 79
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v7

    invoke-virtual {v7}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isCheckIsWritable()Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_DELETE_FAILED:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x64

    cmp-long v7, v10, v12

    if-lez v7, :cond_12

    const/4 v6, 0x0

    const-wide/16 v10, 0x0

    const/4 v7, 0x2

    .line 97
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x2e

    const/16 v14, 0x5f

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    const-string v13, ".tmp"

    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v14

    invoke-static {v12, v13, v14}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 98
    :try_start_1
    new-instance v13, Ljava/io/RandomAccessFile;

    invoke-direct {v13, v12, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 99
    :try_start_2
    new-instance v14, Ljava/io/RandomAccessFile;

    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v15

    invoke-direct {v14, v15, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 100
    :try_start_3
    invoke-virtual {v14, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 101
    invoke-virtual {v13, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    :try_start_4
    iget-object v0, v1, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->modificationListener:Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, v1, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->modificationListener:Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;

    invoke-interface {v0, v2, v9}, Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;->fileWillBeModified(Lorg/jaudiotagger/audio/AudioFile;Z)V

    .line 107
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/AudioFile;->getTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    invoke-virtual {v1, v0, v14, v13}, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->deleteTag(Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    .line 108
    iget-object v0, v1, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->modificationListener:Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;

    if-eqz v0, :cond_3

    .line 109
    iget-object v0, v1, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->modificationListener:Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;

    invoke-interface {v0, v2, v12}, Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;->fileModified(Lorg/jaudiotagger/audio/AudioFile;Ljava/io/File;)V
    :try_end_4
    .catch Lorg/jaudiotagger/audio/exceptions/ModifyVetoException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 120
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v6

    .line 123
    :try_start_5
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V

    .line 126
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V

    .line 129
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v13

    cmp-long v0, v13, v10

    if-lez v0, :cond_7

    .line 130
    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 135
    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    if-eqz v0, :cond_5

    .line 143
    :try_start_6
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 144
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_4

    .line 146
    sget-object v0, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    sget-object v6, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_DELETE_TEMPORARY_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_4
    move-object v6, v12

    goto/16 :goto_2

    :catch_0
    move-exception v0

    move-object v6, v12

    goto/16 :goto_1

    .line 137
    :cond_5
    :try_start_7
    sget-object v0, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    sget-object v10, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_RENAME_TO_ORIGINAL_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v11, v7, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v8

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v9

    invoke-virtual {v10, v11}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 138
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v10, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_RENAME_TO_ORIGINAL_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v8

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v10, v7}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_6
    sget-object v0, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    sget-object v10, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_DELETE_ORIGINAL_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v11, v7, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v8

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v9

    invoke-virtual {v10, v11}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 133
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v10, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_DELETE_ORIGINAL_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v8

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v10, v7}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_7
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_8

    .line 153
    sget-object v0, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    sget-object v7, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_DELETE_TEMPORARY_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-virtual {v7, v9}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 157
    :goto_1
    sget-object v7, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 160
    :cond_8
    :goto_2
    iget-object v0, v1, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->modificationListener:Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;

    if-eqz v0, :cond_9

    .line 161
    invoke-interface {v0, v6}, Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;->fileOperationFinished(Ljava/io/File;)V

    :cond_9
    return-void

    :catch_2
    move-exception v0

    .line 112
    :try_start_8
    new-instance v6, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    invoke-direct {v6, v0}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v6, v14

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v14, v6

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v13, v6

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v13, v6

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v12, v6

    move-object v13, v12

    :goto_3
    move-object v14, v13

    :goto_4
    move-object v6, v0

    move v0, v8

    goto :goto_6

    :catch_6
    move-exception v0

    move-object v12, v6

    move-object v13, v12

    .line 117
    :goto_5
    :try_start_9
    new-instance v14, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\""

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\" :"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v14, v7, v0}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v0

    move-object v14, v6

    move-object v6, v0

    move v0, v9

    .line 120
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v7

    if-eqz v14, :cond_a

    .line 123
    :try_start_a
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_7

    :catch_7
    move-exception v0

    goto/16 :goto_8

    :cond_a
    :goto_7
    if-eqz v13, :cond_b

    .line 126
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V

    .line 129
    :cond_b
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v13

    cmp-long v10, v13, v10

    if-lez v10, :cond_f

    if-nez v0, :cond_f

    .line 130
    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 135
    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    if-eqz v0, :cond_d

    .line 143
    :try_start_b
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 144
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_c

    .line 146
    sget-object v0, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    sget-object v7, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_DELETE_TEMPORARY_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-virtual {v7, v9}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    :cond_c
    move-object v7, v12

    goto/16 :goto_9

    :catch_8
    move-exception v0

    move-object v7, v12

    goto/16 :goto_8

    .line 137
    :cond_d
    :try_start_c
    sget-object v0, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    sget-object v10, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_RENAME_TO_ORIGINAL_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    const/4 v11, 0x2

    new-array v13, v11, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v13, v8

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v13, v9

    invoke-virtual {v10, v13}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 138
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v10, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_RENAME_TO_ORIGINAL_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v8

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v9

    invoke-virtual {v10, v11}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_e
    sget-object v0, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    sget-object v10, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_DELETE_ORIGINAL_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    const/4 v11, 0x2

    new-array v13, v11, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v13, v8

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v13, v9

    invoke-virtual {v10, v13}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 133
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v10, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_DELETE_ORIGINAL_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v8

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v9

    invoke-virtual {v10, v11}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_f
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_10

    .line 153
    sget-object v0, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    sget-object v10, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_DELETE_TEMPORARY_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v8

    invoke-virtual {v10, v9}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_9

    .line 157
    :goto_8
    sget-object v8, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 160
    :cond_10
    :goto_9
    iget-object v0, v1, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->modificationListener:Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;

    if-eqz v0, :cond_11

    .line 161
    invoke-interface {v0, v7}, Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;->fileOperationFinished(Ljava/io/File;)V

    .line 163
    :cond_11
    throw v6

    .line 84
    :cond_12
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_DELETE_FAILED_BECAUSE_FILE_IS_TOO_SMALL:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public delete(Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 178
    invoke-virtual {p2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 179
    invoke-virtual {p3, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 180
    invoke-virtual {p0, p1, p2, p3}, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->deleteTag(Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    return-void
.end method

.method protected abstract deleteTag(Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
.end method

.method public setAudioFileModificationListener(Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->modificationListener:Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;

    return-void
.end method

.method public write(Lorg/jaudiotagger/audio/AudioFile;)V
    .locals 13

    const-string v0, "rw"

    const-string v1, ".tmp"

    .line 254
    sget-object v2, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Started writing tag data for file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 257
    invoke-direct {p0, p1}, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->precheckWrite(Lorg/jaudiotagger/audio/AudioFile;)V

    .line 260
    instance-of v2, p1, Lorg/jaudiotagger/audio/mp3/MP3File;

    if-eqz v2, :cond_0

    .line 261
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->commit()V

    return-void

    :cond_0
    const/4 v2, 0x0

    const/16 v3, 0x5f

    const/16 v4, 0x2e

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 272
    :try_start_0
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-static {v8, v1, v9}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    .line 277
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    const-string v10, "File name too long"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x32

    if-le v9, v10, :cond_9

    .line 280
    :try_start_1
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-static {v3, v1, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    .line 294
    :goto_0
    :try_start_2
    new-instance v3, Ljava/io/RandomAccessFile;

    invoke-direct {v3, v1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 295
    :try_start_3
    new-instance v2, Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    const-wide/16 v8, 0x0

    .line 329
    :try_start_4
    invoke-virtual {v2, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 330
    invoke-virtual {v3, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 332
    :try_start_5
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->modificationListener:Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->modificationListener:Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;

    invoke-interface {v0, p1, v7}, Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;->fileWillBeModified(Lorg/jaudiotagger/audio/AudioFile;Z)V

    .line 335
    :cond_1
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v2, v3}, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->writeTag(Lorg/jaudiotagger/audio/AudioFile;Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    .line 336
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->modificationListener:Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;

    if-eqz v0, :cond_2

    .line 337
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->modificationListener:Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;

    invoke-interface {v0, p1, v1}, Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;->fileModified(Lorg/jaudiotagger/audio/AudioFile;Ljava/io/File;)V
    :try_end_5
    .catch Lorg/jaudiotagger/audio/exceptions/ModifyVetoException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 369
    :cond_2
    :try_start_6
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 372
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 376
    sget-object v2, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_PROBLEM_CLOSING_FILE_HANDLE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v6

    invoke-virtual {v4, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 381
    :goto_1
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v0

    .line 384
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-lez v2, :cond_3

    .line 385
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isPreserveFileIdentity()Z

    move-result v2

    invoke-direct {p0, v1, p1, v2}, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->transferNewFileToOriginalFile(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_2

    .line 388
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_4

    .line 390
    sget-object p1, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    sget-object v2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_DELETE_TEMPORARY_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-virtual {v2, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 394
    :cond_4
    :goto_2
    iget-object p1, p0, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->modificationListener:Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;

    if-eqz p1, :cond_5

    .line 395
    invoke-interface {p1, v0}, Lorg/jaudiotagger/audio/generic/AudioFileModificationListener;->fileOperationFinished(Ljava/io/File;)V

    :cond_5
    return-void

    :catch_2
    move-exception v0

    .line 340
    :try_start_7
    new-instance v4, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    invoke-direct {v4, v0}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    .line 343
    :try_start_8
    sget-object v4, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    sget-object v9, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_BECAUSE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v10, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-virtual {v9, v10}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 347
    :try_start_9
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 350
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    :catch_4
    move-exception v4

    .line 354
    :try_start_a
    sget-object v8, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    sget-object v10, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_PROBLEM_CLOSING_FILE_HANDLE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v11, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v7

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    invoke-virtual {v10, v11}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 361
    :goto_3
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_6

    .line 363
    sget-object v4, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    sget-object v8, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_DELETE_TEMPORARY_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v9, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v7

    invoke-virtual {v8, v9}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 365
    :cond_6
    new-instance v1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_BECAUSE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v6

    invoke-virtual {v4, v8}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 369
    :goto_4
    :try_start_b
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 372
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_5

    :catch_5
    move-exception v1

    .line 376
    sget-object v2, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_PROBLEM_CLOSING_FILE_HANDLE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v6

    invoke-virtual {v4, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 378
    :goto_5
    throw v0

    :catch_6
    move-exception v0

    goto :goto_6

    :catch_7
    move-exception v0

    move-object v3, v2

    .line 301
    :goto_6
    sget-object v2, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    sget-object v8, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_OPEN_FILE_FOR_EDITING:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v9, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-virtual {v8, v9}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v4, v8, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v3, :cond_7

    .line 309
    :try_start_c
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_7

    :catch_8
    move-exception v2

    .line 313
    sget-object v3, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    sget-object v8, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_PROBLEM_CLOSING_FILE_HANDLE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v9

    aput-object v9, v5, v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {v8, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 318
    :cond_7
    :goto_7
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_8

    .line 320
    sget-object v0, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    sget-object v2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_DELETE_TEMPORARY_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-virtual {v2, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 323
    :cond_8
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_OPEN_FILE_FOR_EDITING:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v7

    invoke-virtual {v1, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_9
    move-exception v0

    .line 283
    sget-object v1, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    sget-object v3, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_CREATE_TEMPORARY_FILE_IN_FOLDER:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-virtual {v3, v4}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 284
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_CREATE_TEMPORARY_FILE_IN_FOLDER:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-virtual {v1, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_9
    sget-object v0, Lorg/jaudiotagger/audio/generic/AudioFileWriter;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    sget-object v2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_CREATE_TEMPORARY_FILE_IN_FOLDER:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 288
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_CREATE_TEMPORARY_FILE_IN_FOLDER:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-virtual {v1, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract writeTag(Lorg/jaudiotagger/audio/AudioFile;Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
.end method
