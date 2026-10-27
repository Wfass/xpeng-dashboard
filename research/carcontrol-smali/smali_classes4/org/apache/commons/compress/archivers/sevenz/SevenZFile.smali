.class public Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;
.super Ljava/lang/Object;
.source "SevenZFile.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final SIGNATURE_HEADER_SIZE:I = 0x20

.field static final sevenZSignature:[B


# instance fields
.field private final archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

.field private currentEntryIndex:I

.field private currentFolderIndex:I

.field private currentFolderInputStream:Ljava/io/InputStream;

.field private final deferredBlockStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private file:Ljava/io/RandomAccessFile;

.field private final fileName:Ljava/lang/String;

.field private password:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 82
    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x37t
        0x7at
        -0x44t
        -0x51t
        0x27t
        0x1ct
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/io/File;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 75
    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    .line 76
    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderIndex:I

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    .line 97
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    .line 98
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    .line 100
    :try_start_0
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readHeaders([B)Lorg/apache/commons/compress/archivers/sevenz/Archive;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    if-eqz p2, :cond_0

    .line 102
    array-length p1, p2

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    .line 103
    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 105
    :cond_0
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 110
    iget-object p2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V

    throw p1
.end method

.method private buildDecoderStack(Lorg/apache/commons/compress/archivers/sevenz/Folder;JILorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 866
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 867
    new-instance p2, Ljava/io/BufferedInputStream;

    new-instance p3, Lorg/apache/commons/compress/archivers/sevenz/BoundedRandomAccessFileInputStream;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    aget-wide v1, v1, p4

    invoke-direct {p3, v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/BoundedRandomAccessFileInputStream;-><init>(Ljava/io/RandomAccessFile;J)V

    invoke-direct {p2, p3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 871
    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    .line 872
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getOrderedCoders()Ljava/lang/Iterable;

    move-result-object p4

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    move-object v1, p2

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 873
    iget-wide v2, p2, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p2, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 876
    iget-object v0, p2, Lorg/apache/commons/compress/archivers/sevenz/Coder;->decompressionMethodId:[B

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->byId([B)Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    move-result-object v6

    .line 877
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSizeForCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;)J

    move-result-wide v2

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/sevenz/Coders;->addDecoder(Ljava/lang/String;Ljava/io/InputStream;JLorg/apache/commons/compress/archivers/sevenz/Coder;[B)Ljava/io/InputStream;

    move-result-object v1

    .line 879
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;

    invoke-static {v6}, Lorg/apache/commons/compress/archivers/sevenz/Coders;->findByMethod(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;)Lorg/apache/commons/compress/archivers/sevenz/CoderBase;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Lorg/apache/commons/compress/archivers/sevenz/CoderBase;->getOptionsFromCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {v0, v6, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;Ljava/lang/Object;)V

    invoke-virtual {p3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 874
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Multi input/output stream coders are not yet supported"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 882
    :cond_1
    invoke-virtual {p5, p3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setContentMethods(Ljava/lang/Iterable;)V

    .line 883
    iget-boolean p2, p1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    if-eqz p2, :cond_2

    .line 884
    new-instance p2, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    move-result-wide v2

    iget-wide v4, p1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    return-object p2

    :cond_2
    return-object v1
.end method

.method private buildDecodingStream()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 824
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->fileFolderIndex:[I

    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    aget v0, v0, v1

    if-gez v0, :cond_0

    .line 826
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    .line 831
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    iget v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    aget-object v1, v1, v2

    .line 832
    iget v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderIndex:I

    if-ne v2, v0, :cond_1

    .line 839
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    iget v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getContentMethods()Ljava/lang/Iterable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setContentMethods(Ljava/lang/Iterable;)V

    goto :goto_0

    .line 842
    :cond_1
    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderIndex:I

    .line 843
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 844
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    if-eqz v2, :cond_2

    .line 845
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    const/4 v2, 0x0

    .line 846
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    .line 849
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v2, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    aget-object v4, v2, v0

    .line 850
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v2, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    iget-object v2, v2, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstPackStreamIndex:[I

    aget v7, v2, v0

    const-wide/16 v2, 0x20

    .line 851
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-wide v5, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packPos:J

    add-long/2addr v5, v2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->packStreamOffsets:[J

    aget-wide v2, v0, v7

    add-long/2addr v5, v2

    move-object v3, p0

    move-object v8, v1

    .line 853
    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->buildDecoderStack(Lorg/apache/commons/compress/archivers/sevenz/Folder;JILorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    .line 856
    :goto_0
    new-instance v3, Lorg/apache/commons/compress/utils/BoundedInputStream;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v4

    invoke-direct {v3, v0, v4, v5}, Lorg/apache/commons/compress/utils/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    .line 857
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasCrc()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 858
    new-instance v0, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v4

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getCrcValue()J

    move-result-wide v6

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    move-object v3, v0

    .line 861
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private calculateStreamMap(Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 771
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;-><init>()V

    .line 774
    iget-object v1, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v1, v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 775
    :goto_0
    new-array v3, v1, [I

    iput-object v3, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstPackStreamIndex:[I

    move v3, v2

    move v4, v3

    :goto_1
    if-ge v3, v1, :cond_1

    .line 777
    iget-object v5, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstPackStreamIndex:[I

    aput v4, v5, v3

    .line 778
    iget-object v5, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    aget-object v5, v5, v3

    iget-object v5, v5, Lorg/apache/commons/compress/archivers/sevenz/Folder;->packedStreams:[J

    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v3, 0x0

    .line 782
    iget-object v5, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    if-eqz v5, :cond_2

    iget-object v5, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    array-length v5, v5

    goto :goto_2

    :cond_2
    move v5, v2

    .line 783
    :goto_2
    new-array v6, v5, [J

    iput-object v6, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->packStreamOffsets:[J

    move v6, v2

    :goto_3
    if-ge v6, v5, :cond_3

    .line 785
    iget-object v7, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->packStreamOffsets:[J

    aput-wide v3, v7, v6

    .line 786
    iget-object v7, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    aget-wide v7, v7, v6

    add-long/2addr v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 789
    :cond_3
    new-array v1, v1, [I

    iput-object v1, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstFileIndex:[I

    .line 790
    iget-object v1, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->fileFolderIndex:[I

    move v1, v2

    move v3, v1

    move v4, v3

    .line 793
    :goto_4
    iget-object v5, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    array-length v5, v5

    if-ge v1, v5, :cond_b

    .line 794
    iget-object v5, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v5

    if-nez v5, :cond_4

    if-nez v3, :cond_4

    .line 795
    iget-object v5, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->fileFolderIndex:[I

    const/4 v6, -0x1

    aput v6, v5, v1

    goto :goto_8

    :cond_4
    if-nez v3, :cond_8

    .line 799
    :goto_5
    iget-object v5, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v5, v5

    if-ge v4, v5, :cond_6

    .line 800
    iget-object v5, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstFileIndex:[I

    aput v1, v5, v4

    .line 801
    iget-object v5, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    aget-object v5, v5, v4

    iget v5, v5, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-lez v5, :cond_5

    goto :goto_6

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 805
    :cond_6
    :goto_6
    iget-object v5, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v5, v5

    if-ge v4, v5, :cond_7

    goto :goto_7

    .line 806
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Too few folders in archive"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 809
    :cond_8
    :goto_7
    iget-object v5, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->fileFolderIndex:[I

    aput v4, v5, v1

    .line 810
    iget-object v5, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_8

    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 814
    iget-object v5, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    aget-object v5, v5, v4

    iget v5, v5, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-lt v3, v5, :cond_a

    add-int/lit8 v4, v4, 0x1

    move v3, v2

    :cond_a
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 820
    :cond_b
    iput-object v0, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    return-void
.end method

.method private getCurrentStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 902
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 903
    new-instance v0, Ljava/io/ByteArrayInputStream;

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    .line 905
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 909
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 913
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    const-wide v2, 0x7fffffffffffffffL

    .line 914
    invoke-static {v0, v2, v3}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    .line 915
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 918
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0

    .line 906
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No current 7z entry (call getNextEntry() first)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static matches([BI)Z
    .locals 3

    .line 974
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    array-length v0, v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    return v1

    :cond_0
    move p1, v1

    .line 978
    :goto_0
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    array-length v2, v0

    if-ge p1, v2, :cond_2

    .line 979
    aget-byte v2, p0, p1

    aget-byte v0, v0, p1

    if-eq v2, v0, :cond_1

    return v1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private readAllOrBits(Ljava/io/DataInput;I)Ljava/util/BitSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 584
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1, p2}, Ljava/util/BitSet;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    const/4 v1, 0x1

    .line 589
    invoke-virtual {p1, v0, v1}, Ljava/util/BitSet;->set(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 592
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/io/DataInput;I)Ljava/util/BitSet;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private readArchiveProperties(Ljava/io/DataInput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    .line 278
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v0

    long-to-int v0, v0

    .line 279
    new-array v0, v0, [B

    .line 280
    invoke-interface {p1, v0}, Ljava/io/DataInput;->readFully([B)V

    .line 281
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private readBits(Ljava/io/DataInput;I)Ljava/util/BitSet;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 598
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, p2}, Ljava/util/BitSet;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, p2, :cond_2

    if-nez v3, :cond_0

    const/16 v3, 0x80

    .line 604
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v4

    :cond_0
    and-int v5, v4, v3

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v1

    .line 606
    :goto_1
    invoke-virtual {v0, v2, v5}, Ljava/util/BitSet;->set(IZ)V

    ushr-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private readEncodedHeader(Ljava/io/DataInputStream;Lorg/apache/commons/compress/archivers/sevenz/Archive;[B)Ljava/io/DataInputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readStreamsInfo(Ljava/io/DataInput;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 290
    iget-object p1, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 292
    iget-wide v1, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packPos:J

    const-wide/16 v3, 0x20

    add-long/2addr v1, v3

    const-wide/16 v3, 0x0

    add-long/2addr v1, v3

    .line 295
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 296
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/BoundedRandomAccessFileInputStream;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    iget-object p2, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    aget-wide v3, p2, v0

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/BoundedRandomAccessFileInputStream;-><init>(Ljava/io/RandomAccessFile;J)V

    .line 298
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getOrderedCoders()Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v3, v1

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 299
    iget-wide v0, v6, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    const-wide/16 v4, 0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    iget-wide v0, v6, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 302
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSizeForCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;)J

    move-result-wide v4

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/compress/archivers/sevenz/Coders;->addDecoder(Ljava/lang/String;Ljava/io/InputStream;JLorg/apache/commons/compress/archivers/sevenz/Coder;[B)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_0

    .line 300
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Multi input/output stream coders are not yet supported"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 305
    :cond_1
    iget-boolean p2, p1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    if-eqz p2, :cond_2

    .line 306
    new-instance p2, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    move-result-wide v4

    iget-wide v6, p1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    move-object v3, p2

    .line 309
    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    move-result-wide p1

    long-to-int p1, p1

    new-array p1, p1, [B

    .line 310
    new-instance p2, Ljava/io/DataInputStream;

    invoke-direct {p2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 312
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    invoke-virtual {p2}, Ljava/io/DataInputStream;->close()V

    .line 316
    new-instance p2, Ljava/io/DataInputStream;

    new-instance p3, Ljava/io/ByteArrayInputStream;

    invoke-direct {p3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p2, p3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p2

    :catchall_0
    move-exception p1

    .line 314
    invoke-virtual {p2}, Ljava/io/DataInputStream;->close()V

    throw p1
.end method

.method private readFilesInfo(Ljava/io/DataInput;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 613
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v3

    long-to-int v3, v3

    .line 614
    new-array v4, v3, [Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_0

    .line 616
    new-instance v7, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    invoke-direct {v7}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;-><init>()V

    aput-object v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    move-object v7, v6

    move-object v8, v7

    .line 622
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v9

    const-wide/16 v10, 0x0

    if-nez v9, :cond_8

    move v1, v5

    move v9, v1

    move v12, v9

    :goto_2
    if-ge v1, v3, :cond_7

    .line 750
    aget-object v13, v4, v1

    const/4 v14, 0x1

    if-nez v6, :cond_1

    :goto_3
    move v15, v14

    goto :goto_4

    :cond_1
    invoke-virtual {v6, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    if-nez v15, :cond_2

    goto :goto_3

    :cond_2
    move v15, v5

    :goto_4
    invoke-virtual {v13, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasStream(Z)V

    .line 751
    aget-object v13, v4, v1

    invoke-virtual {v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 752
    aget-object v13, v4, v1

    invoke-virtual {v13, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setDirectory(Z)V

    .line 753
    aget-object v13, v4, v1

    invoke-virtual {v13, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setAntiItem(Z)V

    .line 754
    aget-object v13, v4, v1

    iget-object v14, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    iget-object v14, v14, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->hasCrc:Ljava/util/BitSet;

    invoke-virtual {v14, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    invoke-virtual {v13, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasCrc(Z)V

    .line 755
    aget-object v13, v4, v1

    iget-object v14, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    iget-object v14, v14, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->crcs:[J

    aget-wide v14, v14, v9

    invoke-virtual {v13, v14, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setCrcValue(J)V

    .line 756
    aget-object v13, v4, v1

    iget-object v14, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    iget-object v14, v14, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->unpackSizes:[J

    aget-wide v14, v14, v9

    invoke-virtual {v13, v14, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setSize(J)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 759
    :cond_3
    aget-object v13, v4, v1

    if-nez v7, :cond_4

    goto :goto_5

    :cond_4
    invoke-virtual {v7, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    if-nez v15, :cond_5

    goto :goto_5

    :cond_5
    move v14, v5

    :goto_5
    invoke-virtual {v13, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setDirectory(Z)V

    .line 760
    aget-object v13, v4, v1

    if-nez v8, :cond_6

    move v14, v5

    goto :goto_6

    :cond_6
    invoke-virtual {v8, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    :goto_6
    invoke-virtual {v13, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setAntiItem(Z)V

    .line 761
    aget-object v13, v4, v1

    invoke-virtual {v13, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasCrc(Z)V

    .line 762
    aget-object v13, v4, v1

    invoke-virtual {v13, v10, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setSize(J)V

    add-int/lit8 v12, v12, 0x1

    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 766
    :cond_7
    iput-object v4, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 767
    invoke-direct {v0, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->calculateStreamMap(Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    return-void

    .line 626
    :cond_8
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v12

    const-string v14, "Unimplemented"

    packed-switch v9, :pswitch_data_0

    .line 740
    :pswitch_0
    invoke-static {v1, v12, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/io/DataInput;J)J

    move-result-wide v10

    cmp-long v2, v10, v12

    if-ltz v2, :cond_1a

    goto/16 :goto_d

    .line 732
    :pswitch_1
    invoke-static {v1, v12, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/io/DataInput;J)J

    move-result-wide v9

    cmp-long v9, v9, v12

    if-ltz v9, :cond_9

    goto/16 :goto_d

    .line 733
    :cond_9
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Incomplete kDummy property"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 726
    :pswitch_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "kStartPos is unsupported, please report"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 712
    :pswitch_3
    invoke-direct {v0, v1, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/io/DataInput;I)Ljava/util/BitSet;

    move-result-object v9

    .line 713
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v10

    if-nez v10, :cond_b

    move v10, v5

    :goto_8
    if-ge v10, v3, :cond_19

    .line 718
    aget-object v11, v4, v10

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    invoke-virtual {v11, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasWindowsAttributes(Z)V

    .line 719
    aget-object v11, v4, v10

    invoke-virtual {v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasWindowsAttributes()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 720
    aget-object v11, v4, v10

    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readInt()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setWindowsAttributes(I)V

    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 715
    :cond_b
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 698
    :pswitch_4
    invoke-direct {v0, v1, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/io/DataInput;I)Ljava/util/BitSet;

    move-result-object v9

    .line 699
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v10

    if-nez v10, :cond_d

    move v10, v5

    :goto_9
    if-ge v10, v3, :cond_19

    .line 704
    aget-object v11, v4, v10

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    invoke-virtual {v11, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasLastModifiedDate(Z)V

    .line 705
    aget-object v11, v4, v10

    invoke-virtual {v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasLastModifiedDate()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 706
    aget-object v11, v4, v10

    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setLastModifiedDate(J)V

    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 701
    :cond_d
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 684
    :pswitch_5
    invoke-direct {v0, v1, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/io/DataInput;I)Ljava/util/BitSet;

    move-result-object v9

    .line 685
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v10

    if-nez v10, :cond_f

    move v10, v5

    :goto_a
    if-ge v10, v3, :cond_19

    .line 690
    aget-object v11, v4, v10

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    invoke-virtual {v11, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasAccessDate(Z)V

    .line 691
    aget-object v11, v4, v10

    invoke-virtual {v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasAccessDate()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 692
    aget-object v11, v4, v10

    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setAccessDate(J)V

    :cond_e
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 687
    :cond_f
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 670
    :pswitch_6
    invoke-direct {v0, v1, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/io/DataInput;I)Ljava/util/BitSet;

    move-result-object v9

    .line 671
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v10

    if-nez v10, :cond_11

    move v10, v5

    :goto_b
    if-ge v10, v3, :cond_19

    .line 676
    aget-object v11, v4, v10

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    invoke-virtual {v11, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasCreationDate(Z)V

    .line 677
    aget-object v11, v4, v10

    invoke-virtual {v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasCreationDate()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 678
    aget-object v11, v4, v10

    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setCreationDate(J)V

    :cond_10
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 673
    :cond_11
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 647
    :pswitch_7
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v9

    if-nez v9, :cond_16

    const-wide/16 v14, 0x1

    sub-long/2addr v12, v14

    and-long/2addr v14, v12

    cmp-long v9, v14, v10

    if-nez v9, :cond_15

    long-to-int v9, v12

    .line 654
    new-array v10, v9, [B

    .line 655
    invoke-interface {v1, v10}, Ljava/io/DataInput;->readFully([B)V

    move v11, v5

    move v12, v11

    move v13, v12

    :goto_c
    if-ge v11, v9, :cond_13

    .line 659
    aget-byte v14, v10, v11

    if-nez v14, :cond_12

    add-int/lit8 v14, v11, 0x1

    aget-byte v14, v10, v14

    if-nez v14, :cond_12

    add-int/lit8 v14, v13, 0x1

    .line 660
    aget-object v13, v4, v13

    new-instance v15, Ljava/lang/String;

    sub-int v5, v11, v12

    const-string v2, "UTF-16LE"

    invoke-direct {v15, v10, v12, v5, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v13, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setName(Ljava/lang/String;)V

    add-int/lit8 v12, v11, 0x2

    move v13, v14

    :cond_12
    add-int/lit8 v11, v11, 0x2

    move-object/from16 v2, p2

    const/4 v5, 0x0

    goto :goto_c

    :cond_13
    if-ne v12, v9, :cond_14

    if-ne v13, v3, :cond_14

    goto :goto_d

    .line 665
    :cond_14
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error parsing file names"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 652
    :cond_15
    new-instance v1, Ljava/io/IOException;

    const-string v2, "File names length invalid"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 649
    :cond_16
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Not implemented"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_8
    if-eqz v6, :cond_17

    .line 643
    invoke-virtual {v6}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/io/DataInput;I)Ljava/util/BitSet;

    move-result-object v2

    move-object v8, v2

    goto :goto_d

    .line 641
    :cond_17
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Header format error: kEmptyStream must appear before kAnti"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_9
    if-eqz v6, :cond_18

    .line 636
    invoke-virtual {v6}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/io/DataInput;I)Ljava/util/BitSet;

    move-result-object v2

    move-object v7, v2

    goto :goto_d

    .line 634
    :cond_18
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Header format error: kEmptyStream must appear before kEmptyFile"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 629
    :pswitch_a
    invoke-direct {v0, v1, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/io/DataInput;I)Ljava/util/BitSet;

    move-result-object v2

    move-object v6, v2

    :cond_19
    :goto_d
    move-object/from16 v2, p2

    const/4 v5, 0x0

    goto/16 :goto_1

    .line 741
    :cond_1a
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incomplete property of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private readFolder(Ljava/io/DataInput;)Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 505
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;

    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/sevenz/Folder;-><init>()V

    .line 507
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v2

    long-to-int v2, v2

    .line 508
    new-array v3, v2, [Lorg/apache/commons/compress/archivers/sevenz/Coder;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-wide v8, v4

    move-wide v10, v8

    move v7, v6

    :goto_0
    const-wide/16 v12, 0x1

    if-ge v7, v2, :cond_6

    .line 512
    new-instance v14, Lorg/apache/commons/compress/archivers/sevenz/Coder;

    invoke-direct {v14}, Lorg/apache/commons/compress/archivers/sevenz/Coder;-><init>()V

    aput-object v14, v3, v7

    .line 513
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v14

    and-int/lit8 v15, v14, 0xf

    and-int/lit8 v16, v14, 0x10

    const/16 v17, 0x1

    if-nez v16, :cond_0

    move/from16 v16, v17

    goto :goto_1

    :cond_0
    move/from16 v16, v6

    :goto_1
    and-int/lit8 v18, v14, 0x20

    if-eqz v18, :cond_1

    move/from16 v18, v17

    goto :goto_2

    :cond_1
    move/from16 v18, v6

    :goto_2
    and-int/lit16 v14, v14, 0x80

    if-eqz v14, :cond_2

    goto :goto_3

    :cond_2
    move/from16 v17, v6

    .line 519
    :goto_3
    aget-object v14, v3, v7

    new-array v15, v15, [B

    iput-object v15, v14, Lorg/apache/commons/compress/archivers/sevenz/Coder;->decompressionMethodId:[B

    .line 520
    aget-object v14, v3, v7

    iget-object v14, v14, Lorg/apache/commons/compress/archivers/sevenz/Coder;->decompressionMethodId:[B

    invoke-interface {v0, v14}, Ljava/io/DataInput;->readFully([B)V

    if-eqz v16, :cond_3

    .line 522
    aget-object v14, v3, v7

    iput-wide v12, v14, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    .line 523
    aget-object v14, v3, v7

    iput-wide v12, v14, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    goto :goto_4

    .line 525
    :cond_3
    aget-object v12, v3, v7

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v13

    iput-wide v13, v12, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    .line 526
    aget-object v12, v3, v7

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v13

    iput-wide v13, v12, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    .line 528
    :goto_4
    aget-object v12, v3, v7

    iget-wide v12, v12, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    add-long/2addr v8, v12

    .line 529
    aget-object v12, v3, v7

    iget-wide v12, v12, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    add-long/2addr v10, v12

    if-eqz v18, :cond_4

    .line 531
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v12

    .line 532
    aget-object v14, v3, v7

    long-to-int v12, v12

    new-array v12, v12, [B

    iput-object v12, v14, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    .line 533
    aget-object v12, v3, v7

    iget-object v12, v12, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    invoke-interface {v0, v12}, Ljava/io/DataInput;->readFully([B)V

    :cond_4
    if-nez v17, :cond_5

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 537
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Alternative methods are unsupported, please report. The reference implementation doesn\'t support them either."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 541
    :cond_6
    iput-object v3, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->coders:[Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 542
    iput-wide v8, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalInputStreams:J

    .line 543
    iput-wide v10, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalOutputStreams:J

    cmp-long v2, v10, v4

    if-eqz v2, :cond_e

    sub-long/2addr v10, v12

    long-to-int v2, v10

    .line 549
    new-array v3, v2, [Lorg/apache/commons/compress/archivers/sevenz/BindPair;

    move v4, v6

    :goto_5
    if-ge v4, v2, :cond_7

    .line 551
    new-instance v5, Lorg/apache/commons/compress/archivers/sevenz/BindPair;

    invoke-direct {v5}, Lorg/apache/commons/compress/archivers/sevenz/BindPair;-><init>()V

    aput-object v5, v3, v4

    .line 552
    aget-object v5, v3, v4

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v14

    iput-wide v14, v5, Lorg/apache/commons/compress/archivers/sevenz/BindPair;->inIndex:J

    .line 553
    aget-object v5, v3, v4

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v14

    iput-wide v14, v5, Lorg/apache/commons/compress/archivers/sevenz/BindPair;->outIndex:J

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 555
    :cond_7
    iput-object v3, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->bindPairs:[Lorg/apache/commons/compress/archivers/sevenz/BindPair;

    cmp-long v2, v8, v10

    if-ltz v2, :cond_d

    sub-long v2, v8, v10

    long-to-int v4, v2

    .line 561
    new-array v5, v4, [J

    cmp-long v2, v2, v12

    if-nez v2, :cond_b

    move v0, v6

    :goto_6
    long-to-int v2, v8

    if-ge v0, v2, :cond_9

    .line 565
    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->findBindPairForInStream(I)I

    move-result v3

    if-gez v3, :cond_8

    goto :goto_7

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_9
    :goto_7
    if-eq v0, v2, :cond_a

    int-to-long v2, v0

    .line 572
    aput-wide v2, v5, v6

    goto :goto_9

    .line 570
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Couldn\'t find stream\'s bind pair index"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_8
    if-ge v6, v4, :cond_c

    .line 575
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v2

    aput-wide v2, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 578
    :cond_c
    :goto_9
    iput-object v5, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->packedStreams:[J

    return-object v1

    .line 558
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Total input streams can\'t be less than the number of bind pairs"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 546
    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Total output streams can\'t be 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readHeader(Ljava/io/DataInput;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 250
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readArchiveProperties(Ljava/io/DataInput;)V

    .line 251
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    :cond_0
    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 260
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readStreamsInfo(Ljava/io/DataInput;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 261
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    :cond_1
    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 265
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readFilesInfo(Ljava/io/DataInput;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 266
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    :cond_2
    if-nez v0, :cond_3

    return-void

    .line 270
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Badly terminated header, found "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 255
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Additional streams unsupported"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readHeaders([B)Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 180
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 181
    sget-object v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 185
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    .line 186
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-nez v0, :cond_4

    const-wide v0, 0xffffffffL

    .line 192
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    int-to-long v3, v3

    and-long/2addr v0, v3

    .line 193
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readStartHeader(J)Lorg/apache/commons/compress/archivers/sevenz/StartHeader;

    move-result-object v0

    .line 195
    iget-wide v3, v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderSize:J

    long-to-int v1, v3

    int-to-long v3, v1

    .line 196
    iget-wide v5, v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderSize:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 199
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    const-wide/16 v4, 0x20

    iget-wide v6, v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderOffset:J

    add-long/2addr v6, v4

    invoke-virtual {v3, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 200
    new-array v1, v1, [B

    .line 201
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 202
    new-instance v3, Ljava/util/zip/CRC32;

    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    .line 203
    invoke-virtual {v3, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 204
    iget-wide v4, v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderCrc:J

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 208
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 209
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 211
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/sevenz/Archive;-><init>()V

    .line 212
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    const/16 v4, 0x17

    if-ne v3, v4, :cond_0

    .line 214
    invoke-direct {p0, v1, v0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readEncodedHeader(Ljava/io/DataInputStream;Lorg/apache/commons/compress/archivers/sevenz/Archive;[B)Ljava/io/DataInputStream;

    move-result-object v1

    .line 217
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/sevenz/Archive;-><init>()V

    .line 218
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    :cond_0
    if-ne v3, v2, :cond_1

    .line 221
    invoke-direct {p0, v1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readHeader(Ljava/io/DataInput;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 222
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    return-object v0

    .line 224
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Broken or unsupported archive: no Header"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 205
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "NextHeader CRC mismatch"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 197
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot handle nextHeaderSize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 188
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "Unsupported 7z version (%d,%d)"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 182
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Bad 7z signature"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readPackInfo(Ljava/io/DataInput;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v0

    iput-wide v0, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packPos:J

    .line 347
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v0

    .line 348
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x9

    if-ne v2, v4, :cond_1

    long-to-int v2, v0

    .line 350
    new-array v2, v2, [J

    iput-object v2, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    move v2, v3

    .line 351
    :goto_0
    iget-object v4, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 352
    iget-object v4, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v5

    aput-wide v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 354
    :cond_0
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    :cond_1
    const/16 v4, 0xa

    if-ne v2, v4, :cond_4

    long-to-int v0, v0

    .line 358
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/io/DataInput;I)Ljava/util/BitSet;

    move-result-object v1

    iput-object v1, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packCrcsDefined:Ljava/util/BitSet;

    .line 359
    new-array v1, v0, [J

    iput-object v1, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packCrcs:[J

    :goto_1
    if-ge v3, v0, :cond_3

    .line 361
    iget-object v1, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packCrcsDefined:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 362
    iget-object v1, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packCrcs:[J

    const-wide v4, 0xffffffffL

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    int-to-long v6, v2

    and-long/2addr v4, v6

    aput-wide v4, v1, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 366
    :cond_3
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    :cond_4
    if-nez v2, :cond_5

    return-void

    .line 370
    :cond_5
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Badly terminated PackInfo ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readStartHeader(J)Lorg/apache/commons/compress/archivers/sevenz/StartHeader;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;-><init>()V

    const/4 v1, 0x0

    .line 233
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v9, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    new-instance v4, Lorg/apache/commons/compress/archivers/sevenz/BoundedRandomAccessFileInputStream;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    const-wide/16 v5, 0x14

    invoke-direct {v4, v3, v5, v6}, Lorg/apache/commons/compress/archivers/sevenz/BoundedRandomAccessFileInputStream;-><init>(Ljava/io/RandomAccessFile;J)V

    const-wide/16 v5, 0x14

    move-object v3, v9

    move-wide v7, p1

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    invoke-direct {v2, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 235
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p1

    iput-wide p1, v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderOffset:J

    .line 236
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p1

    iput-wide p1, v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderSize:J

    const-wide p1, 0xffffffffL

    .line 237
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    int-to-long v3, v1

    and-long/2addr p1, v3

    iput-wide p1, v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderCrc:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    :cond_0
    throw p1
.end method

.method private readStreamsInfo(Ljava/io/DataInput;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 323
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readPackInfo(Ljava/io/DataInput;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 324
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 328
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUnpackInfo(Ljava/io/DataInput;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 329
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 332
    iput-object v1, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    :goto_0
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 336
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readSubStreamsInfo(Ljava/io/DataInput;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 337
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    :cond_2
    if-nez v0, :cond_3

    return-void

    .line 341
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Badly terminated StreamsInfo"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readSubStreamsInfo(Ljava/io/DataInput;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p2

    .line 422
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_0

    aget-object v6, v1, v4

    .line 423
    iput v5, v6, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 425
    :cond_0
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v1, v1

    .line 427
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    const/16 v4, 0xd

    if-ne v2, v4, :cond_2

    .line 430
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v2, v1

    move v4, v3

    move v6, v4

    :goto_1
    if-ge v6, v2, :cond_1

    aget-object v7, v1, v6

    .line 431
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v8

    long-to-int v10, v8

    .line 432
    iput v10, v7, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    int-to-long v10, v4

    add-long/2addr v10, v8

    long-to-int v4, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 435
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    move v1, v4

    .line 438
    :cond_2
    new-instance v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    invoke-direct {v4}, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;-><init>()V

    .line 439
    new-array v6, v1, [J

    iput-object v6, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->unpackSizes:[J

    .line 440
    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v6, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->hasCrc:Ljava/util/BitSet;

    .line 441
    new-array v1, v1, [J

    iput-object v1, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->crcs:[J

    .line 444
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v6, v1

    move v7, v3

    move v8, v7

    :goto_2
    const/16 v9, 0x9

    if-ge v7, v6, :cond_5

    aget-object v10, v1, v7

    .line 445
    iget v11, v10, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-nez v11, :cond_3

    goto :goto_4

    :cond_3
    const-wide/16 v11, 0x0

    if-ne v2, v9, :cond_4

    move v9, v3

    .line 450
    :goto_3
    iget v13, v10, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    sub-int/2addr v13, v5

    if-ge v9, v13, :cond_4

    .line 451
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v13

    .line 452
    iget-object v15, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->unpackSizes:[J

    add-int/lit8 v16, v8, 0x1

    aput-wide v13, v15, v8

    add-long/2addr v11, v13

    add-int/lit8 v9, v9, 0x1

    move/from16 v8, v16

    goto :goto_3

    .line 456
    :cond_4
    iget-object v9, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->unpackSizes:[J

    add-int/lit8 v13, v8, 0x1

    invoke-virtual {v10}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    move-result-wide v14

    sub-long/2addr v14, v11

    aput-wide v14, v9, v8

    move v8, v13

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    if-ne v2, v9, :cond_6

    .line 459
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    .line 463
    :cond_6
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v6, v1

    move v7, v3

    move v8, v7

    :goto_5
    if-ge v7, v6, :cond_9

    aget-object v9, v1, v7

    .line 464
    iget v10, v9, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-ne v10, v5, :cond_7

    iget-boolean v10, v9, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    if-nez v10, :cond_8

    .line 465
    :cond_7
    iget v9, v9, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    add-int/2addr v8, v9

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_9
    const/16 v1, 0xa

    if-ne v2, v1, :cond_f

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    .line 470
    invoke-direct {v1, v6, v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/io/DataInput;I)Ljava/util/BitSet;

    move-result-object v2

    .line 471
    new-array v7, v8, [J

    move v9, v3

    :goto_6
    if-ge v9, v8, :cond_b

    .line 473
    invoke-virtual {v2, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_a

    const-wide v10, 0xffffffffL

    .line 474
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readInt()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v12

    int-to-long v12, v12

    and-long/2addr v10, v12

    aput-wide v10, v7, v9

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 479
    :cond_b
    iget-object v8, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v9, v8

    move v10, v3

    move v11, v10

    move v12, v11

    :goto_7
    if-ge v10, v9, :cond_e

    aget-object v13, v8, v10

    .line 480
    iget v14, v13, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-ne v14, v5, :cond_c

    iget-boolean v14, v13, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    if-eqz v14, :cond_c

    .line 481
    iget-object v14, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->hasCrc:Ljava/util/BitSet;

    invoke-virtual {v14, v11, v5}, Ljava/util/BitSet;->set(IZ)V

    .line 482
    iget-object v14, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->crcs:[J

    iget-wide v5, v13, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    aput-wide v5, v14, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_c
    move v5, v3

    .line 485
    :goto_8
    iget v6, v13, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-ge v5, v6, :cond_d

    .line 486
    iget-object v6, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->hasCrc:Ljava/util/BitSet;

    invoke-virtual {v2, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    invoke-virtual {v6, v11, v14}, Ljava/util/BitSet;->set(IZ)V

    .line 487
    iget-object v6, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->crcs:[J

    aget-wide v16, v7, v12

    aput-wide v16, v6, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_d
    :goto_9
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v6, p1

    const/4 v5, 0x1

    goto :goto_7

    .line 494
    :cond_e
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    goto :goto_a

    :cond_f
    move-object/from16 v1, p0

    :goto_a
    if-nez v2, :cond_10

    .line 501
    iput-object v4, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    return-void

    .line 498
    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Badly terminated SubStreamsInfo"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static readUint64(Ljava/io/DataInput;)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 949
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    const/16 v4, 0x80

    const/4 v5, 0x0

    move-wide v6, v2

    :goto_0
    const/16 v8, 0x8

    if-ge v5, v8, :cond_1

    int-to-long v9, v4

    and-long/2addr v9, v0

    cmp-long v9, v9, v2

    if-nez v9, :cond_0

    add-int/lit8 v4, v4, -0x1

    int-to-long v2, v4

    and-long/2addr v0, v2

    mul-int/2addr v5, v8

    shl-long/2addr v0, v5

    or-long/2addr v0, v6

    return-wide v0

    .line 956
    :cond_0
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v8

    int-to-long v8, v8

    mul-int/lit8 v10, v5, 0x8

    shl-long/2addr v8, v10

    or-long/2addr v6, v8

    ushr-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-wide v6
.end method

.method private readUnpackInfo(Ljava/io/DataInput;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 375
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_9

    .line 379
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v0

    long-to-int v0, v0

    .line 380
    new-array v1, v0, [Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 381
    iput-object v1, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 382
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p2

    if-nez p2, :cond_8

    const/4 p2, 0x0

    move v2, p2

    :goto_0
    if-ge v2, v0, :cond_0

    .line 387
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readFolder(Ljava/io/DataInput;)Lorg/apache/commons/compress/archivers/sevenz/Folder;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 390
    :cond_0
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_7

    move v2, p2

    :goto_1
    if-ge v2, v0, :cond_2

    .line 394
    aget-object v3, v1, v2

    .line 395
    iget-wide v4, v3, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalOutputStreams:J

    long-to-int v4, v4

    new-array v4, v4, [J

    iput-object v4, v3, Lorg/apache/commons/compress/archivers/sevenz/Folder;->unpackSizes:[J

    move v4, p2

    :goto_2
    int-to-long v5, v4

    .line 396
    iget-wide v7, v3, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalOutputStreams:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    .line 397
    iget-object v5, v3, Lorg/apache/commons/compress/archivers/sevenz/Folder;->unpackSizes:[J

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v6

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 401
    :cond_2
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_5

    .line 403
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/io/DataInput;I)Ljava/util/BitSet;

    move-result-object v2

    move v3, p2

    :goto_3
    if-ge v3, v0, :cond_4

    .line 405
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 406
    aget-object v4, v1, v3

    const/4 v5, 0x1

    iput-boolean v5, v4, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    .line 407
    aget-object v4, v1, v3

    const-wide v5, 0xffffffffL

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    iput-wide v5, v4, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    goto :goto_4

    .line 409
    :cond_3
    aget-object v4, v1, v3

    iput-boolean p2, v4, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 413
    :cond_4
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    :cond_5
    if-nez v2, :cond_6

    return-void

    .line 417
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Badly terminated UnpackInfo"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 392
    :cond_7
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected kCodersUnpackSize, got "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 384
    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string p2, "External unsupported"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 377
    :cond_9
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected kFolder, got "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static skipBytesFully(Ljava/io/DataInput;J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    const-wide/16 v1, 0x0

    if-gez v0, :cond_0

    return-wide v1

    :cond_0
    move-wide v3, v1

    :goto_0
    const-wide/32 v5, 0x7fffffff

    cmp-long v0, p1, v5

    if-lez v0, :cond_2

    .line 992
    invoke-static {p0, v5, v6}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/io/DataInput;J)J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-nez v0, :cond_1

    return-wide v3

    :cond_1
    add-long/2addr v3, v5

    sub-long/2addr p1, v5

    goto :goto_0

    :cond_2
    :goto_1
    cmp-long v0, p1, v1

    if-lez v0, :cond_4

    long-to-int v0, p1

    .line 1000
    invoke-interface {p0, v0}, Ljava/io/DataInput;->skipBytes(I)I

    move-result v0

    if-nez v0, :cond_3

    return-wide v3

    :cond_3
    int-to-long v5, v0

    add-long/2addr v3, v5

    sub-long/2addr p1, v5

    goto :goto_1

    :cond_4
    return-wide v3
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 133
    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    .line 136
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    if-eqz v0, :cond_0

    .line 137
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 139
    :cond_0
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 135
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    .line 136
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    if-eqz v3, :cond_1

    .line 137
    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 139
    :cond_1
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public getEntries()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNextEntry()Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 155
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    .line 156
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    aget-object v0, v0, v1

    .line 157
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->buildDecodingStream()V

    return-object v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 898
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getCurrentStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 930
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 944
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getCurrentStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1012
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/Archive;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
