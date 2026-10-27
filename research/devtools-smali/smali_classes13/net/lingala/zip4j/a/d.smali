.class public Lnet/lingala/zip4j/a/d;
.super Ljava/lang/Object;
.source "StandardEncrypter.java"

# interfaces
.implements Lnet/lingala/zip4j/a/c;


# instance fields
.field private final alI:Lnet/lingala/zip4j/a/b/b;

.field private alJ:[B


# direct methods
.method public constructor <init>([CJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lnet/lingala/zip4j/a/b/b;

    invoke-direct {v0}, Lnet/lingala/zip4j/a/b/b;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/a/d;->alI:Lnet/lingala/zip4j/a/b/b;

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/a/d;->a([CJ)V

    .line 33
    return-void
.end method

.method private a([CJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 36
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 39
    iget-object v0, p0, Lnet/lingala/zip4j/a/d;->alI:Lnet/lingala/zip4j/a/b/b;

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/a/b/b;->a([C)V

    .line 40
    invoke-virtual {p0}, Lnet/lingala/zip4j/a/d;->ss()[B

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/a/d;->alJ:[B

    .line 42
    iget-object v0, p0, Lnet/lingala/zip4j/a/d;->alI:Lnet/lingala/zip4j/a/b/b;

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/a/b/b;->a([C)V

    .line 44
    iget-object p1, p0, Lnet/lingala/zip4j/a/d;->alJ:[B

    const/16 v0, 0xb

    const/16 v1, 0x18

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 45
    iget-object p1, p0, Lnet/lingala/zip4j/a/d;->alJ:[B

    const/16 v0, 0xa

    const/16 v1, 0x10

    ushr-long/2addr p2, v1

    long-to-int p2, p2

    int-to-byte p2, p2

    aput-byte p2, p1, v0

    .line 47
    iget-object p1, p0, Lnet/lingala/zip4j/a/d;->alJ:[B

    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/a/d;->J([B)I

    .line 48
    return-void

    .line 37
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input password is null or empty, cannot initialize standard encrypter"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public J([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 51
    if-eqz p1, :cond_0

    .line 54
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnet/lingala/zip4j/a/d;->d([BII)I

    move-result p1

    return p1

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method protected c(B)B
    .locals 2

    .line 69
    iget-object v0, p0, Lnet/lingala/zip4j/a/d;->alI:Lnet/lingala/zip4j/a/b/b;

    invoke-virtual {v0}, Lnet/lingala/zip4j/a/b/b;->su()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    .line 70
    iget-object v1, p0, Lnet/lingala/zip4j/a/d;->alI:Lnet/lingala/zip4j/a/b/b;

    invoke-virtual {v1, p1}, Lnet/lingala/zip4j/a/b/b;->d(B)V

    .line 71
    return v0
.end method

.method public d([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 58
    if-ltz p3, :cond_1

    .line 62
    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 63
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lnet/lingala/zip4j/a/d;->c(B)B

    move-result v1

    aput-byte v1, p1, v0

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    return p3

    .line 59
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid length specified to decrpyt data"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected ss()[B
    .locals 4

    .line 75
    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 76
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 77
    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 78
    const/16 v3, 0x100

    invoke-virtual {v1, v3}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {p0, v3}, Lnet/lingala/zip4j/a/d;->c(B)B

    move-result v3

    aput-byte v3, v0, v2

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    :cond_0
    return-object v0
.end method

.method public st()[B
    .locals 1

    .line 84
    iget-object v0, p0, Lnet/lingala/zip4j/a/d;->alJ:[B

    return-object v0
.end method
