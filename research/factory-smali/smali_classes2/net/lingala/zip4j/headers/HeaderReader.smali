.class public Lnet/lingala/zip4j/headers/HeaderReader;
.super Ljava/lang/Object;
.source "HeaderReader.java"


# instance fields
.field private final intBuff:[B

.field private final rawIO:Lnet/lingala/zip4j/util/RawIO;

.field private zipModel:Lnet/lingala/zip4j/model/ZipModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lnet/lingala/zip4j/util/RawIO;

    invoke-direct {v0}, Lnet/lingala/zip4j/util/RawIO;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    .line 64
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->intBuff:[B

    return-void
.end method

.method private getNumberOfEntriesInCentralDirectory(Lnet/lingala/zip4j/model/ZipModel;)J
    .locals 2
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;

    .line 679
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getTotalNumberOfEntriesInCentralDirectory()J

    move-result-wide v0

    return-wide v0

    .line 683
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getTotalNumberOfEntriesInCentralDirectory()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private locateOffsetOfEndOfCentralDirectory(Ljava/io/RandomAccessFile;)J
    .locals 8
    .param p1, "randomAccessFile"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 687
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    .line 688
    .local v0, "zipFileSize":J
    const-wide/16 v2, 0x16

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 692
    sub-long v4, v0, v2

    invoke-direct {p0, p1, v4, v5}, Lnet/lingala/zip4j/headers/HeaderReader;->seekInCurrentPart(Ljava/io/RandomAccessFile;J)V

    .line 693
    iget-object v4, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v4, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v4

    int-to-long v4, v4

    sget-object v6, Lnet/lingala/zip4j/headers/HeaderSignature;->END_OF_CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v6}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 694
    sub-long v2, v0, v2

    return-wide v2

    .line 697
    :cond_0
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/headers/HeaderReader;->locateOffsetOfEndOfCentralDirectoryByReverseSeek(Ljava/io/RandomAccessFile;)J

    move-result-wide v2

    return-wide v2

    .line 689
    :cond_1
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    const-string v3, "Zip file size less than size of zip headers. Probably not a zip file."

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private locateOffsetOfEndOfCentralDirectoryByReverseSeek(Ljava/io/RandomAccessFile;)J
    .locals 10
    .param p1, "randomAccessFile"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 701
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x16

    sub-long/2addr v0, v2

    .line 703
    .local v0, "currentFilePointer":J
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x10000

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    nop

    .local v4, "numberOfBytesToRead":J
    :cond_0
    :goto_0
    move-wide v2, v4

    .line 705
    .end local v4    # "numberOfBytesToRead":J
    .local v2, "numberOfBytesToRead":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    cmp-long v4, v0, v4

    if-lez v4, :cond_2

    .line 706
    const-wide/16 v4, 0x1

    sub-long v6, v0, v4

    move-wide v0, v6

    invoke-direct {p0, p1, v6, v7}, Lnet/lingala/zip4j/headers/HeaderReader;->seekInCurrentPart(Ljava/io/RandomAccessFile;J)V

    .line 707
    iget-object v6, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v6, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v6

    int-to-long v6, v6

    sget-object v8, Lnet/lingala/zip4j/headers/HeaderSignature;->END_OF_CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v8}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 708
    return-wide v0

    .line 710
    :cond_1
    sub-long v4, v2, v4

    .end local v2    # "numberOfBytesToRead":J
    .restart local v4    # "numberOfBytesToRead":J
    goto :goto_0

    .line 713
    .end local v4    # "numberOfBytesToRead":J
    .restart local v2    # "numberOfBytesToRead":J
    :cond_2
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    const-string v5, "Zip headers not found. Probably not a zip file"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private parseExtraDataRecords([BI)Ljava/util/List;
    .locals 7
    .param p1, "extraFieldBuf"    # [B
    .param p2, "extraFieldLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/ExtraDataRecord;",
            ">;"
        }
    .end annotation

    .line 304
    const/4 v0, 0x0

    .line 305
    .local v0, "counter":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v1, "extraDataRecords":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/ExtraDataRecord;>;"
    :goto_0
    if-ge v0, p2, :cond_1

    .line 307
    new-instance v2, Lnet/lingala/zip4j/model/ExtraDataRecord;

    invoke-direct {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;-><init>()V

    .line 308
    .local v2, "extraDataRecord":Lnet/lingala/zip4j/model/ExtraDataRecord;
    iget-object v3, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v3, p1, v0}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian([BI)I

    move-result v3

    .line 309
    .local v3, "header":I
    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lnet/lingala/zip4j/model/ExtraDataRecord;->setHeader(J)V

    .line 310
    add-int/lit8 v0, v0, 0x2

    .line 312
    iget-object v4, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v4, p1, v0}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian([BI)I

    move-result v4

    .line 313
    .local v4, "sizeOfRec":I
    invoke-virtual {v2, v4}, Lnet/lingala/zip4j/model/ExtraDataRecord;->setSizeOfData(I)V

    .line 314
    add-int/lit8 v0, v0, 0x2

    .line 316
    if-lez v4, :cond_0

    .line 317
    new-array v5, v4, [B

    .line 318
    .local v5, "data":[B
    const/4 v6, 0x0

    invoke-static {p1, v0, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    invoke-virtual {v2, v5}, Lnet/lingala/zip4j/model/ExtraDataRecord;->setData([B)V

    .line 321
    .end local v5    # "data":[B
    :cond_0
    add-int/2addr v0, v4

    .line 322
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    .end local v2    # "extraDataRecord":Lnet/lingala/zip4j/model/ExtraDataRecord;
    .end local v3    # "header":I
    .end local v4    # "sizeOfRec":I
    goto :goto_0

    .line 324
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    move-object v2, v1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method private readAesExtraDataRecord(Ljava/util/List;Lnet/lingala/zip4j/util/RawIO;)Lnet/lingala/zip4j/model/AESExtraDataRecord;
    .locals 7
    .param p2, "rawIO"    # Lnet/lingala/zip4j/util/RawIO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/ExtraDataRecord;",
            ">;",
            "Lnet/lingala/zip4j/util/RawIO;",
            ")",
            "Lnet/lingala/zip4j/model/AESExtraDataRecord;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 642
    .local p1, "extraDataRecords":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/ExtraDataRecord;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 643
    return-object v0

    .line 646
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/lingala/zip4j/model/ExtraDataRecord;

    .line 647
    .local v2, "extraDataRecord":Lnet/lingala/zip4j/model/ExtraDataRecord;
    if-nez v2, :cond_1

    .line 648
    goto :goto_0

    .line 651
    :cond_1
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getHeader()J

    move-result-wide v3

    sget-object v5, Lnet/lingala/zip4j/headers/HeaderSignature;->AES_EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v5}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 653
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getData()[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 657
    new-instance v0, Lnet/lingala/zip4j/model/AESExtraDataRecord;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/AESExtraDataRecord;-><init>()V

    .line 659
    .local v0, "aesExtraDataRecord":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    sget-object v1, Lnet/lingala/zip4j/headers/HeaderSignature;->AES_EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 660
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setDataSize(I)V

    .line 662
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getData()[B

    move-result-object v1

    .line 663
    .local v1, "aesData":[B
    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian([BI)I

    move-result v4

    invoke-static {v4}, Lnet/lingala/zip4j/model/enums/AesVersion;->getFromVersionNumber(I)Lnet/lingala/zip4j/model/enums/AesVersion;

    move-result-object v4

    invoke-virtual {v0, v4}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setAesVersion(Lnet/lingala/zip4j/model/enums/AesVersion;)V

    .line 664
    const/4 v4, 0x2

    new-array v5, v4, [B

    .line 665
    .local v5, "vendorIDBytes":[B
    invoke-static {v1, v4, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 666
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v3}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setVendorID(Ljava/lang/String;)V

    .line 667
    const/4 v3, 0x4

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getAesKeyStrengthFromRawCode(I)Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setAesKeyStrength(Lnet/lingala/zip4j/model/enums/AesKeyStrength;)V

    .line 668
    const/4 v3, 0x5

    .line 669
    invoke-virtual {p2, v1, v3}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian([BI)I

    move-result v3

    invoke-static {v3}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->getCompressionMethodFromCode(I)Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v3

    .line 668
    invoke-virtual {v0, v3}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setCompressionMethod(Lnet/lingala/zip4j/model/enums/CompressionMethod;)V

    .line 671
    return-object v0

    .line 654
    .end local v0    # "aesExtraDataRecord":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    .end local v1    # "aesData":[B
    .end local v5    # "vendorIDBytes":[B
    :cond_2
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "corrupt AES extra data records"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 673
    .end local v2    # "extraDataRecord":Lnet/lingala/zip4j/model/ExtraDataRecord;
    :cond_3
    goto :goto_0

    .line 675
    :cond_4
    return-object v0
.end method

.method private readAesExtraDataRecord(Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/util/RawIO;)V
    .locals 2
    .param p1, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p2, "rawIO"    # Lnet/lingala/zip4j/util/RawIO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 616
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 620
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lnet/lingala/zip4j/headers/HeaderReader;->readAesExtraDataRecord(Ljava/util/List;Lnet/lingala/zip4j/util/RawIO;)Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v0

    .line 621
    .local v0, "aesExtraDataRecord":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    if-eqz v0, :cond_1

    .line 622
    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/FileHeader;->setAesExtraDataRecord(Lnet/lingala/zip4j/model/AESExtraDataRecord;)V

    .line 623
    sget-object v1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/FileHeader;->setEncryptionMethod(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V

    .line 625
    :cond_1
    return-void

    .line 617
    .end local v0    # "aesExtraDataRecord":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    :cond_2
    :goto_0
    return-void
.end method

.method private readAesExtraDataRecord(Lnet/lingala/zip4j/model/LocalFileHeader;Lnet/lingala/zip4j/util/RawIO;)V
    .locals 2
    .param p1, "localFileHeader"    # Lnet/lingala/zip4j/model/LocalFileHeader;
    .param p2, "rawIO"    # Lnet/lingala/zip4j/util/RawIO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 628
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 632
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lnet/lingala/zip4j/headers/HeaderReader;->readAesExtraDataRecord(Ljava/util/List;Lnet/lingala/zip4j/util/RawIO;)Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v0

    .line 633
    .local v0, "aesExtraDataRecord":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    if-eqz v0, :cond_1

    .line 634
    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->setAesExtraDataRecord(Lnet/lingala/zip4j/model/AESExtraDataRecord;)V

    .line 635
    sget-object v1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->setEncryptionMethod(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V

    .line 637
    :cond_1
    return-void

    .line 629
    .end local v0    # "aesExtraDataRecord":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    :cond_2
    :goto_0
    return-void
.end method

.method private readCentralDirectory(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/util/RawIO;Ljava/nio/charset/Charset;)Lnet/lingala/zip4j/model/CentralDirectory;
    .locals 24
    .param p1, "zip4jRaf"    # Ljava/io/RandomAccessFile;
    .param p2, "rawIO"    # Lnet/lingala/zip4j/util/RawIO;
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 134
    move-object/from16 v3, p3

    new-instance v4, Lnet/lingala/zip4j/model/CentralDirectory;

    invoke-direct {v4}, Lnet/lingala/zip4j/model/CentralDirectory;-><init>()V

    .line 135
    .local v4, "centralDirectory":Lnet/lingala/zip4j/model/CentralDirectory;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v5, "fileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    iget-object v6, v0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-static {v6}, Lnet/lingala/zip4j/headers/HeaderUtil;->getOffsetStartOfCentralDirectory(Lnet/lingala/zip4j/model/ZipModel;)J

    move-result-wide v6

    .line 138
    .local v6, "offSetStartCentralDir":J
    iget-object v8, v0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {v0, v8}, Lnet/lingala/zip4j/headers/HeaderReader;->getNumberOfEntriesInCentralDirectory(Lnet/lingala/zip4j/model/ZipModel;)J

    move-result-wide v8

    .line 140
    .local v8, "centralDirEntryCount":J
    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 142
    const/4 v10, 0x2

    new-array v11, v10, [B

    .line 143
    .local v11, "shortBuff":[B
    const/4 v12, 0x4

    new-array v13, v12, [B

    .line 145
    .local v13, "intBuff":[B
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move-object/from16 v16, v13

    int-to-long v12, v15

    .end local v13    # "intBuff":[B
    .local v16, "intBuff":[B
    cmp-long v12, v12, v8

    if-gez v12, :cond_5

    .line 146
    new-instance v12, Lnet/lingala/zip4j/model/FileHeader;

    invoke-direct {v12}, Lnet/lingala/zip4j/model/FileHeader;-><init>()V

    .line 147
    .local v12, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v13

    move/from16 v17, v15

    int-to-long v14, v13

    .end local v15    # "i":I
    .local v17, "i":I
    sget-object v13, Lnet/lingala/zip4j/headers/HeaderSignature;->CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v13}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v18

    cmp-long v13, v14, v18

    if-nez v13, :cond_4

    .line 150
    sget-object v13, Lnet/lingala/zip4j/headers/HeaderSignature;->CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v12, v13}, Lnet/lingala/zip4j/model/FileHeader;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 151
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v13

    invoke-virtual {v12, v13}, Lnet/lingala/zip4j/model/FileHeader;->setVersionMadeBy(I)V

    .line 152
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v13

    invoke-virtual {v12, v13}, Lnet/lingala/zip4j/model/FileHeader;->setVersionNeededToExtract(I)V

    .line 154
    new-array v13, v10, [B

    .line 155
    .local v13, "generalPurposeFlags":[B
    invoke-virtual {v1, v13}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 156
    const/4 v14, 0x0

    aget-byte v15, v13, v14

    invoke-static {v15, v14}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v15

    invoke-virtual {v12, v15}, Lnet/lingala/zip4j/model/FileHeader;->setEncrypted(Z)V

    .line 157
    aget-byte v15, v13, v14

    const/4 v14, 0x3

    invoke-static {v15, v14}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v15

    invoke-virtual {v12, v15}, Lnet/lingala/zip4j/model/FileHeader;->setDataDescriptorExists(Z)V

    .line 158
    const/4 v15, 0x1

    aget-byte v15, v13, v15

    invoke-static {v15, v14}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v14

    invoke-virtual {v12, v14}, Lnet/lingala/zip4j/model/FileHeader;->setFileNameUTF8Encoded(Z)V

    .line 159
    invoke-virtual {v13}, [B->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    invoke-virtual {v12, v14}, Lnet/lingala/zip4j/model/FileHeader;->setGeneralPurposeFlag([B)V

    .line 161
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v14

    invoke-static {v14}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->getCompressionMethodFromCode(I)Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v14

    invoke-virtual {v12, v14}, Lnet/lingala/zip4j/model/FileHeader;->setCompressionMethod(Lnet/lingala/zip4j/model/enums/CompressionMethod;)V

    .line 163
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v14

    int-to-long v14, v14

    invoke-virtual {v12, v14, v15}, Lnet/lingala/zip4j/model/FileHeader;->setLastModifiedTime(J)V

    .line 165
    move-object/from16 v14, v16

    invoke-virtual {v1, v14}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 166
    .end local v16    # "intBuff":[B
    .local v14, "intBuff":[B
    move-object/from16 v20, v11

    const/4 v15, 0x0

    invoke-virtual {v2, v14, v15}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v10

    .end local v11    # "shortBuff":[B
    .local v20, "shortBuff":[B
    invoke-virtual {v12, v10, v11}, Lnet/lingala/zip4j/model/FileHeader;->setCrc(J)V

    .line 168
    move-wide/from16 v21, v6

    const/4 v10, 0x4

    invoke-virtual {v2, v1, v10}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/RandomAccessFile;I)J

    move-result-wide v6

    .end local v6    # "offSetStartCentralDir":J
    .local v21, "offSetStartCentralDir":J
    invoke-virtual {v12, v6, v7}, Lnet/lingala/zip4j/model/FileHeader;->setCompressedSize(J)V

    .line 169
    invoke-virtual {v2, v1, v10}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/RandomAccessFile;I)J

    move-result-wide v6

    invoke-virtual {v12, v6, v7}, Lnet/lingala/zip4j/model/FileHeader;->setUncompressedSize(J)V

    .line 171
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v6

    .line 172
    .local v6, "fileNameLength":I
    invoke-virtual {v12, v6}, Lnet/lingala/zip4j/model/FileHeader;->setFileNameLength(I)V

    .line 174
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v7

    invoke-virtual {v12, v7}, Lnet/lingala/zip4j/model/FileHeader;->setExtraFieldLength(I)V

    .line 176
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v7

    .line 177
    .local v7, "fileCommentLength":I
    invoke-virtual {v12, v7}, Lnet/lingala/zip4j/model/FileHeader;->setFileCommentLength(I)V

    .line 179
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v11

    invoke-virtual {v12, v11}, Lnet/lingala/zip4j/model/FileHeader;->setDiskNumberStart(I)V

    .line 181
    move-object/from16 v11, v20

    invoke-virtual {v1, v11}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 182
    .end local v20    # "shortBuff":[B
    .restart local v11    # "shortBuff":[B
    invoke-virtual {v11}, [B->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    invoke-virtual {v12, v15}, Lnet/lingala/zip4j/model/FileHeader;->setInternalFileAttributes([B)V

    .line 184
    invoke-virtual {v1, v14}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 185
    invoke-virtual {v14}, [B->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    invoke-virtual {v12, v15}, Lnet/lingala/zip4j/model/FileHeader;->setExternalFileAttributes([B)V

    .line 187
    invoke-virtual {v1, v14}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 188
    move-object/from16 v23, v11

    const/4 v15, 0x0

    invoke-virtual {v2, v14, v15}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v10

    .end local v11    # "shortBuff":[B
    .local v23, "shortBuff":[B
    invoke-virtual {v12, v10, v11}, Lnet/lingala/zip4j/model/FileHeader;->setOffsetLocalHeader(J)V

    .line 190
    if-lez v6, :cond_0

    .line 191
    new-array v10, v6, [B

    .line 192
    .local v10, "fileNameBuff":[B
    invoke-virtual {v1, v10}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 193
    invoke-virtual {v12}, Lnet/lingala/zip4j/model/FileHeader;->isFileNameUTF8Encoded()Z

    move-result v11

    invoke-static {v10, v11, v3}, Lnet/lingala/zip4j/headers/HeaderUtil;->decodeStringWithCharset([BZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v11

    .line 194
    .local v11, "fileName":Ljava/lang/String;
    invoke-virtual {v12, v11}, Lnet/lingala/zip4j/model/FileHeader;->setFileName(Ljava/lang/String;)V

    .line 195
    .end local v10    # "fileNameBuff":[B
    .end local v11    # "fileName":Ljava/lang/String;
    goto :goto_1

    .line 196
    :cond_0
    const/4 v10, 0x0

    invoke-virtual {v12, v10}, Lnet/lingala/zip4j/model/FileHeader;->setFileName(Ljava/lang/String;)V

    .line 199
    :goto_1
    invoke-virtual {v12}, Lnet/lingala/zip4j/model/FileHeader;->getExternalFileAttributes()[B

    move-result-object v10

    invoke-virtual {v12}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Lnet/lingala/zip4j/headers/HeaderReader;->isDirectory([BLjava/lang/String;)Z

    move-result v10

    invoke-virtual {v12, v10}, Lnet/lingala/zip4j/model/FileHeader;->setDirectory(Z)V

    .line 200
    invoke-direct {v0, v1, v12}, Lnet/lingala/zip4j/headers/HeaderReader;->readExtraDataRecords(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/model/FileHeader;)V

    .line 201
    invoke-direct {v0, v12, v2}, Lnet/lingala/zip4j/headers/HeaderReader;->readZip64ExtendedInfo(Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/util/RawIO;)V

    .line 202
    invoke-direct {v0, v12, v2}, Lnet/lingala/zip4j/headers/HeaderReader;->readAesExtraDataRecord(Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/util/RawIO;)V

    .line 204
    if-lez v7, :cond_1

    .line 205
    new-array v10, v7, [B

    .line 206
    .local v10, "fileCommentBuff":[B
    invoke-virtual {v1, v10}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 207
    invoke-virtual {v12}, Lnet/lingala/zip4j/model/FileHeader;->isFileNameUTF8Encoded()Z

    move-result v11

    invoke-static {v10, v11, v3}, Lnet/lingala/zip4j/headers/HeaderUtil;->decodeStringWithCharset([BZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Lnet/lingala/zip4j/model/FileHeader;->setFileComment(Ljava/lang/String;)V

    .line 210
    .end local v10    # "fileCommentBuff":[B
    :cond_1
    invoke-virtual {v12}, Lnet/lingala/zip4j/model/FileHeader;->isEncrypted()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 211
    invoke-virtual {v12}, Lnet/lingala/zip4j/model/FileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 212
    sget-object v10, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {v12, v10}, Lnet/lingala/zip4j/model/FileHeader;->setEncryptionMethod(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V

    goto :goto_2

    .line 214
    :cond_2
    sget-object v10, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {v12, v10}, Lnet/lingala/zip4j/model/FileHeader;->setEncryptionMethod(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V

    .line 218
    :cond_3
    :goto_2
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    .end local v6    # "fileNameLength":I
    .end local v7    # "fileCommentLength":I
    .end local v12    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .end local v13    # "generalPurposeFlags":[B
    add-int/lit8 v6, v17, 0x1

    .end local v17    # "i":I
    .local v6, "i":I
    move v15, v6

    move-object v13, v14

    move-wide/from16 v6, v21

    move-object/from16 v11, v23

    const/4 v10, 0x2

    const/4 v12, 0x4

    goto/16 :goto_0

    .line 148
    .end local v14    # "intBuff":[B
    .end local v21    # "offSetStartCentralDir":J
    .end local v23    # "shortBuff":[B
    .local v6, "offSetStartCentralDir":J
    .local v11, "shortBuff":[B
    .restart local v12    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .restart local v16    # "intBuff":[B
    .restart local v17    # "i":I
    :cond_4
    move-wide/from16 v21, v6

    move-object/from16 v23, v11

    move-object/from16 v14, v16

    .end local v6    # "offSetStartCentralDir":J
    .end local v11    # "shortBuff":[B
    .end local v16    # "intBuff":[B
    .restart local v14    # "intBuff":[B
    .restart local v21    # "offSetStartCentralDir":J
    .restart local v23    # "shortBuff":[B
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Expected central directory entry not found (#"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v17, 0x1

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 221
    .end local v12    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .end local v14    # "intBuff":[B
    .end local v17    # "i":I
    .end local v21    # "offSetStartCentralDir":J
    .end local v23    # "shortBuff":[B
    .restart local v6    # "offSetStartCentralDir":J
    .restart local v11    # "shortBuff":[B
    .restart local v16    # "intBuff":[B
    :cond_5
    move-wide/from16 v21, v6

    move-object/from16 v23, v11

    move-object/from16 v14, v16

    .end local v6    # "offSetStartCentralDir":J
    .end local v11    # "shortBuff":[B
    .end local v16    # "intBuff":[B
    .restart local v14    # "intBuff":[B
    .restart local v21    # "offSetStartCentralDir":J
    .restart local v23    # "shortBuff":[B
    invoke-virtual {v4, v5}, Lnet/lingala/zip4j/model/CentralDirectory;->setFileHeaders(Ljava/util/List;)V

    .line 223
    new-instance v6, Lnet/lingala/zip4j/model/DigitalSignature;

    invoke-direct {v6}, Lnet/lingala/zip4j/model/DigitalSignature;-><init>()V

    .line 224
    .local v6, "digitalSignature":Lnet/lingala/zip4j/model/DigitalSignature;
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v7

    int-to-long v10, v7

    sget-object v7, Lnet/lingala/zip4j/headers/HeaderSignature;->DIGITAL_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v7}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v12

    cmp-long v7, v10, v12

    if-nez v7, :cond_6

    .line 225
    sget-object v7, Lnet/lingala/zip4j/headers/HeaderSignature;->DIGITAL_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v6, v7}, Lnet/lingala/zip4j/model/DigitalSignature;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 226
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v7

    invoke-virtual {v6, v7}, Lnet/lingala/zip4j/model/DigitalSignature;->setSizeOfData(I)V

    .line 228
    invoke-virtual {v6}, Lnet/lingala/zip4j/model/DigitalSignature;->getSizeOfData()I

    move-result v7

    if-lez v7, :cond_6

    .line 229
    invoke-virtual {v6}, Lnet/lingala/zip4j/model/DigitalSignature;->getSizeOfData()I

    move-result v7

    new-array v7, v7, [B

    .line 230
    .local v7, "signatureDataBuff":[B
    invoke-virtual {v1, v7}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 231
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v10}, Lnet/lingala/zip4j/model/DigitalSignature;->setSignatureData(Ljava/lang/String;)V

    .line 235
    .end local v7    # "signatureDataBuff":[B
    :cond_6
    return-object v4
.end method

.method private readEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/util/RawIO;Lnet/lingala/zip4j/model/Zip4jConfig;)Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;
    .locals 7
    .param p1, "zip4jRaf"    # Ljava/io/RandomAccessFile;
    .param p2, "rawIO"    # Lnet/lingala/zip4j/util/RawIO;
    .param p3, "zip4jConfig"    # Lnet/lingala/zip4j/model/Zip4jConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/headers/HeaderReader;->locateOffsetOfEndOfCentralDirectory(Ljava/io/RandomAccessFile;)J

    move-result-wide v0

    .line 111
    .local v0, "offsetEndOfCentralDirectory":J
    const-wide/16 v2, 0x4

    add-long/2addr v2, v0

    invoke-direct {p0, p1, v2, v3}, Lnet/lingala/zip4j/headers/HeaderReader;->seekInCurrentPart(Ljava/io/RandomAccessFile;J)V

    .line 113
    new-instance v2, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    invoke-direct {v2}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;-><init>()V

    .line 114
    .local v2, "endOfCentralDirectoryRecord":Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;
    sget-object v3, Lnet/lingala/zip4j/headers/HeaderSignature;->END_OF_CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 115
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v3

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setNumberOfThisDisk(I)V

    .line 116
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v3

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setNumberOfThisDiskStartOfCentralDir(I)V

    .line 117
    nop

    .line 118
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v3

    .line 117
    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setTotalNumberOfEntriesInCentralDirectoryOnThisDisk(I)V

    .line 119
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v3

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setTotalNumberOfEntriesInCentralDirectory(I)V

    .line 120
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v3

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setSizeOfCentralDirectory(I)V

    .line 121
    invoke-virtual {v2, v0, v1}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setOffsetOfEndOfCentralDirectory(J)V

    .line 123
    iget-object v3, p0, Lnet/lingala/zip4j/headers/HeaderReader;->intBuff:[B

    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 124
    iget-object v3, p0, Lnet/lingala/zip4j/headers/HeaderReader;->intBuff:[B

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setOffsetOfStartOfCentralDirectory(J)V

    .line 126
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v3

    .line 127
    .local v3, "commentLength":I
    invoke-virtual {p3}, Lnet/lingala/zip4j/model/Zip4jConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {p0, p1, v3, v5}, Lnet/lingala/zip4j/headers/HeaderReader;->readZipComment(Ljava/io/RandomAccessFile;ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setComment(Ljava/lang/String;)V

    .line 129
    iget-object v5, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getNumberOfThisDisk()I

    move-result v6

    if-lez v6, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    invoke-virtual {v5, v4}, Lnet/lingala/zip4j/model/ZipModel;->setSplitArchive(Z)V

    .line 130
    return-object v2
.end method

.method private readExtraDataRecords(Ljava/io/InputStream;I)Ljava/util/List;
    .locals 3
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "extraFieldLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "I)",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/ExtraDataRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    const/4 v0, 0x4

    if-ge p2, v0, :cond_1

    .line 285
    if-lez p2, :cond_0

    .line 286
    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Ljava/io/InputStream;->skip(J)J

    .line 289
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 292
    :cond_1
    new-array v0, p2, [B

    .line 293
    .local v0, "extraFieldBuf":[B
    invoke-static {p1, v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->readFully(Ljava/io/InputStream;[B)I

    .line 296
    :try_start_0
    invoke-direct {p0, v0, p2}, Lnet/lingala/zip4j/headers/HeaderReader;->parseExtraDataRecords([BI)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 297
    :catch_0
    move-exception v1

    .line 299
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private readExtraDataRecords(Ljava/io/RandomAccessFile;I)Ljava/util/List;
    .locals 3
    .param p1, "zip4jRaf"    # Ljava/io/RandomAccessFile;
    .param p2, "extraFieldLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            "I)",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/ExtraDataRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    const/4 v0, 0x4

    if-ge p2, v0, :cond_1

    .line 263
    if-lez p2, :cond_0

    .line 264
    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 267
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 270
    :cond_1
    new-array v0, p2, [B

    .line 271
    .local v0, "extraFieldBuf":[B
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 274
    :try_start_0
    invoke-direct {p0, v0, p2}, Lnet/lingala/zip4j/headers/HeaderReader;->parseExtraDataRecords([BI)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 275
    :catch_0
    move-exception v1

    .line 277
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private readExtraDataRecords(Ljava/io/InputStream;Lnet/lingala/zip4j/model/LocalFileHeader;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "localFileHeader"    # Lnet/lingala/zip4j/model/LocalFileHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getExtraFieldLength()I

    move-result v0

    .line 251
    .local v0, "extraFieldLength":I
    if-gtz v0, :cond_0

    .line 252
    return-void

    .line 255
    :cond_0
    invoke-direct {p0, p1, v0}, Lnet/lingala/zip4j/headers/HeaderReader;->readExtraDataRecords(Ljava/io/InputStream;I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->setExtraDataRecords(Ljava/util/List;)V

    .line 257
    return-void
.end method

.method private readExtraDataRecords(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/model/FileHeader;)V
    .locals 2
    .param p1, "zip4jRaf"    # Ljava/io/RandomAccessFile;
    .param p2, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/FileHeader;->getExtraFieldLength()I

    move-result v0

    .line 241
    .local v0, "extraFieldLength":I
    if-gtz v0, :cond_0

    .line 242
    return-void

    .line 245
    :cond_0
    invoke-direct {p0, p1, v0}, Lnet/lingala/zip4j/headers/HeaderReader;->readExtraDataRecords(Ljava/io/RandomAccessFile;I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v1}, Lnet/lingala/zip4j/model/FileHeader;->setExtraDataRecords(Ljava/util/List;)V

    .line 246
    return-void
.end method

.method private readZip64EndCentralDirRec(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/util/RawIO;)Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;
    .locals 10
    .param p1, "zip4jRaf"    # Ljava/io/RandomAccessFile;
    .param p2, "rawIO"    # Lnet/lingala/zip4j/util/RawIO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 359
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->getOffsetZip64EndOfCentralDirectoryRecord()J

    move-result-wide v0

    .line 362
    .local v0, "offSetStartOfZip64CentralDir":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 366
    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 368
    new-instance v4, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    invoke-direct {v4}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;-><init>()V

    .line 370
    .local v4, "zip64EndOfCentralDirectoryRecord":Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v5

    .line 371
    .local v5, "signature":I
    int-to-long v6, v5

    sget-object v8, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_END_CENTRAL_DIRECTORY_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v8}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 374
    sget-object v6, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_END_CENTRAL_DIRECTORY_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v4, v6}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 375
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/RandomAccessFile;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setSizeOfZip64EndCentralDirectoryRecord(J)V

    .line 376
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v6

    invoke-virtual {v4, v6}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setVersionMadeBy(I)V

    .line 377
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v6

    invoke-virtual {v4, v6}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setVersionNeededToExtract(I)V

    .line 378
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v6

    invoke-virtual {v4, v6}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setNumberOfThisDisk(I)V

    .line 379
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v6

    invoke-virtual {v4, v6}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setNumberOfThisDiskStartOfCentralDirectory(I)V

    .line 380
    nop

    .line 381
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/RandomAccessFile;)J

    move-result-wide v6

    .line 380
    invoke-virtual {v4, v6, v7}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setTotalNumberOfEntriesInCentralDirectoryOnThisDisk(J)V

    .line 382
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/RandomAccessFile;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setTotalNumberOfEntriesInCentralDirectory(J)V

    .line 383
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/RandomAccessFile;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setSizeOfCentralDirectory(J)V

    .line 384
    nop

    .line 385
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/RandomAccessFile;)J

    move-result-wide v6

    .line 384
    invoke-virtual {v4, v6, v7}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setOffsetStartCentralDirectoryWRTStartDiskNumber(J)V

    .line 389
    invoke-virtual {v4}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getSizeOfZip64EndCentralDirectoryRecord()J

    move-result-wide v6

    const-wide/16 v8, 0x2c

    sub-long/2addr v6, v8

    .line 390
    .local v6, "extDataSecSize":J
    cmp-long v2, v6, v2

    if-lez v2, :cond_0

    .line 391
    long-to-int v2, v6

    new-array v2, v2, [B

    .line 392
    .local v2, "extDataSecRecBuf":[B
    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 393
    invoke-virtual {v4, v2}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setExtensibleDataSector([B)V

    .line 396
    .end local v2    # "extDataSecRecBuf":[B
    :cond_0
    return-object v4

    .line 372
    .end local v6    # "extDataSecSize":J
    :cond_1
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    const-string v3, "invalid signature for zip64 end of central directory record"

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 363
    .end local v4    # "zip64EndOfCentralDirectoryRecord":Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;
    .end local v5    # "signature":I
    :cond_2
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    const-string v3, "invalid offset for start of end of central directory record"

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 356
    .end local v0    # "offSetStartOfZip64CentralDir":J
    :cond_3
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid zip64 end of central directory locator"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readZip64EndOfCentralDirectoryLocator(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/util/RawIO;J)Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;
    .locals 6
    .param p1, "zip4jRaf"    # Ljava/io/RandomAccessFile;
    .param p2, "rawIO"    # Lnet/lingala/zip4j/util/RawIO;
    .param p3, "offsetEndOfCentralDirectoryRecord"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    new-instance v0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;-><init>()V

    .line 332
    .local v0, "zip64EndOfCentralDirectoryLocator":Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;
    invoke-direct {p0, p1, p3, p4}, Lnet/lingala/zip4j/headers/HeaderReader;->setFilePointerToReadZip64EndCentralDirLoc(Ljava/io/RandomAccessFile;J)V

    .line 334
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v1

    .line 335
    .local v1, "signature":I
    int-to-long v2, v1

    sget-object v4, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_END_CENTRAL_DIRECTORY_LOCATOR:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v4}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 336
    iget-object v2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/model/ZipModel;->setZip64Format(Z)V

    .line 337
    sget-object v2, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_END_CENTRAL_DIRECTORY_LOCATOR:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 343
    nop

    .line 344
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v2

    .line 343
    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->setNumberOfDiskStartOfZip64EndOfCentralDirectoryRecord(I)V

    .line 345
    nop

    .line 346
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/RandomAccessFile;)J

    move-result-wide v2

    .line 345
    invoke-virtual {v0, v2, v3}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->setOffsetZip64EndOfCentralDirectoryRecord(J)V

    .line 347
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v2

    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->setTotalNumberOfDiscs(I)V

    .line 349
    return-object v0

    .line 339
    :cond_0
    iget-object v2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/model/ZipModel;->setZip64Format(Z)V

    .line 340
    const/4 v2, 0x0

    return-object v2
.end method

.method private readZip64ExtendedInfo(Ljava/util/List;Lnet/lingala/zip4j/util/RawIO;JJJI)Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    .locals 12
    .param p2, "rawIO"    # Lnet/lingala/zip4j/util/RawIO;
    .param p3, "uncompressedSize"    # J
    .param p5, "compressedSize"    # J
    .param p7, "offsetLocalHeader"    # J
    .param p9, "diskNumberStart"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/ExtraDataRecord;",
            ">;",
            "Lnet/lingala/zip4j/util/RawIO;",
            "JJJI)",
            "Lnet/lingala/zip4j/model/Zip64ExtendedInfo;"
        }
    .end annotation

    .local p1, "extraDataRecords":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/ExtraDataRecord;>;"
    move-object v0, p2

    .line 462
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/lingala/zip4j/model/ExtraDataRecord;

    .line 463
    .local v2, "extraDataRecord":Lnet/lingala/zip4j/model/ExtraDataRecord;
    if-nez v2, :cond_0

    .line 464
    goto :goto_0

    .line 467
    :cond_0
    sget-object v4, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_EXTRA_FIELD_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v4}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v4

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getHeader()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_7

    .line 469
    new-instance v1, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    invoke-direct {v1}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;-><init>()V

    .line 470
    .local v1, "zip64ExtendedInfo":Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getData()[B

    move-result-object v4

    .line 472
    .local v4, "extraData":[B
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v5

    if-gtz v5, :cond_1

    .line 473
    return-object v3

    .line 476
    :cond_1
    const/4 v3, 0x0

    .line 477
    .local v3, "counter":I
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v5

    const-wide v6, 0xffffffffL

    if-ge v3, v5, :cond_2

    cmp-long v5, p3, v6

    if-nez v5, :cond_2

    .line 478
    invoke-virtual {v0, v4, v3}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->setUncompressedSize(J)V

    .line 479
    add-int/lit8 v3, v3, 0x8

    .line 482
    :cond_2
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v5

    if-ge v3, v5, :cond_3

    cmp-long v5, p5, v6

    if-nez v5, :cond_3

    .line 483
    invoke-virtual {v0, v4, v3}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->setCompressedSize(J)V

    .line 484
    add-int/lit8 v3, v3, 0x8

    .line 487
    :cond_3
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v5

    if-ge v3, v5, :cond_4

    cmp-long v5, p7, v6

    if-nez v5, :cond_4

    .line 488
    invoke-virtual {v0, v4, v3}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->setOffsetLocalHeader(J)V

    .line 489
    add-int/lit8 v3, v3, 0x8

    .line 492
    :cond_4
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v5

    if-ge v3, v5, :cond_5

    const v5, 0xffff

    move/from16 v6, p9

    if-ne v6, v5, :cond_6

    .line 493
    invoke-virtual {v0, v4, v3}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian([BI)I

    move-result v5

    invoke-virtual {v1, v5}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->setDiskNumberStart(I)V

    goto :goto_1

    .line 496
    :cond_5
    move/from16 v6, p9

    :cond_6
    :goto_1
    return-object v1

    .line 498
    .end local v1    # "zip64ExtendedInfo":Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    .end local v2    # "extraDataRecord":Lnet/lingala/zip4j/model/ExtraDataRecord;
    .end local v3    # "counter":I
    .end local v4    # "extraData":[B
    :cond_7
    move/from16 v6, p9

    goto/16 :goto_0

    .line 499
    :cond_8
    move/from16 v6, p9

    return-object v3
.end method

.method private readZip64ExtendedInfo(Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/util/RawIO;)V
    .locals 11
    .param p1, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p2, "rawIO"    # Lnet/lingala/zip4j/util/RawIO;

    .line 400
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 404
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v2

    .line 405
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getUncompressedSize()J

    move-result-wide v4

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v6

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v8

    .line 406
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result v10

    .line 404
    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lnet/lingala/zip4j/headers/HeaderReader;->readZip64ExtendedInfo(Ljava/util/List;Lnet/lingala/zip4j/util/RawIO;JJJI)Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v0

    .line 408
    .local v0, "zip64ExtendedInfo":Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    if-nez v0, :cond_1

    .line 409
    return-void

    .line 412
    :cond_1
    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/FileHeader;->setZip64ExtendedInfo(Lnet/lingala/zip4j/model/Zip64ExtendedInfo;)V

    .line 414
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getUncompressedSize()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 415
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getUncompressedSize()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lnet/lingala/zip4j/model/FileHeader;->setUncompressedSize(J)V

    .line 418
    :cond_2
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getCompressedSize()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 419
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getCompressedSize()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lnet/lingala/zip4j/model/FileHeader;->setCompressedSize(J)V

    .line 422
    :cond_3
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    .line 423
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lnet/lingala/zip4j/model/FileHeader;->setOffsetLocalHeader(J)V

    .line 426
    :cond_4
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getDiskNumberStart()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 427
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getDiskNumberStart()I

    move-result v1

    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/FileHeader;->setDiskNumberStart(I)V

    .line 429
    :cond_5
    return-void

    .line 401
    .end local v0    # "zip64ExtendedInfo":Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    :cond_6
    :goto_0
    return-void
.end method

.method private readZip64ExtendedInfo(Lnet/lingala/zip4j/model/LocalFileHeader;Lnet/lingala/zip4j/util/RawIO;)V
    .locals 11
    .param p1, "localFileHeader"    # Lnet/lingala/zip4j/model/LocalFileHeader;
    .param p2, "rawIO"    # Lnet/lingala/zip4j/util/RawIO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 432
    if-eqz p1, :cond_5

    .line 436
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 440
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v2

    .line 441
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getUncompressedSize()J

    move-result-wide v4

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCompressedSize()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    .line 440
    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lnet/lingala/zip4j/headers/HeaderReader;->readZip64ExtendedInfo(Ljava/util/List;Lnet/lingala/zip4j/util/RawIO;JJJI)Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v0

    .line 443
    .local v0, "zip64ExtendedInfo":Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    if-nez v0, :cond_1

    .line 444
    return-void

    .line 447
    :cond_1
    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->setZip64ExtendedInfo(Lnet/lingala/zip4j/model/Zip64ExtendedInfo;)V

    .line 449
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getUncompressedSize()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 450
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getUncompressedSize()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lnet/lingala/zip4j/model/LocalFileHeader;->setUncompressedSize(J)V

    .line 453
    :cond_2
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getCompressedSize()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 454
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getCompressedSize()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCompressedSize(J)V

    .line 456
    :cond_3
    return-void

    .line 437
    .end local v0    # "zip64ExtendedInfo":Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    :cond_4
    :goto_0
    return-void

    .line 433
    :cond_5
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "file header is null in reading Zip64 Extended Info"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readZipComment(Ljava/io/RandomAccessFile;ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4
    .param p1, "raf"    # Ljava/io/RandomAccessFile;
    .param p2, "commentLength"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .line 725
    const/4 v0, 0x0

    if-gtz p2, :cond_0

    .line 726
    return-object v0

    .line 730
    :cond_0
    :try_start_0
    new-array v1, p2, [B

    .line 731
    .local v1, "commentBuf":[B
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 732
    const/4 v2, 0x0

    if-eqz p3, :cond_1

    move-object v3, p3

    goto :goto_0

    :cond_1
    sget-object v3, Lnet/lingala/zip4j/util/InternalZipConstants;->ZIP4J_DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    :goto_0
    invoke-static {v1, v2, v3}, Lnet/lingala/zip4j/headers/HeaderUtil;->decodeStringWithCharset([BZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 733
    .end local v1    # "commentBuf":[B
    :catch_0
    move-exception v1

    .line 735
    .local v1, "e":Ljava/io/IOException;
    return-object v0
.end method

.method private seekInCurrentPart(Ljava/io/RandomAccessFile;J)V
    .locals 1
    .param p1, "randomAccessFile"    # Ljava/io/RandomAccessFile;
    .param p2, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 717
    instance-of v0, p1, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;

    if-eqz v0, :cond_0

    .line 718
    move-object v0, p1

    check-cast v0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;

    invoke-virtual {v0, p2, p3}, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->seekInCurrentPart(J)V

    goto :goto_0

    .line 720
    :cond_0
    invoke-virtual {p1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 722
    :goto_0
    return-void
.end method

.method private setFilePointerToReadZip64EndCentralDirLoc(Ljava/io/RandomAccessFile;J)V
    .locals 6
    .param p1, "zip4jRaf"    # Ljava/io/RandomAccessFile;
    .param p2, "offsetEndOfCentralDirectoryRecord"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 511
    const-wide/16 v0, 0x4

    sub-long v2, p2, v0

    const-wide/16 v4, 0x8

    sub-long/2addr v2, v4

    sub-long/2addr v2, v0

    sub-long/2addr v2, v0

    invoke-direct {p0, p1, v2, v3}, Lnet/lingala/zip4j/headers/HeaderReader;->seekInCurrentPart(Ljava/io/RandomAccessFile;J)V

    .line 512
    return-void
.end method


# virtual methods
.method public isDirectory([BLjava/lang/String;)Z
    .locals 4
    .param p1, "externalFileAttributes"    # [B
    .param p2, "fileName"    # Ljava/lang/String;

    .line 743
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    aget-byte v1, p1, v0

    const/4 v3, 0x4

    invoke-static {v1, v3}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 744
    return v2

    .line 745
    :cond_0
    const/4 v1, 0x3

    aget-byte v3, p1, v1

    if-eqz v3, :cond_1

    aget-byte v1, p1, v1

    const/4 v3, 0x6

    invoke-static {v1, v3}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 746
    return v2

    .line 749
    :cond_1
    if-eqz p2, :cond_3

    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\\"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move v0, v2

    nop

    :cond_3
    return v0
.end method

.method public readAllHeaders(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/model/Zip4jConfig;)Lnet/lingala/zip4j/model/ZipModel;
    .locals 4
    .param p1, "zip4jRaf"    # Ljava/io/RandomAccessFile;
    .param p2, "zip4jConfig"    # Lnet/lingala/zip4j/model/Zip4jConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x16

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    .line 73
    new-instance v0, Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/ZipModel;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 76
    :try_start_0
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-direct {p0, p1, v1, p2}, Lnet/lingala/zip4j/headers/HeaderReader;->readEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/util/RawIO;Lnet/lingala/zip4j/model/Zip4jConfig;)Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipModel;->setEndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    nop

    .line 84
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getTotalNumberOfEntriesInCentralDirectory()I

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    return-object v0

    .line 89
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    iget-object v2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 90
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getOffsetOfEndOfCentralDirectory()J

    move-result-wide v2

    .line 89
    invoke-direct {p0, p1, v1, v2, v3}, Lnet/lingala/zip4j/headers/HeaderReader;->readZip64EndOfCentralDirectoryLocator(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/util/RawIO;J)Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipModel;->setZip64EndOfCentralDirectoryLocator(Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;)V

    .line 92
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-direct {p0, p1, v1}, Lnet/lingala/zip4j/headers/HeaderReader;->readZip64EndCentralDirRec(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/util/RawIO;)Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipModel;->setZip64EndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;)V

    .line 94
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 95
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getNumberOfThisDisk()I

    move-result v0

    if-lez v0, :cond_1

    .line 96
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipModel;->setSplitArchive(Z)V

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipModel;->setSplitArchive(Z)V

    .line 102
    :cond_2
    :goto_0
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/Zip4jConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lnet/lingala/zip4j/headers/HeaderReader;->readCentralDirectory(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/util/RawIO;Ljava/nio/charset/Charset;)Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipModel;->setCentralDirectory(Lnet/lingala/zip4j/model/CentralDirectory;)V

    .line 104
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    return-object v0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 81
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "Zip headers not found. Probably not a zip file or a corrupted zip file"

    invoke-direct {v1, v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 77
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 78
    .local v0, "e":Lnet/lingala/zip4j/exception/ZipException;
    throw v0

    .line 69
    .end local v0    # "e":Lnet/lingala/zip4j/exception/ZipException;
    :cond_3
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "Zip file size less than minimum expected zip file size. Probably not a zip file or a corrupted zip file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readDataDescriptor(Ljava/io/InputStream;Z)Lnet/lingala/zip4j/model/DataDescriptor;
    .locals 8
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "isZip64Format"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 587
    new-instance v0, Lnet/lingala/zip4j/model/DataDescriptor;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/DataDescriptor;-><init>()V

    .line 589
    .local v0, "dataDescriptor":Lnet/lingala/zip4j/model/DataDescriptor;
    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 590
    .local v1, "intBuff":[B
    invoke-static {p1, v1}, Lnet/lingala/zip4j/util/Zip4jUtil;->readFully(Ljava/io/InputStream;[B)I

    .line 591
    iget-object v2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v4

    .line 596
    .local v4, "sigOrCrc":J
    sget-object v2, Lnet/lingala/zip4j/headers/HeaderSignature;->EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v2}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    .line 597
    sget-object v2, Lnet/lingala/zip4j/headers/HeaderSignature;->EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/DataDescriptor;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 598
    invoke-static {p1, v1}, Lnet/lingala/zip4j/util/Zip4jUtil;->readFully(Ljava/io/InputStream;[B)I

    .line 599
    iget-object v2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v2, v1, v3}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lnet/lingala/zip4j/model/DataDescriptor;->setCrc(J)V

    goto :goto_0

    .line 601
    :cond_0
    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/DataDescriptor;->setCrc(J)V

    .line 604
    :goto_0
    if-eqz p2, :cond_1

    .line 605
    iget-object v2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v2, p1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/InputStream;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lnet/lingala/zip4j/model/DataDescriptor;->setCompressedSize(J)V

    .line 606
    iget-object v2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v2, p1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/InputStream;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lnet/lingala/zip4j/model/DataDescriptor;->setUncompressedSize(J)V

    goto :goto_1

    .line 608
    :cond_1
    iget-object v2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v2, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lnet/lingala/zip4j/model/DataDescriptor;->setCompressedSize(J)V

    .line 609
    iget-object v2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v2, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lnet/lingala/zip4j/model/DataDescriptor;->setUncompressedSize(J)V

    .line 612
    :goto_1
    return-object v0
.end method

.method public readLocalFileHeader(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lnet/lingala/zip4j/model/LocalFileHeader;
    .locals 10
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 515
    new-instance v0, Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;-><init>()V

    .line 516
    .local v0, "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    const/4 v1, 0x4

    new-array v2, v1, [B

    .line 519
    .local v2, "intBuff":[B
    iget-object v3, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v3, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/InputStream;)I

    move-result v3

    .line 520
    .local v3, "sig":I
    int-to-long v4, v3

    sget-object v6, Lnet/lingala/zip4j/headers/HeaderSignature;->TEMPORARY_SPANNING_MARKER:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v6}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 521
    iget-object v4, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v4, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/InputStream;)I

    move-result v3

    .line 523
    :cond_0
    int-to-long v4, v3

    sget-object v6, Lnet/lingala/zip4j/headers/HeaderSignature;->LOCAL_FILE_HEADER:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v6}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 524
    return-object v5

    .line 526
    :cond_1
    sget-object v4, Lnet/lingala/zip4j/headers/HeaderSignature;->LOCAL_FILE_HEADER:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v0, v4}, Lnet/lingala/zip4j/model/LocalFileHeader;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 527
    iget-object v4, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v4, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/InputStream;)I

    move-result v4

    invoke-virtual {v0, v4}, Lnet/lingala/zip4j/model/LocalFileHeader;->setVersionNeededToExtract(I)V

    .line 529
    const/4 v4, 0x2

    new-array v6, v4, [B

    .line 530
    .local v6, "generalPurposeFlags":[B
    invoke-static {p1, v6}, Lnet/lingala/zip4j/util/Zip4jUtil;->readFully(Ljava/io/InputStream;[B)I

    move-result v7

    if-ne v7, v4, :cond_8

    .line 533
    const/4 v4, 0x0

    aget-byte v7, v6, v4

    invoke-static {v7, v4}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v7

    invoke-virtual {v0, v7}, Lnet/lingala/zip4j/model/LocalFileHeader;->setEncrypted(Z)V

    .line 534
    aget-byte v7, v6, v4

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v7

    invoke-virtual {v0, v7}, Lnet/lingala/zip4j/model/LocalFileHeader;->setDataDescriptorExists(Z)V

    .line 535
    const/4 v7, 0x1

    aget-byte v9, v6, v7

    invoke-static {v9, v8}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v8

    invoke-virtual {v0, v8}, Lnet/lingala/zip4j/model/LocalFileHeader;->setFileNameUTF8Encoded(Z)V

    .line 536
    invoke-virtual {v6}, [B->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v0, v8}, Lnet/lingala/zip4j/model/LocalFileHeader;->setGeneralPurposeFlag([B)V

    .line 538
    iget-object v8, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    .line 539
    invoke-virtual {v8, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/InputStream;)I

    move-result v8

    .line 538
    invoke-static {v8}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->getCompressionMethodFromCode(I)Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v8

    invoke-virtual {v0, v8}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCompressionMethod(Lnet/lingala/zip4j/model/enums/CompressionMethod;)V

    .line 540
    iget-object v8, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v8, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/InputStream;)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v0, v8, v9}, Lnet/lingala/zip4j/model/LocalFileHeader;->setLastModifiedTime(J)V

    .line 542
    invoke-static {p1, v2}, Lnet/lingala/zip4j/util/Zip4jUtil;->readFully(Ljava/io/InputStream;[B)I

    .line 543
    iget-object v8, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v8, v2, v4}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCrc(J)V

    .line 545
    iget-object v8, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v8, p1, v1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/InputStream;I)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCompressedSize(J)V

    .line 546
    iget-object v8, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v8, p1, v1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/InputStream;I)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lnet/lingala/zip4j/model/LocalFileHeader;->setUncompressedSize(J)V

    .line 548
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v1, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/InputStream;)I

    move-result v1

    .line 549
    .local v1, "fileNameLength":I
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->setFileNameLength(I)V

    .line 551
    iget-object v8, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v8, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/InputStream;)I

    move-result v8

    invoke-virtual {v0, v8}, Lnet/lingala/zip4j/model/LocalFileHeader;->setExtraFieldLength(I)V

    .line 553
    if-lez v1, :cond_4

    .line 554
    new-array v5, v1, [B

    .line 555
    .local v5, "fileNameBuf":[B
    invoke-static {p1, v5}, Lnet/lingala/zip4j/util/Zip4jUtil;->readFully(Ljava/io/InputStream;[B)I

    .line 557
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->isFileNameUTF8Encoded()Z

    move-result v8

    invoke-static {v5, v8, p2}, Lnet/lingala/zip4j/headers/HeaderUtil;->decodeStringWithCharset([BZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v8

    .line 558
    .local v8, "fileName":Ljava/lang/String;
    invoke-virtual {v0, v8}, Lnet/lingala/zip4j/model/LocalFileHeader;->setFileName(Ljava/lang/String;)V

    .line 559
    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "\\"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_0

    :cond_2
    move v7, v4

    nop

    :cond_3
    :goto_0
    invoke-virtual {v0, v7}, Lnet/lingala/zip4j/model/LocalFileHeader;->setDirectory(Z)V

    .line 560
    .end local v5    # "fileNameBuf":[B
    .end local v8    # "fileName":Ljava/lang/String;
    goto :goto_1

    .line 561
    :cond_4
    invoke-virtual {v0, v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->setFileName(Ljava/lang/String;)V

    .line 564
    :goto_1
    invoke-direct {p0, p1, v0}, Lnet/lingala/zip4j/headers/HeaderReader;->readExtraDataRecords(Ljava/io/InputStream;Lnet/lingala/zip4j/model/LocalFileHeader;)V

    .line 565
    iget-object v5, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-direct {p0, v0, v5}, Lnet/lingala/zip4j/headers/HeaderReader;->readZip64ExtendedInfo(Lnet/lingala/zip4j/model/LocalFileHeader;Lnet/lingala/zip4j/util/RawIO;)V

    .line 566
    iget-object v5, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-direct {p0, v0, v5}, Lnet/lingala/zip4j/headers/HeaderReader;->readAesExtraDataRecord(Lnet/lingala/zip4j/model/LocalFileHeader;Lnet/lingala/zip4j/util/RawIO;)V

    .line 568
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->isEncrypted()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 570
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v5

    sget-object v7, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne v5, v7, :cond_5

    goto :goto_2

    .line 573
    :cond_5
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->getGeneralPurposeFlag()[B

    move-result-object v5

    aget-byte v4, v5, v4

    const/4 v5, 0x6

    invoke-static {v4, v5}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 574
    sget-object v4, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD_VARIANT_STRONG:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {v0, v4}, Lnet/lingala/zip4j/model/LocalFileHeader;->setEncryptionMethod(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V

    goto :goto_2

    .line 576
    :cond_6
    sget-object v4, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {v0, v4}, Lnet/lingala/zip4j/model/LocalFileHeader;->setEncryptionMethod(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V

    .line 582
    :cond_7
    :goto_2
    return-object v0

    .line 531
    .end local v1    # "fileNameLength":I
    :cond_8
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v4, "Could not read enough bytes for generalPurposeFlags"

    invoke-direct {v1, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
