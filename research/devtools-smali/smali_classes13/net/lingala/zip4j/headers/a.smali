.class public Lnet/lingala/zip4j/headers/a;
.super Ljava/lang/Object;
.source "FileHeaderFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(ZLnet/lingala/zip4j/model/ZipParameters;)B
    .locals 4

    .line 116
    nop

    .line 118
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 119
    invoke-static {v0, v0}, Lnet/lingala/zip4j/d/a;->b(BI)B

    move-result v0

    .line 122
    :cond_0
    sget-object p1, Lnet/lingala/zip4j/model/enums/CompressionMethod;->aoV:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->sL()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 123
    sget-object p1, Lnet/lingala/zip4j/model/enums/CompressionLevel;->aoO:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->tI()Lnet/lingala/zip4j/model/enums/CompressionLevel;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/enums/CompressionLevel;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 124
    invoke-static {v0, v2}, Lnet/lingala/zip4j/d/a;->c(BI)B

    move-result p1

    .line 125
    invoke-static {p1, v1}, Lnet/lingala/zip4j/d/a;->c(BI)B

    move-result v0

    goto :goto_0

    .line 126
    :cond_1
    sget-object p1, Lnet/lingala/zip4j/model/enums/CompressionLevel;->aoQ:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->tI()Lnet/lingala/zip4j/model/enums/CompressionLevel;

    move-result-object v3

    invoke-virtual {p1, v3}, Lnet/lingala/zip4j/model/enums/CompressionLevel;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 127
    invoke-static {v0, v2}, Lnet/lingala/zip4j/d/a;->b(BI)B

    move-result p1

    .line 128
    invoke-static {p1, v1}, Lnet/lingala/zip4j/d/a;->c(BI)B

    move-result v0

    goto :goto_0

    .line 129
    :cond_2
    sget-object p1, Lnet/lingala/zip4j/model/enums/CompressionLevel;->aoM:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->tI()Lnet/lingala/zip4j/model/enums/CompressionLevel;

    move-result-object v3

    invoke-virtual {p1, v3}, Lnet/lingala/zip4j/model/enums/CompressionLevel;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 130
    invoke-static {v0, v2}, Lnet/lingala/zip4j/d/a;->c(BI)B

    move-result p1

    .line 131
    invoke-static {p1, v1}, Lnet/lingala/zip4j/d/a;->b(BI)B

    move-result v0

    goto :goto_0

    .line 132
    :cond_3
    sget-object p1, Lnet/lingala/zip4j/model/enums/CompressionLevel;->aoK:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->tI()Lnet/lingala/zip4j/model/enums/CompressionLevel;

    move-result-object v3

    invoke-virtual {p1, v3}, Lnet/lingala/zip4j/model/enums/CompressionLevel;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lnet/lingala/zip4j/model/enums/CompressionLevel;->aoS:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 133
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->tI()Lnet/lingala/zip4j/model/enums/CompressionLevel;

    move-result-object v3

    invoke-virtual {p1, v3}, Lnet/lingala/zip4j/model/enums/CompressionLevel;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 134
    :cond_4
    invoke-static {v0, v2}, Lnet/lingala/zip4j/d/a;->b(BI)B

    move-result p1

    .line 135
    invoke-static {p1, v1}, Lnet/lingala/zip4j/d/a;->b(BI)B

    move-result v0

    .line 139
    :cond_5
    :goto_0
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->tR()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 140
    const/4 p1, 0x3

    invoke-static {v0, p1}, Lnet/lingala/zip4j/d/a;->b(BI)B

    move-result v0

    .line 143
    :cond_6
    return v0
.end method

