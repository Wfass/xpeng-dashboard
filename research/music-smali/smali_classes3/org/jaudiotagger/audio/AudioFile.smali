.class public Lorg/jaudiotagger/audio/AudioFile;
.super Ljava/lang/Object;
.source "AudioFile.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field protected audioHeader:Lorg/jaudiotagger/audio/AudioHeader;

.field protected extension:Ljava/lang/String;

.field protected file:Ljava/io/File;

.field protected tag:Lorg/jaudiotagger/tag/Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "org.jaudiotagger.audio"

    .line 43
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/jaudiotagger/audio/AudioHeader;Lorg/jaudiotagger/tag/Tag;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    .line 82
    iput-object p2, p0, Lorg/jaudiotagger/audio/AudioFile;->audioHeader:Lorg/jaudiotagger/audio/AudioHeader;

    .line 83
    iput-object p3, p0, Lorg/jaudiotagger/audio/AudioFile;->tag:Lorg/jaudiotagger/tag/Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jaudiotagger/audio/AudioHeader;Lorg/jaudiotagger/tag/Tag;)V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    .line 98
    iput-object p2, p0, Lorg/jaudiotagger/audio/AudioFile;->audioHeader:Lorg/jaudiotagger/audio/AudioHeader;

    .line 99
    iput-object p3, p0, Lorg/jaudiotagger/audio/AudioFile;->tag:Lorg/jaudiotagger/tag/Tag;

    return-void
.end method

