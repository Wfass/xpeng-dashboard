.class public Lnet/lingala/zip4j/io/inputstream/ZipInputStream;
.super Ljava/io/InputStream;
.source "ZipInputStream.java"


# instance fields
.field private canSkipExtendedLocalFileHeader:Z

.field private crc32:Ljava/util/zip/CRC32;

.field private decompressedInputStream:Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;

.field private endOfEntryBuffer:[B

.field private entryEOFReached:Z

.field private headerReader:Lnet/lingala/zip4j/headers/HeaderReader;

.field private inputStream:Ljava/io/PushbackInputStream;

.field private localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

.field private password:[C

.field private passwordCallback:Lnet/lingala/zip4j/util/PasswordCallback;

.field private streamClosed:Z

.field private zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 59
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [C

    check-cast v0, Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v1, v0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;-><init>(Ljava/io/InputStream;[CLjava/nio/charset/Charset;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 63
    const/4 v0, 0x0

    check-cast v0, [C

    invoke-direct {p0, p1, v0, p2}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;-><init>(Ljava/io/InputStream;[CLjava/nio/charset/Charset;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lnet/lingala/zip4j/util/PasswordCallback;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "passwordCallback"    # Lnet/lingala/zip4j/util/PasswordCallback;

    .line 71
    const/4 v0, 0x0

    check-cast v0, Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, v0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;-><init>(Ljava/io/InputStream;Lnet/lingala/zip4j/util/PasswordCallback;Ljava/nio/charset/Charset;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lnet/lingala/zip4j/util/PasswordCallback;Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "passwordCallback"    # Lnet/lingala/zip4j/util/PasswordCallback;
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .line 79
    new-instance v0, Lnet/lingala/zip4j/model/Zip4jConfig;

    const/16 v1, 0x1000

    invoke-direct {v0, p3, v1}, Lnet/lingala/zip4j/model/Zip4jConfig;-><init>(Ljava/nio/charset/Charset;I)V

    invoke-direct {p0, p1, p2, v0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;-><init>(Ljava/io/InputStream;Lnet/lingala/zip4j/util/PasswordCallback;Lnet/lingala/zip4j/model/Zip4jConfig;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lnet/lingala/zip4j/util/PasswordCallback;Lnet/lingala/zip4j/model/Zip4jConfig;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "passwordCallback"    # Lnet/lingala/zip4j/util/PasswordCallback;
    .param p3, "zip4jConfig"    # Lnet/lingala/zip4j/model/Zip4jConfig;

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;-><init>(Ljava/io/InputStream;[CLnet/lingala/zip4j/util/PasswordCallback;Lnet/lingala/zip4j/model/Zip4jConfig;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[C)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "password"    # [C

    .line 67
    const/4 v0, 0x0

    check-cast v0, Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, v0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;-><init>(Ljava/io/InputStream;[CLjava/nio/charset/Charset;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[CLjava/nio/charset/Charset;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "password"    # [C
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .line 75
    new-instance v0, Lnet/lingala/zip4j/model/Zip4jConfig;

    const/16 v1, 0x1000

    invoke-direct {v0, p3, v1}, Lnet/lingala/zip4j/model/Zip4jConfig;-><init>(Ljava/nio/charset/Charset;I)V

    invoke-direct {p0, p1, p2, v0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;-><init>(Ljava/io/InputStream;[CLnet/lingala/zip4j/model/Zip4jConfig;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[CLnet/lingala/zip4j/model/Zip4jConfig;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "password"    # [C
    .param p3, "zip4jConfig"    # Lnet/lingala/zip4j/model/Zip4jConfig;

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;-><init>(Ljava/io/InputStream;[CLnet/lingala/zip4j/util/PasswordCallback;Lnet/lingala/zip4j/model/Zip4jConfig;)V

    .line 84
    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;[CLnet/lingala/zip4j/util/PasswordCallback;Lnet/lingala/zip4j/model/Zip4jConfig;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "password"    # [C
    .param p3, "passwordCallback"    # Lnet/lingala/zip4j/util/PasswordCallback;
    .param p4, "zip4jConfig"    # Lnet/lingala/zip4j/model/Zip4jConfig;

    .line 90
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 47
    new-instance v0, Lnet/lingala/zip4j/headers/HeaderReader;

    invoke-direct {v0}, Lnet/lingala/zip4j/headers/HeaderReader;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->headerReader:Lnet/lingala/zip4j/headers/HeaderReader;

    .line 51
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->crc32:Ljava/util/zip/CRC32;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->canSkipExtendedLocalFileHeader:Z

    .line 55
    iput-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->streamClosed:Z

    .line 56
    iput-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->entryEOFReached:Z

    .line 91
    invoke-virtual {p4}, Lnet/lingala/zip4j/model/Zip4jConfig;->getBufferSize()I

    move-result v0

    const/16 v1, 0x200

    if-lt v0, v1, :cond_0

    .line 95
    new-instance v0, Ljava/io/PushbackInputStream;

    invoke-virtual {p4}, Lnet/lingala/zip4j/model/Zip4jConfig;->getBufferSize()I

    move-result v1

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->inputStream:Ljava/io/PushbackInputStream;

    .line 96
    iput-object p2, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->password:[C

    .line 97
    iput-object p3, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->passwordCallback:Lnet/lingala/zip4j/util/PasswordCallback;

    .line 98
    iput-object p4, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    .line 99
    return-void

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer size cannot be less than 512 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertStreamOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 385
    iget-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->streamClosed:Z

    if-nez v0, :cond_0

    .line 388
    return-void

    .line 386
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkIfZip64ExtraDataRecordPresentInLFH(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/ExtraDataRecord;",
            ">;)Z"
        }
    .end annotation

    .line 297
    .local p1, "extraDataRecords":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/ExtraDataRecord;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 298
    return v0

    .line 301
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/lingala/zip4j/model/ExtraDataRecord;

    .line 302
    .local v2, "extraDataRecord":Lnet/lingala/zip4j/model/ExtraDataRecord;
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getHeader()J

    move-result-wide v3

    sget-object v5, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_EXTRA_FIELD_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v5}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 303
    const/4 v0, 0x1

    return v0

    .line 305
    .end local v2    # "extraDataRecord":Lnet/lingala/zip4j/model/ExtraDataRecord;
    :cond_1
    goto :goto_0

    .line 307
    :cond_2
    return v0
.end method

.method private endOfCompressedDataReached()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->decompressedInputStream:Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;

    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->inputStream:Ljava/io/PushbackInputStream;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;->pushBackInputStreamIfNecessary(Ljava/io/PushbackInputStream;)V

    .line 234
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->decompressedInputStream:Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;

    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->inputStream:Ljava/io/PushbackInputStream;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;->endOfEntryReached(Ljava/io/InputStream;)V

    .line 236
    invoke-direct {p0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->readExtendedLocalFileHeaderIfPresent()V

    .line 237
    invoke-direct {p0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->verifyCrc()V

    .line 238
    invoke-direct {p0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->resetFields()V

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->entryEOFReached:Z

    .line 240
    return-void
.end method

.method private getCompressedSize(Lnet/lingala/zip4j/model/LocalFileHeader;)J
    .locals 4
    .param p1, "localFileHeader"    # Lnet/lingala/zip4j/model/LocalFileHeader;

    .line 339
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->getCompressionMethod(Lnet/lingala/zip4j/model/AbstractFileHeader;)Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionMethod;->STORE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getUncompressedSize()J

    move-result-wide v0

    return-wide v0

    .line 343
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->isDataDescriptorExists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->canSkipExtendedLocalFileHeader:Z

    if-nez v0, :cond_1

    .line 344
    const-wide/16 v0, -0x1

    return-wide v0

    .line 347
    :cond_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCompressedSize()J

    move-result-wide v0

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->getEncryptionHeaderSize(Lnet/lingala/zip4j/model/LocalFileHeader;)I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getEncryptionHeaderSize(Lnet/lingala/zip4j/model/LocalFileHeader;)I
    .locals 4
    .param p1, "localFileHeader"    # Lnet/lingala/zip4j/model/LocalFileHeader;

    .line 351
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->isEncrypted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 352
    return v1

    .line 355
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v0

    sget-object v2, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0xc

    if-eqz v0, :cond_1

    .line 356
    nop

    .line 357
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getAesKeyStrength()Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getSaltLength()I

    move-result v0

    add-int/2addr v2, v0

    .line 356
    return v2

    .line 358
    :cond_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v0

    sget-object v3, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {v0, v3}, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 359
    return v2

    .line 361
    :cond_2
    return v1
.end method

.method private initializeCipherInputStream(Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;Lnet/lingala/zip4j/model/LocalFileHeader;)Lnet/lingala/zip4j/io/inputstream/CipherInputStream;
    .locals 3
    .param p1, "zipEntryInputStream"    # Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;
    .param p2, "localFileHeader"    # Lnet/lingala/zip4j/model/LocalFileHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->isEncrypted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Lnet/lingala/zip4j/io/inputstream/NoCipherInputStream;

    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->password:[C

    iget-object v2, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/Zip4jConfig;->getBufferSize()I

    move-result v2

    invoke-direct {v0, p1, p2, v1, v2}, Lnet/lingala/zip4j/io/inputstream/NoCipherInputStream;-><init>(Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;Lnet/lingala/zip4j/model/LocalFileHeader;[CI)V

    return-object v0

    .line 254
    :cond_0
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne v0, v1, :cond_1

    .line 255
    new-instance v0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;

    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->password:[C

    iget-object v2, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/Zip4jConfig;->getBufferSize()I

    move-result v2

    invoke-direct {v0, p1, p2, v1, v2}, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;-><init>(Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;Lnet/lingala/zip4j/model/LocalFileHeader;[CI)V

    return-object v0

    .line 256
    :cond_1
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne v0, v1, :cond_2

    .line 257
    new-instance v0, Lnet/lingala/zip4j/io/inputstream/ZipStandardCipherInputStream;

    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->password:[C

    iget-object v2, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/Zip4jConfig;->getBufferSize()I

    move-result v2

    invoke-direct {v0, p1, p2, v1, v2}, Lnet/lingala/zip4j/io/inputstream/ZipStandardCipherInputStream;-><init>(Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;Lnet/lingala/zip4j/model/LocalFileHeader;[CI)V

    return-object v0

    .line 259
    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Entry [%s] Strong Encryption not supported"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    sget-object v2, Lnet/lingala/zip4j/exception/ZipException$Type;->UNSUPPORTED_ENCRYPTION:Lnet/lingala/zip4j/exception/ZipException$Type;

    invoke-direct {v1, v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$Type;)V

    throw v1
.end method

.method private initializeDecompressorForThisEntry(Lnet/lingala/zip4j/io/inputstream/CipherInputStream;Lnet/lingala/zip4j/model/LocalFileHeader;)Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;
    .locals 3
    .param p1, "cipherInputStream"    # Lnet/lingala/zip4j/io/inputstream/CipherInputStream;
    .param p2, "localFileHeader"    # Lnet/lingala/zip4j/model/LocalFileHeader;

    .line 266
    invoke-static {p2}, Lnet/lingala/zip4j/util/Zip4jUtil;->getCompressionMethod(Lnet/lingala/zip4j/model/AbstractFileHeader;)Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v0

    .line 268
    .local v0, "compressionMethod":Lnet/lingala/zip4j/model/enums/CompressionMethod;
    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionMethod;->DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    if-ne v0, v1, :cond_0

    .line 269
    new-instance v1, Lnet/lingala/zip4j/io/inputstream/InflaterInputStream;

    iget-object v2, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/Zip4jConfig;->getBufferSize()I

    move-result v2

    invoke-direct {v1, p1, v2}, Lnet/lingala/zip4j/io/inputstream/InflaterInputStream;-><init>(Lnet/lingala/zip4j/io/inputstream/CipherInputStream;I)V

    return-object v1

    .line 272
    :cond_0
    new-instance v1, Lnet/lingala/zip4j/io/inputstream/StoreInputStream;

    invoke-direct {v1, p1}, Lnet/lingala/zip4j/io/inputstream/StoreInputStream;-><init>(Lnet/lingala/zip4j/io/inputstream/CipherInputStream;)V

    return-object v1
.end method

.method private initializeEntryInputStream(Lnet/lingala/zip4j/model/LocalFileHeader;)Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;
    .locals 4
    .param p1, "localFileHeader"    # Lnet/lingala/zip4j/model/LocalFileHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    new-instance v0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;

    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->inputStream:Ljava/io/PushbackInputStream;

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->getCompressedSize(Lnet/lingala/zip4j/model/LocalFileHeader;)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;-><init>(Ljava/io/InputStream;J)V

    .line 244
    .local v0, "zipEntryInputStream":Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;
    invoke-direct {p0, v0, p1}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->initializeCipherInputStream(Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;Lnet/lingala/zip4j/model/LocalFileHeader;)Lnet/lingala/zip4j/io/inputstream/CipherInputStream;

    move-result-object v1

    .line 245
    .local v1, "cipherInputStream":Lnet/lingala/zip4j/io/inputstream/CipherInputStream;
    invoke-direct {p0, v1, p1}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->initializeDecompressorForThisEntry(Lnet/lingala/zip4j/io/inputstream/CipherInputStream;Lnet/lingala/zip4j/model/LocalFileHeader;)Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;

    move-result-object v2

    return-object v2
.end method

.method private isEncryptionMethodZipStandard(Lnet/lingala/zip4j/model/LocalFileHeader;)Z
    .locals 2
    .param p1, "localFileHeader"    # Lnet/lingala/zip4j/model/LocalFileHeader;

    .line 381
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isEntryDirectory(Ljava/lang/String;)Z
    .locals 1
    .param p1, "entryName"    # Ljava/lang/String;

    .line 335
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\\"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private readExtendedLocalFileHeaderIfPresent()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->isDataDescriptorExists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->canSkipExtendedLocalFileHeader:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->headerReader:Lnet/lingala/zip4j/headers/HeaderReader;

    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->inputStream:Ljava/io/PushbackInputStream;

    iget-object v2, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    .line 281
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->checkIfZip64ExtraDataRecordPresentInLFH(Ljava/util/List;)Z

    move-result v2

    .line 280
    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/headers/HeaderReader;->readDataDescriptor(Ljava/io/InputStream;Z)Lnet/lingala/zip4j/model/DataDescriptor;

    move-result-object v0

    .line 282
    .local v0, "dataDescriptor":Lnet/lingala/zip4j/model/DataDescriptor;
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/DataDescriptor;->getCompressedSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCompressedSize(J)V

    .line 283
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/DataDescriptor;->getUncompressedSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/model/LocalFileHeader;->setUncompressedSize(J)V

    .line 284
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/DataDescriptor;->getCrc()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCrc(J)V

    .line 285
    return-void

    .line 277
    .end local v0    # "dataDescriptor":Lnet/lingala/zip4j/model/DataDescriptor;
    :cond_1
    :goto_0
    return-void
.end method

.method private readUntilEndOfEntry()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCompressedSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    .line 367
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->isDataDescriptorExists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 368
    return-void

    .line 371
    :cond_1
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->endOfEntryBuffer:[B

    if-nez v0, :cond_2

    .line 372
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->endOfEntryBuffer:[B

    .line 376
    :cond_2
    :goto_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->endOfEntryBuffer:[B

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 377
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->entryEOFReached:Z

    .line 378
    return-void
.end method

.method private resetFields()V
    .locals 1

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    .line 331
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 332
    return-void
.end method

.method private verifyCrc()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    .line 312
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getAesVersion()Lnet/lingala/zip4j/model/enums/AesVersion;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/AesVersion;->TWO:Lnet/lingala/zip4j/model/enums/AesVersion;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/enums/AesVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCrc()J

    move-result-wide v0

    iget-object v2, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 318
    sget-object v0, Lnet/lingala/zip4j/exception/ZipException$Type;->CHECKSUM_MISMATCH:Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 320
    .local v0, "exceptionType":Lnet/lingala/zip4j/exception/ZipException$Type;
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-direct {p0, v1}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->isEncryptionMethodZipStandard(Lnet/lingala/zip4j/model/LocalFileHeader;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 321
    sget-object v0, Lnet/lingala/zip4j/exception/ZipException$Type;->WRONG_PASSWORD:Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 324
    :cond_1
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reached end of entry, but crc verification failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/LocalFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$Type;)V

    throw v1

    .line 327
    .end local v0    # "exceptionType":Lnet/lingala/zip4j/exception/ZipException$Type;
    :cond_2
    return-void
.end method

.method private verifyLocalFileHeader(Lnet/lingala/zip4j/model/LocalFileHeader;)V
    .locals 4
    .param p1, "localFileHeader"    # Lnet/lingala/zip4j/model/LocalFileHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->isEntryDirectory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionMethod;->STORE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    if-ne v0, v1, :cond_1

    .line 290
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getUncompressedSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid local file header for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Uncompressed size has to be set for entry of compression type store which is not a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    invoke-direct {p0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->assertStreamOpen()V

    .line 214
    iget-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->entryEOFReached:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    iget-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->streamClosed:Z

    if-eqz v0, :cond_0

    .line 202
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->decompressedInputStream:Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->decompressedInputStream:Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;->close()V

    .line 208
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->streamClosed:Z

    .line 209
    return-void
.end method

.method public getNextEntry()Lnet/lingala/zip4j/model/LocalFileHeader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->getNextEntry(Lnet/lingala/zip4j/model/FileHeader;Z)Lnet/lingala/zip4j/model/LocalFileHeader;

    move-result-object v0

    return-object v0
.end method

.method public getNextEntry(Lnet/lingala/zip4j/model/FileHeader;Z)Lnet/lingala/zip4j/model/LocalFileHeader;
    .locals 4
    .param p1, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p2, "readUntilEndOfCurrentEntryIfOpen"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 109
    invoke-direct {p0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->readUntilEndOfEntry()V

    .line 112
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->headerReader:Lnet/lingala/zip4j/headers/HeaderReader;

    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->inputStream:Ljava/io/PushbackInputStream;

    iget-object v2, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/Zip4jConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/headers/HeaderReader;->readLocalFileHeader(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lnet/lingala/zip4j/model/LocalFileHeader;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    .line 114
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    if-nez v0, :cond_1

    .line 115
    const/4 v0, 0x0

    return-object v0

    .line 118
    :cond_1
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->password:[C

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->passwordCallback:Lnet/lingala/zip4j/util/PasswordCallback;

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->passwordCallback:Lnet/lingala/zip4j/util/PasswordCallback;

    invoke-interface {v0}, Lnet/lingala/zip4j/util/PasswordCallback;->getPassword()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->setPassword([C)V

    .line 122
    :cond_2
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->verifyLocalFileHeader(Lnet/lingala/zip4j/model/LocalFileHeader;)V

    .line 123
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 125
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 126
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getCrc()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCrc(J)V

    .line 127
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCompressedSize(J)V

    .line 128
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getUncompressedSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/model/LocalFileHeader;->setUncompressedSize(J)V

    .line 132
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->isDirectory()Z

    move-result v2

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/LocalFileHeader;->setDirectory(Z)V

    .line 133
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->canSkipExtendedLocalFileHeader:Z

    goto :goto_0

    .line 135
    :cond_3
    iput-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->canSkipExtendedLocalFileHeader:Z

    .line 138
    :goto_0
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-direct {p0, v1}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->initializeEntryInputStream(Lnet/lingala/zip4j/model/LocalFileHeader;)Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;

    move-result-object v1

    iput-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->decompressedInputStream:Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;

    .line 139
    iput-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->entryEOFReached:Z

    .line 140
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    return-object v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 146
    .local v0, "b":[B
    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->read([B)I

    move-result v1

    .line 148
    .local v1, "readLen":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 149
    return v2

    .line 152
    :cond_0
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    return v2
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    iget-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->streamClosed:Z

    if-nez v0, :cond_5

    .line 166
    if-ltz p3, :cond_4

    .line 170
    if-nez p3, :cond_0

    .line 171
    const/4 v0, 0x0

    return v0

    .line 174
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 177
    return v1

    .line 181
    :cond_1
    :try_start_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->decompressedInputStream:Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;->read([BII)I

    move-result v0

    .line 183
    .local v0, "readLen":I
    if-ne v0, v1, :cond_2

    .line 184
    invoke-direct {p0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->endOfCompressedDataReached()V

    goto :goto_0

    .line 186
    :cond_2
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v1, p1, p2, v0}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    return v0

    .line 190
    .end local v0    # "readLen":I
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-direct {p0, v1}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->isEncryptionMethodZipStandard(Lnet/lingala/zip4j/model/LocalFileHeader;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 192
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    sget-object v4, Lnet/lingala/zip4j/exception/ZipException$Type;->WRONG_PASSWORD:Lnet/lingala/zip4j/exception/ZipException$Type;

    invoke-direct {v1, v2, v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lnet/lingala/zip4j/exception/ZipException$Type;)V

    throw v1

    .line 195
    :cond_3
    throw v0

    .line 167
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative read length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPassword([C)V
    .locals 0
    .param p1, "password"    # [C

    .line 225
    iput-object p1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->password:[C

    .line 226
    return-void
.end method