.method private a(Ljava/lang/String;Ljava/nio/charset/Charset;)I
    .locals 0

    .line 175
    invoke-static {p1, p2}, Lnet/lingala/zip4j/headers/c;->b(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p1, p1

    return p1
.end method

.method private a(Lnet/lingala/zip4j/model/ZipParameters;)Lnet/lingala/zip4j/model/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 154
    new-instance v0, Lnet/lingala/zip4j/model/a;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/a;-><init>()V

    .line 156
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->sI()Lnet/lingala/zip4j/model/enums/AesVersion;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 157
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->sI()Lnet/lingala/zip4j/model/enums/AesVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/a;->a(Lnet/lingala/zip4j/model/enums/AesVersion;)V

    .line 160
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->sK()Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    move-result-object v1

    sget-object v2, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->aoD:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    if-ne v1, v2, :cond_1

    .line 161
    sget-object v1, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->aoD:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/a;->a(Lnet/lingala/zip4j/model/enums/AesKeyStrength;)V

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->sK()Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    move-result-object v1

    sget-object v2, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->aoE:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    if-ne v1, v2, :cond_2

    .line 163
    sget-object v1, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->aoE:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/a;->a(Lnet/lingala/zip4j/model/enums/AesKeyStrength;)V

    goto :goto_0

    .line 164
    :cond_2
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->sK()Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    move-result-object v1

    sget-object v2, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->aoF:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    if-ne v1, v2, :cond_3

    .line 165
    sget-object v1, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->aoF:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/a;->a(Lnet/lingala/zip4j/model/enums/AesKeyStrength;)V

    .line 170
    :goto_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->sL()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/model/a;->a(Lnet/lingala/zip4j/model/enums/CompressionMethod;)V

    .line 171
    return-object v0

    .line 167
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "invalid AES key strength"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(ZLnet/lingala/zip4j/model/ZipParameters;Ljava/nio/charset/Charset;)[B
    .locals 1

    .line 105
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 106
    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/headers/a;->a(ZLnet/lingala/zip4j/model/ZipParameters;)B

    move-result p1

    const/4 p2, 0x0

    aput-byte p1, v0, p2

    .line 107
    if-eqz p3, :cond_0

    sget-object p1, Lnet/lingala/zip4j/d/d;->apQ:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p3}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 109
    :cond_0
    const/4 p1, 0x1

    aget-byte p2, v0, p1

    const/4 p3, 0x3

    invoke-static {p2, p3}, Lnet/lingala/zip4j/d/a;->b(BI)B

    move-result p2

    aput-byte p2, v0, p1

    .line 111
    :cond_1
    return-object v0
.end method

.method private fq(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 147
    invoke-static {p1}, Lnet/lingala/zip4j/d/f;->fA(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    return-object p1

    .line 148
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "fileNameInZip is null or empty"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lnet/lingala/zip4j/model/ZipParameters;ZILjava/nio/charset/Charset;Lnet/lingala/zip4j/d/e;)Lnet/lingala/zip4j/model/i;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 31
    new-instance v0, Lnet/lingala/zip4j/model/i;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/i;-><init>()V

    .line 32
    sget-object v1, Lnet/lingala/zip4j/headers/HeaderSignature;->amg:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/i;->a(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 33
    invoke-static {p1, p5}, Lnet/lingala/zip4j/d/g;->a(Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/d/e;)I

    move-result p5

    invoke-virtual {v0, p5}, Lnet/lingala/zip4j/model/i;->fl(I)V

    .line 34
    invoke-static {p1}, Lnet/lingala/zip4j/d/g;->h(Lnet/lingala/zip4j/model/ZipParameters;)Lnet/lingala/zip4j/headers/VersionNeededToExtract;

    move-result-object p5

    invoke-virtual {p5}, Lnet/lingala/zip4j/headers/VersionNeededToExtract;->getCode()I

    move-result p5

    invoke-virtual {v0, p5}, Lnet/lingala/zip4j/model/i;->fc(I)V

    .line 36
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tH()Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->sR()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object p5

    sget-object v1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->apb:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne p5, v1, :cond_0

    .line 37
    sget-object p5, Lnet/lingala/zip4j/model/enums/CompressionMethod;->aoW:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    invoke-virtual {v0, p5}, Lnet/lingala/zip4j/model/i;->a(Lnet/lingala/zip4j/model/enums/CompressionMethod;)V

    .line 38
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/headers/a;->a(Lnet/lingala/zip4j/model/ZipParameters;)Lnet/lingala/zip4j/model/a;

    move-result-object p5

    invoke-virtual {v0, p5}, Lnet/lingala/zip4j/model/i;->a(Lnet/lingala/zip4j/model/a;)V

    .line 39
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/i;->sQ()I

    move-result p5

    add-int/lit8 p5, p5, 0xb

    invoke-virtual {v0, p5}, Lnet/lingala/zip4j/model/i;->fe(I)V

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->sL()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object p5

    invoke-virtual {v0, p5}, Lnet/lingala/zip4j/model/i;->a(Lnet/lingala/zip4j/model/enums/CompressionMethod;)V

    .line 44
    :goto_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tH()Z

    move-result p5

    if-eqz p5, :cond_2

    .line 45
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->sR()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object p5

    if-eqz p5, :cond_1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->sR()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object p5

    sget-object v1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->aoY:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-eq p5, v1, :cond_1

    .line 49
    const/4 p5, 0x1

    invoke-virtual {v0, p5}, Lnet/lingala/zip4j/model/i;->bt(Z)V

    .line 50
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->sR()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object p5

    invoke-virtual {v0, p5}, Lnet/lingala/zip4j/model/i;->a(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V

    goto :goto_1

    .line 46
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Encryption method has to be set when encryptFiles flag is set in zip parameters"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tO()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p0, p5}, Lnet/lingala/zip4j/headers/a;->fq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 54
    invoke-virtual {v0, p5}, Lnet/lingala/zip4j/model/i;->setFileName(Ljava/lang/String;)V

    .line 55
    invoke-direct {p0, p5, p4}, Lnet/lingala/zip4j/headers/a;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/i;->fd(I)V

    .line 56
    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    const/4 p3, 0x0

    :goto_2
    invoke-virtual {v0, p3}, Lnet/lingala/zip4j/model/i;->fn(I)V

    .line 58
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tP()J

    move-result-wide p2

    const-wide/16 v1, 0x0

    cmp-long p2, p2, v1

    if-lez p2, :cond_4

    .line 59
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tP()J

    move-result-wide p2

    invoke-static {p2, p3}, Lnet/lingala/zip4j/d/f;->M(J)J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Lnet/lingala/zip4j/model/i;->t(J)V

    goto :goto_3

    .line 61
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Lnet/lingala/zip4j/d/f;->M(J)J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Lnet/lingala/zip4j/model/i;->t(J)V

    .line 64
    :goto_3
    invoke-static {p5}, Lnet/lingala/zip4j/d/c;->fz(Ljava/lang/String;)Z

    move-result p2

    .line 65
    invoke-virtual {v0, p2}, Lnet/lingala/zip4j/model/i;->bw(Z)V

    .line 66
    invoke-static {p2}, Lnet/lingala/zip4j/d/c;->bC(Z)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Lnet/lingala/zip4j/model/i;->P([B)V

    .line 68
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tR()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tQ()J

    move-result-wide p2

    const-wide/16 v3, -0x1

    cmp-long p2, p2, v3

    if-nez p2, :cond_5

    .line 69
    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/i;->u(J)V

    goto :goto_4

    .line 71
    :cond_5
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tQ()J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Lnet/lingala/zip4j/model/i;->u(J)V

    .line 74
    :goto_4
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tH()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->sR()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object p2

    sget-object p3, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->aoZ:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne p2, p3, :cond_6

    .line 75
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tM()J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Lnet/lingala/zip4j/model/i;->setCrc(J)V

    .line 78
    :cond_6
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/i;->isEncrypted()Z

    move-result p2

    invoke-direct {p0, p2, p1, p4}, Lnet/lingala/zip4j/headers/a;->a(ZLnet/lingala/zip4j/model/ZipParameters;Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Lnet/lingala/zip4j/model/i;->N([B)V

    .line 79
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tR()Z

    move-result p2

    invoke-virtual {v0, p2}, Lnet/lingala/zip4j/model/i;->bu(Z)V

    .line 80
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tk()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/model/i;->ft(Ljava/lang/String;)V

    .line 81
    return-object v0
.end method

.method public a(Lnet/lingala/zip4j/model/i;)Lnet/lingala/zip4j/model/j;
    .locals 3

    .line 85
    new-instance v0, Lnet/lingala/zip4j/model/j;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/j;-><init>()V

    .line 86
    sget-object v1, Lnet/lingala/zip4j/headers/HeaderSignature;->ame:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/j;->a(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 87
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->sM()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/j;->fc(I)V

    .line 88
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->sL()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/j;->a(Lnet/lingala/zip4j/model/enums/CompressionMethod;)V

    .line 89
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->getLastModifiedTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/j;->t(J)V

    .line 90
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->sO()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/j;->u(J)V

    .line 91
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->sP()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/j;->fd(I)V

    .line 92
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/j;->setFileName(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->isEncrypted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/j;->bt(Z)V

    .line 94
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->sR()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/j;->a(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V

    .line 95
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->sU()Lnet/lingala/zip4j/model/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/j;->a(Lnet/lingala/zip4j/model/a;)V

    .line 96
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->getCrc()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/j;->setCrc(J)V

    .line 97
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->getCompressedSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/j;->setCompressedSize(J)V

    .line 98
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->sN()[B

    move-result-object v1

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/j;->N([B)V

    .line 99
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->sS()Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/j;->bu(Z)V

    .line 100
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->sQ()I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/model/j;->fe(I)V

    .line 101
    return-object v0
.end method