.method public static getBaseFilename(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 423
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 426
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 428
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public checkFileExists(Ljava/io/File;)V
    .locals 4

    .line 217
    sget-object v0, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading file:path"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":abs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 220
    :cond_0
    sget-object v0, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 221
    new-instance v0, Ljava/io/FileNotFoundException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->UNABLE_TO_FIND_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkFilePermissions(Ljava/io/File;Z)Ljava/io/RandomAccessFile;
    .locals 4

    .line 237
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/AudioFile;->checkFileExists(Ljava/io/File;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 243
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 248
    new-instance p2, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {p2, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    .line 245
    :cond_0
    sget-object p2, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to read file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 246
    new-instance p2, Lorg/jaudiotagger/audio/exceptions/NoReadPermissionsException;

    sget-object v2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_READ_FAILED_DO_NOT_HAVE_PERMISSION_TO_READ_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-virtual {v2, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/jaudiotagger/audio/exceptions/NoReadPermissionsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 252
    :cond_1
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object p2

    invoke-virtual {p2}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isCheckIsWritable()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 254
    :cond_2
    new-instance p2, Lorg/jaudiotagger/audio/exceptions/ReadOnlyFileException;

    sget-object v2, Lorg/jaudiotagger/logging/ErrorMessage;->NO_PERMISSIONS_TO_WRITE_TO_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-virtual {v2, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/jaudiotagger/audio/exceptions/ReadOnlyFileException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 256
    :cond_3
    :goto_0
    new-instance p2, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {p2, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_1
    return-object p2
.end method

.method public commit()V
    .locals 0

    .line 111
    invoke-static {p0}, Lorg/jaudiotagger/audio/AudioFileIO;->write(Lorg/jaudiotagger/audio/AudioFile;)V

    return-void
.end method

.method public convertID3Tag(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;Lorg/jaudiotagger/tag/reference/ID3V2Version;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;
    .locals 5

    .line 438
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 440
    sget-object v0, Lorg/jaudiotagger/audio/AudioFile$1;->$SwitchMap$org$jaudiotagger$tag$reference$ID3V2Version:[I

    invoke-virtual {p2}, Lorg/jaudiotagger/tag/reference/ID3V2Version;->ordinal()I

    move-result p2

    aget p2, v0, p2

    if-eq p2, v3, :cond_2

    if-eq p2, v2, :cond_1

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v4

    .line 445
    :cond_1
    new-instance p2, Lorg/jaudiotagger/tag/id3/ID3v23Tag;

    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    invoke-direct {p2, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;-><init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V

    return-object p2

    .line 443
    :cond_2
    new-instance p2, Lorg/jaudiotagger/tag/id3/ID3v22Tag;

    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    invoke-direct {p2, p1}, Lorg/jaudiotagger/tag/id3/ID3v22Tag;-><init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V

    return-object p2

    .line 450
    :cond_3
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;

    if-eqz v0, :cond_7

    .line 452
    sget-object v0, Lorg/jaudiotagger/audio/AudioFile$1;->$SwitchMap$org$jaudiotagger$tag$reference$ID3V2Version:[I

    invoke-virtual {p2}, Lorg/jaudiotagger/tag/reference/ID3V2Version;->ordinal()I

    move-result p2

    aget p2, v0, p2

    if-eq p2, v3, :cond_6

    if-eq p2, v2, :cond_5

    if-eq p2, v1, :cond_4

    goto :goto_0

    .line 459
    :cond_4
    new-instance p2, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;

    invoke-direct {p2, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;-><init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V

    return-object p2

    :cond_5
    return-object v4

    .line 455
    :cond_6
    new-instance p2, Lorg/jaudiotagger/tag/id3/ID3v22Tag;

    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;

    invoke-direct {p2, p1}, Lorg/jaudiotagger/tag/id3/ID3v22Tag;-><init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V

    return-object p2

    .line 462
    :cond_7
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v22Tag;

    if-eqz v0, :cond_a

    .line 464
    sget-object v0, Lorg/jaudiotagger/audio/AudioFile$1;->$SwitchMap$org$jaudiotagger$tag$reference$ID3V2Version:[I

    invoke-virtual {p2}, Lorg/jaudiotagger/tag/reference/ID3V2Version;->ordinal()I

    move-result p2

    aget p2, v0, p2

    if-eq p2, v3, :cond_a

    if-eq p2, v2, :cond_9

    if-eq p2, v1, :cond_8

    goto :goto_0

    .line 471
    :cond_8
    new-instance p2, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v22Tag;

    invoke-direct {p2, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;-><init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V

    return-object p2

    .line 469
    :cond_9
    new-instance p2, Lorg/jaudiotagger/tag/id3/ID3v23Tag;

    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v22Tag;

    invoke-direct {p2, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;-><init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V

    return-object p2

    :cond_a
    :goto_0
    return-object v4
.end method

.method public createDefaultTag()Lorg/jaudiotagger/tag/Tag;
    .locals 3

    .line 288
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/AudioFile;->getExt()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/AudioFile;->setExt(Ljava/lang/String;)V

    .line 295
    :cond_0
    sget-object v1, Lorg/jaudiotagger/audio/SupportedFileFormat;->FLAC:Lorg/jaudiotagger/audio/SupportedFileFormat;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 297
    new-instance v0, Lorg/jaudiotagger/tag/flac/FlacTag;

    invoke-static {}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->createNewTag()Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Lorg/jaudiotagger/tag/flac/FlacTag;-><init>(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;Ljava/util/List;)V

    return-object v0

    .line 299
    :cond_1
    sget-object v1, Lorg/jaudiotagger/audio/SupportedFileFormat;->OGG:Lorg/jaudiotagger/audio/SupportedFileFormat;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 301
    invoke-static {}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->createNewTag()Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    move-result-object v0

    return-object v0

    .line 303
    :cond_2
    sget-object v1, Lorg/jaudiotagger/audio/SupportedFileFormat;->MP4:Lorg/jaudiotagger/audio/SupportedFileFormat;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 305
    new-instance v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;-><init>()V

    return-object v0

    .line 307
    :cond_3
    sget-object v1, Lorg/jaudiotagger/audio/SupportedFileFormat;->M4A:Lorg/jaudiotagger/audio/SupportedFileFormat;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 309
    new-instance v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;-><init>()V

    return-object v0

    .line 311
    :cond_4
    sget-object v1, Lorg/jaudiotagger/audio/SupportedFileFormat;->M4P:Lorg/jaudiotagger/audio/SupportedFileFormat;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 313
    new-instance v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;-><init>()V

    return-object v0

    .line 315
    :cond_5
    sget-object v1, Lorg/jaudiotagger/audio/SupportedFileFormat;->WMA:Lorg/jaudiotagger/audio/SupportedFileFormat;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 317
    new-instance v0, Lorg/jaudiotagger/tag/asf/AsfTag;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/asf/AsfTag;-><init>()V

    return-object v0

    .line 319
    :cond_6
    sget-object v1, Lorg/jaudiotagger/audio/SupportedFileFormat;->WAV:Lorg/jaudiotagger/audio/SupportedFileFormat;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 321
    new-instance v0, Lorg/jaudiotagger/tag/wav/WavTag;

    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getWavOptions()Lorg/jaudiotagger/audio/wav/WavOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaudiotagger/tag/wav/WavTag;-><init>(Lorg/jaudiotagger/audio/wav/WavOptions;)V

    return-object v0

    .line 323
    :cond_7
    sget-object v1, Lorg/jaudiotagger/audio/SupportedFileFormat;->RA:Lorg/jaudiotagger/audio/SupportedFileFormat;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 325
    new-instance v0, Lorg/jaudiotagger/audio/real/RealTag;

    invoke-direct {v0}, Lorg/jaudiotagger/audio/real/RealTag;-><init>()V

    return-object v0

    .line 327
    :cond_8
    sget-object v1, Lorg/jaudiotagger/audio/SupportedFileFormat;->RM:Lorg/jaudiotagger/audio/SupportedFileFormat;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 329
    new-instance v0, Lorg/jaudiotagger/audio/real/RealTag;

    invoke-direct {v0}, Lorg/jaudiotagger/audio/real/RealTag;-><init>()V

    return-object v0

    .line 331
    :cond_9
    sget-object v1, Lorg/jaudiotagger/audio/SupportedFileFormat;->AIF:Lorg/jaudiotagger/audio/SupportedFileFormat;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 333
    new-instance v0, Lorg/jaudiotagger/tag/aiff/AiffTag;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/aiff/AiffTag;-><init>()V

    return-object v0

    .line 335
    :cond_a
    sget-object v1, Lorg/jaudiotagger/audio/SupportedFileFormat;->AIFC:Lorg/jaudiotagger/audio/SupportedFileFormat;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 337
    new-instance v0, Lorg/jaudiotagger/tag/aiff/AiffTag;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/aiff/AiffTag;-><init>()V

    return-object v0

    .line 339
    :cond_b
    sget-object v1, Lorg/jaudiotagger/audio/SupportedFileFormat;->AIFF:Lorg/jaudiotagger/audio/SupportedFileFormat;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 341
    new-instance v0, Lorg/jaudiotagger/tag/aiff/AiffTag;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/aiff/AiffTag;-><init>()V

    return-object v0

    .line 343
    :cond_c
    sget-object v1, Lorg/jaudiotagger/audio/SupportedFileFormat;->DSF:Lorg/jaudiotagger/audio/SupportedFileFormat;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 345
    invoke-static {}, Lorg/jaudiotagger/audio/dsf/Dsf;->createDefaultTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    return-object v0

    .line 349
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to create default tag for this file format"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public delete()V
    .locals 0

    .line 122
    invoke-static {p0}, Lorg/jaudiotagger/audio/AudioFileIO;->delete(Lorg/jaudiotagger/audio/AudioFile;)V

    return-void
.end method

.method public displayStructureAsPlainText()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public displayStructureAsXML()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getAudioHeader()Lorg/jaudiotagger/audio/AudioHeader;
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/jaudiotagger/audio/AudioFile;->audioHeader:Lorg/jaudiotagger/audio/AudioHeader;

    return-object v0
.end method

.method public getExt()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/jaudiotagger/audio/AudioFile;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    return-object v0
.end method

.method public getTag()Lorg/jaudiotagger/tag/Tag;
    .locals 1

    .line 194
    iget-object v0, p0, Lorg/jaudiotagger/audio/AudioFile;->tag:Lorg/jaudiotagger/tag/Tag;

    return-object v0
.end method

.method public getTagAndConvertOrCreateAndSetDefault()Lorg/jaudiotagger/tag/Tag;
    .locals 3

    .line 392
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/AudioFile;->getTagOrCreateDefault()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    .line 397
    instance-of v1, v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    if-eqz v1, :cond_1

    .line 399
    move-object v1, v0

    check-cast v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getID3V2Version()Lorg/jaudiotagger/tag/reference/ID3V2Version;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/jaudiotagger/audio/AudioFile;->convertID3Tag(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;Lorg/jaudiotagger/tag/reference/ID3V2Version;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 402
    invoke-virtual {p0, v1}, Lorg/jaudiotagger/audio/AudioFile;->setTag(Lorg/jaudiotagger/tag/Tag;)V

    goto :goto_0

    .line 406
    :cond_0
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/AudioFile;->setTag(Lorg/jaudiotagger/tag/Tag;)V

    goto :goto_0

    .line 411
    :cond_1
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/AudioFile;->setTag(Lorg/jaudiotagger/tag/Tag;)V

    .line 413
    :goto_0
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/AudioFile;->getTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    return-object v0
.end method

.method public getTagOrCreateAndSetDefault()Lorg/jaudiotagger/tag/Tag;
    .locals 1

    .line 377
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/AudioFile;->getTagOrCreateDefault()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    .line 378
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/AudioFile;->setTag(Lorg/jaudiotagger/tag/Tag;)V

    return-object v0
.end method

.method public getTagOrCreateDefault()Lorg/jaudiotagger/tag/Tag;
    .locals 1

    .line 361
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/AudioFile;->getTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    if-nez v0, :cond_0

    .line 364
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/AudioFile;->createDefaultTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public setExt(Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lorg/jaudiotagger/audio/AudioFile;->extension:Ljava/lang/String;

    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    return-void
.end method

.method public setTag(Lorg/jaudiotagger/tag/Tag;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lorg/jaudiotagger/audio/AudioFile;->tag:Lorg/jaudiotagger/tag/Tag;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioFile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  --------\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jaudiotagger/audio/AudioFile;->audioHeader:Lorg/jaudiotagger/audio/AudioHeader;

    .line 206
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jaudiotagger/audio/AudioFile;->tag:Lorg/jaudiotagger/tag/Tag;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lorg/jaudiotagger/tag/Tag;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n-------------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
