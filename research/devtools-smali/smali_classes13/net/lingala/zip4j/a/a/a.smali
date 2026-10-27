.class public Lnet/lingala/zip4j/a/a/a;
.super Ljava/lang/Object;
.source "MacBasedPRF.java"

# interfaces
.implements Lnet/lingala/zip4j/a/a/d;


# instance fields
.field private alB:I

.field private alC:Ljava/lang/String;

.field private mac:Ljavax/crypto/Mac;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lnet/lingala/zip4j/a/a/a;->alC:Ljava/lang/String;

    .line 37
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p1

    iput-object p1, p0, Lnet/lingala/zip4j/a/a/a;->mac:Ljavax/crypto/Mac;

    .line 38
    iget-object p1, p0, Lnet/lingala/zip4j/a/a/a;->mac:Ljavax/crypto/Mac;

    invoke-virtual {p1}, Ljavax/crypto/Mac;->getMacLength()I

    move-result p1

    iput p1, p0, Lnet/lingala/zip4j/a/a/a;->alB:I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    nop

    .line 42
    return-void

    .line 39
    :catch_0
    move-exception p1

    .line 40
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public doFinal()[B
    .locals 1

    .line 49
    iget-object v0, p0, Lnet/lingala/zip4j/a/a/a;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    return-object v0
.end method

.method public doFinal([B)[B
    .locals 1

    .line 45
    iget-object v0, p0, Lnet/lingala/zip4j/a/a/a;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    return-object p1
.end method

.method public init([B)V
    .locals 3

    .line 58
    :try_start_0
    iget-object v0, p0, Lnet/lingala/zip4j/a/a/a;->mac:Ljavax/crypto/Mac;

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lnet/lingala/zip4j/a/a/a;->alC:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    nop

    .line 62
    return-void

    .line 59
    :catch_0
    move-exception p1

    .line 60
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public sq()I
    .locals 1

    .line 53
    iget v0, p0, Lnet/lingala/zip4j/a/a/a;->alB:I

    return v0
.end method

.method public update([BII)V
    .locals 1

    .line 74
    :try_start_0
    iget-object v0, p0, Lnet/lingala/zip4j/a/a/a;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Mac;->update([BII)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    nop

    .line 78
    return-void

    .line 75
    :catch_0
    move-exception p1

    .line 76
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
