.class public Lnet/lingala/zip4j/headers/b;
.super Ljava/lang/Object;
.source "HeaderReader.java"


# instance fields
.field private alm:Lnet/lingala/zip4j/model/p;

.field private final amc:Lnet/lingala/zip4j/d/e;

.field private final amd:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lnet/lingala/zip4j/d/e;

    invoke-direct {v0}, Lnet/lingala/zip4j/d/e;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/headers/b;->amc:Lnet/lingala/zip4j/d/e;

    .line 64
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/lingala/zip4j/headers/b;->amd:[B

    return-void
.end method

.method private a(Ljava/io/RandomAccessFile;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 687
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    .line 688
    const-wide/16 v2, 0x16

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 692
    sub-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lnet/lingala/zip4j/headers/b;->b(Ljava/io/RandomAccessFile;J)V

    .line 693
    iget-object v2, p0, Lnet/lingala/zip4j/headers/b;->amc:Lnet/lingala/zip4j/d/e;

    invoke-virtual {v2, p1}, Lnet/lingala/zip4j/d/e;->d(Ljava/io/RandomAccessFile;)I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Lnet/lingala/zip4j/headers/HeaderSignature;->amh:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v4}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 694
    return-wide v0

    .line 697
    :cond_0
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/headers/b;->b(Ljava/io/RandomAccessFile;)J

    move-result-wide v0

    return-wide v0

    .line 689
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "Zip file size less than size of zip headers. Probably not a zip file."

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lnet/lingala/zip4j/model/p;)J
    .locals 2

    .line 679
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tF()Lnet/lingala/zip4j/model/m;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/m;->tv()J

    move-result-wide v0

    return-wide v0

    .line 683
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tB()Lnet/lingala/zip4j/model/f;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/f;->tc()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method private a(Ljava/io/RandomAccessFile;ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    .line 725
    const/4 v0, 0x0

    if-gtz p2, :cond_0

    .line 726
    return-object v0

    .line 730
    :cond_0
    :try_start_0
    new-array p2, p2, [B

    .line 731
    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 732
    const/4 p1, 0x0

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    sget-object p3, Lnet/lingala/zip4j/d/d;->apR:Ljava/nio/charset/Charset;

    :goto_0
    invoke-static {p2, p1, p3}, Lnet/lingala/zip4j/headers/c;->a([BZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 733
    :catch_0
    move-exception p1

    .line 735
    return-object v0
.end method

.method private a(Ljava/io/RandomAccessFile;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            "I)",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/h;",
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
    const/4 p1, 0x0

    return-object p1

    .line 270
    :cond_1
    new-array v0, p2, [B

    .line 271
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 274
    :try_start_0
    invoke-direct {p0, v0, p2}, Lnet/lingala/zip4j/headers/b;->k([BI)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 275
    :catch_0
    move-exception p1

    .line 277
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/util/List;Lnet/lingala/zip4j/d/e;)Lnet/lingala/zip4j/model/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/h;",
            ">;",
            "Lnet/lingala/zip4j/d/e;",
            ")",
            "Lnet/lingala/zip4j/model/a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 642
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 643
    return-object v0

    .line 646
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/lingala/zip4j/model/h;

    .line 647
    if-nez v1, :cond_1

    .line 648
    goto :goto_0

    .line 651
    :cond_1
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/h;->tf()J

    move-result-wide v2

    sget-object v4, Lnet/lingala/zip4j/headers/HeaderSignature;->amp:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v4}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 653
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/h;->getData()[B

    move-result-object p1

    if-eqz p1, :cond_2

    .line 657
    new-instance p1, Lnet/lingala/zip4j/model/a;

    invoke-direct {p1}, Lnet/lingala/zip4j/model/a;-><init>()V

    .line 659
    sget-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->amp:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/a;->a(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 660
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/h;->sY()I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/a;->setDataSize(I)V

    .line 662
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/h;->getData()[B

    move-result-object v0

    .line 663
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lnet/lingala/zip4j/d/e;->n([BI)I

    move-result v2

    invoke-static {v2}, Lnet/lingala/zip4j/model/enums/AesVersion;->fs(I)Lnet/lingala/zip4j/model/enums/AesVersion;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnet/lingala/zip4j/model/a;->a(Lnet/lingala/zip4j/model/enums/AesVersion;)V

    .line 664
    const/4 v2, 0x2

    new-array v3, v2, [B

    .line 665
    invoke-static {v0, v2, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 666
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/a;->fr(Ljava/lang/String;)V

    .line 667
    const/4 v1, 0x4

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->fr(I)Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/a;->a(Lnet/lingala/zip4j/model/enums/AesKeyStrength;)V

    .line 668
    const/4 v1, 0x5

    .line 669
    invoke-virtual {p2, v0, v1}, Lnet/lingala/zip4j/d/e;->n([BI)I

    move-result p2

    invoke-static {p2}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->ft(I)Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object p2

    .line 668
    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/model/a;->a(Lnet/lingala/zip4j/model/enums/CompressionMethod;)V

    .line 671
    return-object p1

    .line 654
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "corrupt AES extra data records"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 673
    :cond_3
    goto :goto_0

    .line 675
    :cond_4
    return-object v0
.end method

.method private a(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/d/e;Ljava/nio/charset/Charset;)Lnet/lingala/zip4j/model/d;
    .locals 21
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

    new-instance v4, Lnet/lingala/zip4j/model/d;

    invoke-direct {v4}, Lnet/lingala/zip4j/model/d;-><init>()V

    .line 135
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 137
    iget-object v6, v0, Lnet/lingala/zip4j/headers/b;->alm:Lnet/lingala/zip4j/model/p;

    invoke-static {v6}, Lnet/lingala/zip4j/headers/c;->b(Lnet/lingala/zip4j/model/p;)J

    move-result-wide v6

    .line 138
    iget-object v8, v0, Lnet/lingala/zip4j/headers/b;->alm:Lnet/lingala/zip4j/model/p;

    invoke-direct {v0, v8}, Lnet/lingala/zip4j/headers/b;->a(Lnet/lingala/zip4j/model/p;)J

    move-result-wide v8

    .line 140
    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 142
    const/4 v6, 0x2

    new-array v7, v6, [B

    .line 143
    const/4 v10, 0x4

    new-array v11, v10, [B

    .line 145
    const/4 v12, 0x0

    move v13, v12

    :goto_0
    int-to-long v14, v13

    cmp-long v14, v14, v8

    if-gez v14, :cond_5

    .line 146
    new-instance v14, Lnet/lingala/zip4j/model/i;

    invoke-direct {v14}, Lnet/lingala/zip4j/model/i;-><init>()V

    .line 147
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/d/e;->d(Ljava/io/RandomAccessFile;)I

    move-result v15

    move-object/from16 v16, v11

    int-to-long v10, v15

    sget-object v15, Lnet/lingala/zip4j/headers/HeaderSignature;->amg:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v15}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v17

    cmp-long v10, v10, v17

    const/4 v11, 0x1

    if-nez v10, :cond_4

    .line 150
    sget-object v10, Lnet/lingala/zip4j/headers/HeaderSignature;->amg:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v14, v10}, Lnet/lingala/zip4j/model/i;->a(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 151
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/d/e;->e(Ljava/io/RandomAccessFile;)I

    move-result v10

    invoke-virtual {v14, v10}, Lnet/lingala/zip4j/model/i;->fl(I)V

    .line 152
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/d/e;->e(Ljava/io/RandomAccessFile;)I

    move-result v10

    invoke-virtual {v14, v10}, Lnet/lingala/zip4j/model/i;->fc(I)V

    .line 154
    new-array v10, v6, [B

    .line 155
    invoke-virtual {v1, v10}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 156
    aget-byte v15, v10, v12

    invoke-static {v15, v12}, Lnet/lingala/zip4j/d/a;->a(BI)Z

    move-result v15

    invoke-virtual {v14, v15}, Lnet/lingala/zip4j/model/i;->bt(Z)V

    .line 157
    aget-byte v15, v10, v12

    const/4 v6, 0x3

    invoke-static {v15, v6}, Lnet/lingala/zip4j/d/a;->a(BI)Z

    move-result v15

    invoke-virtual {v14, v15}, Lnet/lingala/zip4j/model/i;->bu(Z)V

    .line 158
    aget-byte v11, v10, v11

    invoke-static {v11, v6}, Lnet/lingala/zip4j/d/a;->a(BI)Z

    move-result v6

    invoke-virtual {v14, v6}, Lnet/lingala/zip4j/model/i;->bv(Z)V

    .line 159
    invoke-virtual {v10}, [B->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-virtual {v14, v6}, Lnet/lingala/zip4j/model/i;->N([B)V

    .line 161
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/d/e;->e(Ljava/io/RandomAccessFile;)I

    move-result v6

    invoke-static {v6}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->ft(I)Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v6

    invoke-virtual {v14, v6}, Lnet/lingala/zip4j/model/i;->a(Lnet/lingala/zip4j/model/enums/CompressionMethod;)V

    .line 163
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/d/e;->d(Ljava/io/RandomAccessFile;)I

    move-result v6

    int-to-long v10, v6

    invoke-virtual {v14, v10, v11}, Lnet/lingala/zip4j/model/i;->t(J)V

    .line 165
    move-object/from16 v6, v16

    invoke-virtual {v1, v6}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 166
    invoke-virtual {v2, v6, v12}, Lnet/lingala/zip4j/d/e;->l([BI)J

    move-result-wide v10

    invoke-virtual {v14, v10, v11}, Lnet/lingala/zip4j/model/i;->setCrc(J)V

    .line 168
    move/from16 v19, v13

    const/4 v10, 0x4

    invoke-virtual {v2, v1, v10}, Lnet/lingala/zip4j/d/e;->b(Ljava/io/RandomAccessFile;I)J

    move-result-wide v12

    invoke-virtual {v14, v12, v13}, Lnet/lingala/zip4j/model/i;->setCompressedSize(J)V

    .line 169
    invoke-virtual {v2, v1, v10}, Lnet/lingala/zip4j/d/e;->b(Ljava/io/RandomAccessFile;I)J

    move-result-wide v11

    invoke-virtual {v14, v11, v12}, Lnet/lingala/zip4j/model/i;->u(J)V

    .line 171
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/d/e;->e(Ljava/io/RandomAccessFile;)I

    move-result v11

    .line 172
    invoke-virtual {v14, v11}, Lnet/lingala/zip4j/model/i;->fd(I)V

    .line 174
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/d/e;->e(Ljava/io/RandomAccessFile;)I

    move-result v12

    invoke-virtual {v14, v12}, Lnet/lingala/zip4j/model/i;->fe(I)V

    .line 176
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/d/e;->e(Ljava/io/RandomAccessFile;)I

    move-result v12

    .line 177
    invoke-virtual {v14, v12}, Lnet/lingala/zip4j/model/i;->fm(I)V

    .line 179
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/d/e;->e(Ljava/io/RandomAccessFile;)I

    move-result v13

    invoke-virtual {v14, v13}, Lnet/lingala/zip4j/model/i;->fn(I)V

    .line 181
    invoke-virtual {v1, v7}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 182
    invoke-virtual {v7}, [B->clone()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    invoke-virtual {v14, v13}, Lnet/lingala/zip4j/model/i;->O([B)V

    .line 184
    invoke-virtual {v1, v6}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 185
    invoke-virtual {v6}, [B->clone()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    invoke-virtual {v14, v13}, Lnet/lingala/zip4j/model/i;->P([B)V

    .line 187
    invoke-virtual {v1, v6}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 188
    move/from16 v20, v11

    const/4 v13, 0x0

    invoke-virtual {v2, v6, v13}, Lnet/lingala/zip4j/d/e;->l([BI)J

    move-result-wide v10

    invoke-virtual {v14, v10, v11}, Lnet/lingala/zip4j/model/i;->y(J)V

    .line 190
    if-lez v20, :cond_0

    .line 191
    move/from16 v10, v20

    new-array v10, v10, [B

    .line 192
    invoke-virtual {v1, v10}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 193
    invoke-virtual {v14}, Lnet/lingala/zip4j/model/i;->sV()Z

    move-result v11

    invoke-static {v10, v11, v3}, Lnet/lingala/zip4j/headers/c;->a([BZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v10

    .line 194
    invoke-virtual {v14, v10}, Lnet/lingala/zip4j/model/i;->setFileName(Ljava/lang/String;)V

    .line 195
    goto :goto_1

    .line 196
    :cond_0
    const/4 v10, 0x0

    invoke-virtual {v14, v10}, Lnet/lingala/zip4j/model/i;->setFileName(Ljava/lang/String;)V

    .line 199
    :goto_1
    invoke-virtual {v14}, Lnet/lingala/zip4j/model/i;->ti()[B

    move-result-object v10

    invoke-virtual {v14}, Lnet/lingala/zip4j/model/i;->getFileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Lnet/lingala/zip4j/headers/b;->d([BLjava/lang/String;)Z

    move-result v10

    invoke-virtual {v14, v10}, Lnet/lingala/zip4j/model/i;->bw(Z)V

    .line 200
    invoke-direct {v0, v1, v14}, Lnet/lingala/zip4j/headers/b;->a(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/model/i;)V

    .line 201
    invoke-direct {v0, v14, v2}, Lnet/lingala/zip4j/headers/b;->a(Lnet/lingala/zip4j/model/i;Lnet/lingala/zip4j/d/e;)V

    .line 202
    invoke-direct {v0, v14, v2}, Lnet/lingala/zip4j/headers/b;->b(Lnet/lingala/zip4j/model/i;Lnet/lingala/zip4j/d/e;)V

    .line 204
    if-lez v12, :cond_1

    .line 205
    new-array v10, v12, [B

    .line 206
    invoke-virtual {v1, v10}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 207
    invoke-virtual {v14}, Lnet/lingala/zip4j/model/i;->sV()Z

    move-result v11

    invoke-static {v10, v11, v3}, Lnet/lingala/zip4j/headers/c;->a([BZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Lnet/lingala/zip4j/model/i;->ft(Ljava/lang/String;)V

    .line 210
    :cond_1
    invoke-virtual {v14}, Lnet/lingala/zip4j/model/i;->isEncrypted()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 211
    invoke-virtual {v14}, Lnet/lingala/zip4j/model/i;->sU()Lnet/lingala/zip4j/model/a;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 212
    sget-object v10, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->apb:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {v14, v10}, Lnet/lingala/zip4j/model/i;->a(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V

    goto :goto_2

    .line 214
    :cond_2
    sget-object v10, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->aoZ:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {v14, v10}, Lnet/lingala/zip4j/model/i;->a(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V

    .line 218
    :cond_3
    :goto_2
    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    add-int/lit8 v10, v19, 0x1

    move-object v11, v6

    move v12, v13

    const/4 v6, 0x2

    move v13, v10

    const/4 v10, 0x4

    goto/16 :goto_0

    .line 148
    :cond_4
    move/from16 v19, v13

    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected central directory entry not found (#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v19, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_5
    invoke-virtual {v4, v5}, Lnet/lingala/zip4j/model/d;->D(Ljava/util/List;)V

    .line 223
    new-instance v0, Lnet/lingala/zip4j/model/e;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/e;-><init>()V

    .line 224
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/d/e;->d(Ljava/io/RandomAccessFile;)I

    move-result v3

    int-to-long v5, v3

    sget-object v3, Lnet/lingala/zip4j/headers/HeaderSignature;->amj:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v3}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v7

    cmp-long v3, v5, v7

    if-nez v3, :cond_6

    .line 225
    sget-object v3, Lnet/lingala/zip4j/headers/HeaderSignature;->amj:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v0, v3}, Lnet/lingala/zip4j/model/e;->a(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 226
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/d/e;->e(Ljava/io/RandomAccessFile;)I

    move-result v2

    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/e;->ff(I)V

    .line 228
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/e;->sY()I

    move-result v2

    if-lez v2, :cond_6

    .line 229
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/e;->sY()I

    move-result v2

    new-array v2, v2, [B

    .line 230
    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 231
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/e;->fs(Ljava/lang/String;)V

    .line 235
    :cond_6
    return-object v4
.end method

.method private a(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/d/e;Lnet/lingala/zip4j/model/k;)Lnet/lingala/zip4j/model/f;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/headers/b;->a(Ljava/io/RandomAccessFile;)J

    move-result-wide v0

    .line 111
    const-wide/16 v2, 0x4

    add-long/2addr v2, v0

    invoke-direct {p0, p1, v2, v3}, Lnet/lingala/zip4j/headers/b;->b(Ljava/io/RandomAccessFile;J)V

    .line 113
    new-instance v2, Lnet/lingala/zip4j/model/f;

    invoke-direct {v2}, Lnet/lingala/zip4j/model/f;-><init>()V

    .line 114
    sget-object v3, Lnet/lingala/zip4j/headers/HeaderSignature;->amh:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/model/f;->a(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 115
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/d/e;->e(Ljava/io/RandomAccessFile;)I

    move-result v3

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/model/f;->fg(I)V

    .line 116
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/d/e;->e(Ljava/io/RandomAccessFile;)I

    move-result v3

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/model/f;->fh(I)V

    .line 117
    nop

    .line 118
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/d/e;->e(Ljava/io/RandomAccessFile;)I

    move-result v3

    .line 117
    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/model/f;->fi(I)V

    .line 119
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/d/e;->e(Ljava/io/RandomAccessFile;)I

    move-result v3

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/model/f;->fj(I)V

    .line 120
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/d/e;->d(Ljava/io/RandomAccessFile;)I

    move-result v3

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/model/f;->fk(I)V

    .line 121
    invoke-virtual {v2, v0, v1}, Lnet/lingala/zip4j/model/f;->w(J)V

    .line 123
    iget-object v0, p0, Lnet/lingala/zip4j/headers/b;->amd:[B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 124
    iget-object v0, p0, Lnet/lingala/zip4j/headers/b;->amd:[B

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lnet/lingala/zip4j/d/e;->l([BI)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lnet/lingala/zip4j/model/f;->v(J)V

    .line 126
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/d/e;->e(Ljava/io/RandomAccessFile;)I

    move-result p2

    .line 127
    invoke-virtual {p3}, Lnet/lingala/zip4j/model/k;->tm()Ljava/nio/charset/Charset;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/headers/b;->a(Ljava/io/RandomAccessFile;ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lnet/lingala/zip4j/model/f;->setComment(Ljava/lang/String;)V

    .line 129
    iget-object p1, p0, Lnet/lingala/zip4j/headers/b;->alm:Lnet/lingala/zip4j/model/p;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/f;->sZ()I

    move-result p2

    if-lez p2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/p;->by(Z)V

    .line 130
    return-object v2
.end method

.method private a(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/d/e;J)Lnet/lingala/zip4j/model/l;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    new-instance v0, Lnet/lingala/zip4j/model/l;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/l;-><init>()V

    .line 332
    invoke-direct {p0, p1, p3, p4}, Lnet/lingala/zip4j/headers/b;->a(Ljava/io/RandomAccessFile;J)V

    .line 334
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/d/e;->d(Ljava/io/RandomAccessFile;)I

    move-result p3

    .line 335
    int-to-long p3, p3

    sget-object v1, Lnet/lingala/zip4j/headers/HeaderSignature;->amm:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v1}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v1

    cmp-long p3, p3, v1

    if-nez p3, :cond_0

    .line 336
    iget-object p3, p0, Lnet/lingala/zip4j/headers/b;->alm:Lnet/lingala/zip4j/model/p;

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Lnet/lingala/zip4j/model/p;->bz(Z)V

    .line 337
    sget-object p3, Lnet/lingala/zip4j/headers/HeaderSignature;->amm:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v0, p3}, Lnet/lingala/zip4j/model/l;->a(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 343
    nop

    .line 344
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/d/e;->d(Ljava/io/RandomAccessFile;)I

    move-result p3

    .line 343
    invoke-virtual {v0, p3}, Lnet/lingala/zip4j/model/l;->fo(I)V

    .line 345
    nop

    .line 346
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/d/e;->c(Ljava/io/RandomAccessFile;)J

    move-result-wide p3

    .line 345
    invoke-virtual {v0, p3, p4}, Lnet/lingala/zip4j/model/l;->z(J)V

    .line 347
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/d/e;->d(Ljava/io/RandomAccessFile;)I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/model/l;->fp(I)V

    .line 349
    return-object v0

    .line 339
    :cond_0
    iget-object p1, p0, Lnet/lingala/zip4j/headers/b;->alm:Lnet/lingala/zip4j/model/p;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/model/p;->bz(Z)V

    .line 340
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/d/e;)Lnet/lingala/zip4j/model/m;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lnet/lingala/zip4j/headers/b;->alm:Lnet/lingala/zip4j/model/p;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/p;->tE()Lnet/lingala/zip4j/model/l;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 359
    iget-object v0, p0, Lnet/lingala/zip4j/headers/b;->alm:Lnet/lingala/zip4j/model/p;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/p;->tE()Lnet/lingala/zip4j/model/l;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/l;->tq()J

    move-result-wide v0

    .line 362
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 366
    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 368
    new-instance v0, Lnet/lingala/zip4j/model/m;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/m;-><init>()V

    .line 370
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/d/e;->d(Ljava/io/RandomAccessFile;)I

    move-result v1

    .line 371
    int-to-long v4, v1

    sget-object v1, Lnet/lingala/zip4j/headers/HeaderSignature;->amn:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v1}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    .line 374
    sget-object v1, Lnet/lingala/zip4j/headers/HeaderSignature;->amn:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/m;->a(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 375
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/d/e;->c(Ljava/io/RandomAccessFile;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/m;->A(J)V

    .line 376
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/d/e;->e(Ljava/io/RandomAccessFile;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/m;->fl(I)V

    .line 377
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/d/e;->e(Ljava/io/RandomAccessFile;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/m;->fc(I)V

    .line 378
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/d/e;->d(Ljava/io/RandomAccessFile;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/m;->fg(I)V

    .line 379
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/d/e;->d(Ljava/io/RandomAccessFile;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/m;->fq(I)V

    .line 380
    nop

    .line 381
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/d/e;->c(Ljava/io/RandomAccessFile;)J

    move-result-wide v4

    .line 380
    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/m;->B(J)V

    .line 382
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/d/e;->c(Ljava/io/RandomAccessFile;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/m;->C(J)V

    .line 383
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/d/e;->c(Ljava/io/RandomAccessFile;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/m;->D(J)V

    .line 384
    nop

    .line 385
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/d/e;->c(Ljava/io/RandomAccessFile;)J

    move-result-wide v4

    .line 384
    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/m;->E(J)V

    .line 389
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/m;->ts()J

    move-result-wide v4

    const-wide/16 v6, 0x2c

    sub-long/2addr v4, v6

    .line 390
    cmp-long p2, v4, v2

    if-lez p2, :cond_0

    .line 391
    long-to-int p2, v4

    new-array p2, p2, [B

    .line 392
    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 393
    invoke-virtual {v0, p2}, Lnet/lingala/zip4j/model/m;->Q([B)V

    .line 396
    :cond_0
    return-object v0

    .line 372
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid signature for zip64 end of central directory record"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 363
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid offset for start of end of central directory record"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 356
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid zip64 end of central directory locator"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/util/List;Lnet/lingala/zip4j/d/e;JJJI)Lnet/lingala/zip4j/model/n;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/h;",
            ">;",
            "Lnet/lingala/zip4j/d/e;",
            "JJJI)",
            "Lnet/lingala/zip4j/model/n;"
        }
    .end annotation

    .line 462
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/model/h;

    .line 463
    if-nez v0, :cond_0

    .line 464
    goto :goto_0

    .line 467
    :cond_0
    sget-object v2, Lnet/lingala/zip4j/headers/HeaderSignature;->amo:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v2}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v2

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/h;->tf()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    .line 469
    new-instance p1, Lnet/lingala/zip4j/model/n;

    invoke-direct {p1}, Lnet/lingala/zip4j/model/n;-><init>()V

    .line 470
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/h;->getData()[B

    move-result-object v2

    .line 472
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/h;->sY()I

    move-result v3

    if-gtz v3, :cond_1

    .line 473
    return-object v1

    .line 476
    :cond_1
    const/4 v1, 0x0

    .line 477
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/h;->sY()I

    move-result v3

    const-wide v4, 0xffffffffL

    if-lez v3, :cond_2

    cmp-long p3, p3, v4

    if-nez p3, :cond_2

    .line 478
    invoke-virtual {p2, v2, v1}, Lnet/lingala/zip4j/d/e;->l([BI)J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lnet/lingala/zip4j/model/n;->u(J)V

    .line 479
    nop

    .line 482
    const/16 v1, 0x8

    :cond_2
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/h;->sY()I

    move-result p3

    if-ge v1, p3, :cond_3

    cmp-long p3, p5, v4

    if-nez p3, :cond_3

    .line 483
    invoke-virtual {p2, v2, v1}, Lnet/lingala/zip4j/d/e;->l([BI)J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lnet/lingala/zip4j/model/n;->setCompressedSize(J)V

    .line 484
    add-int/lit8 v1, v1, 0x8

    .line 487
    :cond_3
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/h;->sY()I

    move-result p3

    if-ge v1, p3, :cond_4

    cmp-long p3, p7, v4

    if-nez p3, :cond_4

    .line 488
    invoke-virtual {p2, v2, v1}, Lnet/lingala/zip4j/d/e;->l([BI)J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lnet/lingala/zip4j/model/n;->y(J)V

    .line 489
    add-int/lit8 v1, v1, 0x8

    .line 492
    :cond_4
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/h;->sY()I

    move-result p3

    if-ge v1, p3, :cond_5

    const p3, 0xffff

    if-ne p9, p3, :cond_5

    .line 493
    invoke-virtual {p2, v2, v1}, Lnet/lingala/zip4j/d/e;->m([BI)I

    move-result p2

    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/model/n;->fn(I)V

    .line 496
    :cond_5
    return-object p1

    .line 498
    :cond_6
    goto/16 :goto_0

    .line 499
    :cond_7
    return-object v1
.end method

.method private a(Ljava/io/RandomAccessFile;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 511
    const-wide/16 v0, 0x4

    sub-long/2addr p2, v0

    const-wide/16 v2, 0x8

    sub-long/2addr p2, v2

    sub-long/2addr p2, v0

    sub-long/2addr p2, v0

    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/headers/b;->b(Ljava/io/RandomAccessFile;J)V

    .line 512
    return-void
.end method

.method private a(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/model/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/i;->sQ()I

    move-result v0

    .line 241
    if-gtz v0, :cond_0

    .line 242
    return-void

    .line 245
    :cond_0
    invoke-direct {p0, p1, v0}, Lnet/lingala/zip4j/headers/b;->a(Ljava/io/RandomAccessFile;I)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/model/i;->C(Ljava/util/List;)V

    .line 246
    return-void
.end method

.method private a(Lnet/lingala/zip4j/model/i;Lnet/lingala/zip4j/d/e;)V
    .locals 11

    .line 400
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->sW()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->sW()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 404
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->sW()Ljava/util/List;

    move-result-object v2

    .line 405
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->sO()J

    move-result-wide v4

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->getCompressedSize()J

    move-result-wide v6

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->tj()J

    move-result-wide v8

    .line 406
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->th()I

    move-result v10

    .line 404
    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lnet/lingala/zip4j/headers/b;->a(Ljava/util/List;Lnet/lingala/zip4j/d/e;JJJI)Lnet/lingala/zip4j/model/n;

    move-result-object p2

    .line 408
    if-nez p2, :cond_1

    .line 409
    return-void

    .line 412
    :cond_1
    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/model/i;->a(Lnet/lingala/zip4j/model/n;)V

    .line 414
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/n;->sO()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 415
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/n;->sO()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lnet/lingala/zip4j/model/i;->u(J)V

    .line 418
    :cond_2
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/n;->getCompressedSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 419
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/n;->getCompressedSize()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lnet/lingala/zip4j/model/i;->setCompressedSize(J)V

    .line 422
    :cond_3
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/n;->tj()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 423
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/n;->tj()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lnet/lingala/zip4j/model/i;->y(J)V

    .line 426
    :cond_4
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/n;->th()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 427
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/n;->th()I

    move-result p2

    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/model/i;->fn(I)V

    .line 429
    :cond_5
    return-void

    .line 401
    :cond_6
    :goto_0
    return-void
.end method

.method private b(Ljava/io/RandomAccessFile;)J
    .locals 10
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
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x10000

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    nop

    .line 705
    :cond_0
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v6, v4, v2

    if-lez v6, :cond_2

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 706
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lnet/lingala/zip4j/headers/b;->b(Ljava/io/RandomAccessFile;J)V

    .line 707
    iget-object v6, p0, Lnet/lingala/zip4j/headers/b;->amc:Lnet/lingala/zip4j/d/e;

    invoke-virtual {v6, p1}, Lnet/lingala/zip4j/d/e;->d(Ljava/io/RandomAccessFile;)I

    move-result v6

    int-to-long v6, v6

    sget-object v8, Lnet/lingala/zip4j/headers/HeaderSignature;->amh:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v8}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 708
    return-wide v0

    .line 710
    :cond_1
    sub-long/2addr v4, v2

    goto :goto_0

    .line 713
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "Zip headers not found. Probably not a zip file"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Ljava/io/RandomAccessFile;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 717
    instance-of v0, p1, Lnet/lingala/zip4j/b/a/a;

    if-eqz v0, :cond_0

    .line 718
    check-cast p1, Lnet/lingala/zip4j/b/a/a;

    invoke-virtual {p1, p2, p3}, Lnet/lingala/zip4j/b/a/a;->s(J)V

    goto :goto_0

    .line 720
    :cond_0
    invoke-virtual {p1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 722
    :goto_0
    return-void
.end method

.method private b(Lnet/lingala/zip4j/model/i;Lnet/lingala/zip4j/d/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 616
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->sW()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->sW()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 620
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->sW()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lnet/lingala/zip4j/headers/b;->a(Ljava/util/List;Lnet/lingala/zip4j/d/e;)Lnet/lingala/zip4j/model/a;

    move-result-object p2

    .line 621
    if-eqz p2, :cond_1

    .line 622
    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/model/i;->a(Lnet/lingala/zip4j/model/a;)V

    .line 623
    sget-object p2, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->apb:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/model/i;->a(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V

    .line 625
    :cond_1
    return-void

    .line 617
    :cond_2
    :goto_0
    return-void
.end method

.method private k([BI)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/h;",
            ">;"
        }
    .end annotation

    .line 304
    nop

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 306
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_1

    .line 307
    new-instance v3, Lnet/lingala/zip4j/model/h;

    invoke-direct {v3}, Lnet/lingala/zip4j/model/h;-><init>()V

    .line 308
    iget-object v4, p0, Lnet/lingala/zip4j/headers/b;->amc:Lnet/lingala/zip4j/d/e;

    invoke-virtual {v4, p1, v2}, Lnet/lingala/zip4j/d/e;->n([BI)I

    move-result v4

    .line 309
    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lnet/lingala/zip4j/model/h;->x(J)V

    .line 310
    add-int/lit8 v2, v2, 0x2

    .line 312
    iget-object v4, p0, Lnet/lingala/zip4j/headers/b;->amc:Lnet/lingala/zip4j/d/e;

    invoke-virtual {v4, p1, v2}, Lnet/lingala/zip4j/d/e;->n([BI)I

    move-result v4

    .line 313
    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/model/h;->ff(I)V

    .line 314
    add-int/lit8 v2, v2, 0x2

    .line 316
    if-lez v4, :cond_0

    .line 317
    new-array v5, v4, [B

    .line 318
    invoke-static {p1, v2, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    invoke-virtual {v3, v5}, Lnet/lingala/zip4j/model/h;->setData([B)V

    .line 321
    :cond_0
    add-int/2addr v2, v4

    .line 322
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    goto :goto_0

    .line 324
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method


# virtual methods
.method public a(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/model/k;)Lnet/lingala/zip4j/model/p;
    .locals 4
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
    new-instance v0, Lnet/lingala/zip4j/model/p;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/p;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/headers/b;->alm:Lnet/lingala/zip4j/model/p;

    .line 76
    :try_start_0
    iget-object v0, p0, Lnet/lingala/zip4j/headers/b;->alm:Lnet/lingala/zip4j/model/p;

    iget-object v1, p0, Lnet/lingala/zip4j/headers/b;->amc:Lnet/lingala/zip4j/d/e;

    invoke-direct {p0, p1, v1, p2}, Lnet/lingala/zip4j/headers/b;->a(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/d/e;Lnet/lingala/zip4j/model/k;)Lnet/lingala/zip4j/model/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/p;->a(Lnet/lingala/zip4j/model/f;)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    nop

    .line 84
    iget-object v0, p0, Lnet/lingala/zip4j/headers/b;->alm:Lnet/lingala/zip4j/model/p;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/p;->tB()Lnet/lingala/zip4j/model/f;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/f;->tc()I

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object p1, p0, Lnet/lingala/zip4j/headers/b;->alm:Lnet/lingala/zip4j/model/p;

    return-object p1

    .line 89
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/headers/b;->alm:Lnet/lingala/zip4j/model/p;

    iget-object v1, p0, Lnet/lingala/zip4j/headers/b;->amc:Lnet/lingala/zip4j/d/e;

    iget-object v2, p0, Lnet/lingala/zip4j/headers/b;->alm:Lnet/lingala/zip4j/model/p;

    .line 90
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/p;->tB()Lnet/lingala/zip4j/model/f;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/f;->te()J

    move-result-wide v2

    .line 89
    invoke-direct {p0, p1, v1, v2, v3}, Lnet/lingala/zip4j/headers/b;->a(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/d/e;J)Lnet/lingala/zip4j/model/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/p;->a(Lnet/lingala/zip4j/model/l;)V

    .line 92
    iget-object v0, p0, Lnet/lingala/zip4j/headers/b;->alm:Lnet/lingala/zip4j/model/p;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/p;->tG()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lnet/lingala/zip4j/headers/b;->alm:Lnet/lingala/zip4j/model/p;

    iget-object v1, p0, Lnet/lingala/zip4j/headers/b;->amc:Lnet/lingala/zip4j/d/e;

    invoke-direct {p0, p1, v1}, Lnet/lingala/zip4j/headers/b;->a(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/d/e;)Lnet/lingala/zip4j/model/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/p;->a(Lnet/lingala/zip4j/model/m;)V

    .line 94
    iget-object v0, p0, Lnet/lingala/zip4j/headers/b;->alm:Lnet/lingala/zip4j/model/p;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/p;->tF()Lnet/lingala/zip4j/model/m;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/lingala/zip4j/headers/b;->alm:Lnet/lingala/zip4j/model/p;

    .line 95
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/p;->tF()Lnet/lingala/zip4j/model/m;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/m;->sZ()I

    move-result v0

    if-lez v0, :cond_1

    .line 96
    iget-object v0, p0, Lnet/lingala/zip4j/headers/b;->alm:Lnet/lingala/zip4j/model/p;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/p;->by(Z)V

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lnet/lingala/zip4j/headers/b;->alm:Lnet/lingala/zip4j/model/p;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/p;->by(Z)V

    .line 102
    :cond_2
    :goto_0
    iget-object v0, p0, Lnet/lingala/zip4j/headers/b;->alm:Lnet/lingala/zip4j/model/p;

    iget-object v1, p0, Lnet/lingala/zip4j/headers/b;->amc:Lnet/lingala/zip4j/d/e;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/k;->tm()Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-direct {p0, p1, v1, p2}, Lnet/lingala/zip4j/headers/b;->a(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/d/e;Ljava/nio/charset/Charset;)Lnet/lingala/zip4j/model/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/model/p;->a(Lnet/lingala/zip4j/model/d;)V

    .line 104
    iget-object p1, p0, Lnet/lingala/zip4j/headers/b;->alm:Lnet/lingala/zip4j/model/p;

    return-object p1

    .line 79
    :catch_0
    move-exception p1

    .line 80
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 81
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "Zip headers not found. Probably not a zip file or a corrupted zip file"

    invoke-direct {p2, v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    .line 77
    :catch_1
    move-exception p1

    .line 78
    throw p1

    .line 69
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Zip file size less than minimum expected zip file size. Probably not a zip file or a corrupted zip file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d([BLjava/lang/String;)Z
    .locals 4

    .line 743
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    aget-byte v1, p1, v0

    const/4 v3, 0x4

    invoke-static {v1, v3}, Lnet/lingala/zip4j/d/a;->a(BI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 744
    return v2

    .line 745
    :cond_0
    const/4 v1, 0x3

    aget-byte v3, p1, v1

    if-eqz v3, :cond_1

    aget-byte p1, p1, v1

    const/4 v1, 0x6

    invoke-static {p1, v1}, Lnet/lingala/zip4j/d/a;->a(BI)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 746
    return v2

    .line 749
    :cond_1
    if-eqz p2, :cond_3

    const-string p1, "/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "\\"

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    move v0, v2

    nop

    :cond_3
    return v0
.end method
