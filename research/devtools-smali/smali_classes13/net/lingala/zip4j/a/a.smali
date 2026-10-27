.class public Lnet/lingala/zip4j/a/a;
.super Ljava/lang/Object;
.source "AESEncrypter.java"

# interfaces
.implements Lnet/lingala/zip4j/a/c;


# instance fields
.field private alA:[B

.field private alu:Lnet/lingala/zip4j/a/b/a;

.field private alv:Lnet/lingala/zip4j/a/a/a;

.field private alw:I

.field private alx:I

.field private final aly:[B

.field private alz:[B

.field private finished:Z

.field private final iv:[B

.field private final random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>([CLnet/lingala/zip4j/model/enums/AesKeyStrength;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/a/a;->random:Ljava/security/SecureRandom;

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lnet/lingala/zip4j/a/a;->alw:I

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lnet/lingala/zip4j/a/a;->alx:I

    .line 53
    if-eqz p1, :cond_2

    array-length v1, p1

    if-eqz v1, :cond_2

    .line 56
    sget-object v1, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->aoD:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    if-eq p2, v1, :cond_1

    sget-object v1, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->aoF:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Invalid AES key strength"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lnet/lingala/zip4j/a/a;->finished:Z

    .line 62
    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lnet/lingala/zip4j/a/a;->aly:[B

    .line 63
    new-array v0, v0, [B

    iput-object v0, p0, Lnet/lingala/zip4j/a/a;->iv:[B

    .line 64
    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/a/a;->a([CLnet/lingala/zip4j/model/enums/AesKeyStrength;)V

    .line 65
    return-void

    .line 54
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input password is empty or null"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a([CLnet/lingala/zip4j/model/enums/AesKeyStrength;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 68
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getSaltLength()I

    move-result v0

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/a/a;->eW(I)[B

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/a/a;->alA:[B

    .line 69
    iget-object v0, p0, Lnet/lingala/zip4j/a/a;->alA:[B

    invoke-static {v0, p1, p2}, Lnet/lingala/zip4j/a/b;->a([B[CLnet/lingala/zip4j/model/enums/AesKeyStrength;)[B

    move-result-object p1

    .line 70
    invoke-static {p1, p2}, Lnet/lingala/zip4j/a/b;->a([BLnet/lingala/zip4j/model/enums/AesKeyStrength;)[B

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/a/a;->alz:[B

    .line 71
    invoke-static {p1, p2}, Lnet/lingala/zip4j/a/b;->c([BLnet/lingala/zip4j/model/enums/AesKeyStrength;)Lnet/lingala/zip4j/a/b/a;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/a/a;->alu:Lnet/lingala/zip4j/a/b/a;

    .line 72
    invoke-static {p1, p2}, Lnet/lingala/zip4j/a/b;->b([BLnet/lingala/zip4j/model/enums/AesKeyStrength;)Lnet/lingala/zip4j/a/a/a;

    move-result-object p1

    iput-object p1, p0, Lnet/lingala/zip4j/a/a;->alv:Lnet/lingala/zip4j/a/a/a;

    .line 73
    return-void
.end method

.method private eW(I)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 115
    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v1, 0x10

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "invalid salt size, cannot generate salt"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 121
    :cond_1
    :goto_0
    const/4 v1, 0x2

    if-ne p1, v0, :cond_2

    .line 122
    nop

    .line 127
    move v0, v1

    goto :goto_1

    .line 124
    :cond_2
    nop

    .line 127
    const/4 v0, 0x4

    :goto_1
    new-array p1, p1, [B

    .line 128
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_3

    .line 129
    iget-object v3, p0, Lnet/lingala/zip4j/a/a;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextInt()I

    move-result v3

    .line 130
    mul-int/lit8 v4, v2, 0x4

    shr-int/lit8 v5, v3, 0x18

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 131
    const/4 v5, 0x1

    add-int/2addr v5, v4

    shr-int/lit8 v6, v3, 0x10

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    .line 132
    add-int v5, v1, v4

    shr-int/lit8 v6, v3, 0x8

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    .line 133
    const/4 v5, 0x3

    add-int/2addr v5, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v5

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 135
    :cond_3
    return-object p1
.end method


# virtual methods
.method public d([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 84
    iget-boolean v0, p0, Lnet/lingala/zip4j/a/a;->finished:Z

    if-nez v0, :cond_4

    .line 91
    rem-int/lit8 v0, p3, 0x10

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 92
    iput-boolean v1, p0, Lnet/lingala/zip4j/a/a;->finished:Z

    .line 95
    :cond_0
    move v0, p2

    :goto_0
    add-int v2, p2, p3

    if-ge v0, v2, :cond_3

    .line 96
    add-int/lit8 v3, v0, 0x10

    if-gt v3, v2, :cond_1

    const/16 v2, 0x10

    goto :goto_1

    :cond_1
    sub-int/2addr v2, v0

    :goto_1
    iput v2, p0, Lnet/lingala/zip4j/a/a;->alx:I

    .line 99
    iget-object v2, p0, Lnet/lingala/zip4j/a/a;->iv:[B

    iget v4, p0, Lnet/lingala/zip4j/a/a;->alw:I

    invoke-static {v2, v4}, Lnet/lingala/zip4j/a/b;->h([BI)V

    .line 100
    iget-object v2, p0, Lnet/lingala/zip4j/a/a;->alu:Lnet/lingala/zip4j/a/b/a;

    iget-object v4, p0, Lnet/lingala/zip4j/a/a;->iv:[B

    iget-object v5, p0, Lnet/lingala/zip4j/a/a;->aly:[B

    invoke-virtual {v2, v4, v5}, Lnet/lingala/zip4j/a/b/a;->f([B[B)I

    .line 102
    const/4 v2, 0x0

    :goto_2
    iget v4, p0, Lnet/lingala/zip4j/a/a;->alx:I

    if-ge v2, v4, :cond_2

    .line 103
    add-int v4, v0, v2

    aget-byte v5, p1, v4

    iget-object v6, p0, Lnet/lingala/zip4j/a/a;->aly:[B

    aget-byte v6, v6, v2

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 106
    :cond_2
    iget-object v2, p0, Lnet/lingala/zip4j/a/a;->alv:Lnet/lingala/zip4j/a/a/a;

    iget v4, p0, Lnet/lingala/zip4j/a/a;->alx:I

    invoke-virtual {v2, p1, v0, v4}, Lnet/lingala/zip4j/a/a/a;->update([BII)V

    .line 107
    iget v0, p0, Lnet/lingala/zip4j/a/a;->alw:I

    add-int/2addr v0, v1

    iput v0, p0, Lnet/lingala/zip4j/a/a;->alw:I

    .line 95
    move v0, v3

    goto :goto_0

    .line 110
    :cond_3
    return p3

    .line 88
    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "AES Encrypter is in finished state (A non 16 byte block has already been passed to encrypter)"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sn()[B
    .locals 4

    .line 139
    iget-object v0, p0, Lnet/lingala/zip4j/a/a;->alv:Lnet/lingala/zip4j/a/a/a;

    invoke-virtual {v0}, Lnet/lingala/zip4j/a/a/a;->doFinal()[B

    move-result-object v0

    .line 140
    const/16 v1, 0xa

    new-array v2, v1, [B

    .line 141
    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    return-object v2
.end method

.method public so()[B
    .locals 1

    .line 146
    iget-object v0, p0, Lnet/lingala/zip4j/a/a;->alz:[B

    return-object v0
.end method

.method public sp()[B
    .locals 1

    .line 150
    iget-object v0, p0, Lnet/lingala/zip4j/a/a;->alA:[B

    return-object v0
.end method
