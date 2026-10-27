.class public Lnet/lingala/zip4j/a/a/c;
.super Ljava/lang/Object;
.source "PBKDF2Parameters.java"


# instance fields
.field protected alF:I

.field protected alG:Ljava/lang/String;

.field protected alH:[B

.field protected hashAlgorithm:Ljava/lang/String;

.field protected salt:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/lingala/zip4j/a/a/c;->hashAlgorithm:Ljava/lang/String;

    .line 33
    const-string v1, "UTF-8"

    iput-object v1, p0, Lnet/lingala/zip4j/a/a/c;->alG:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lnet/lingala/zip4j/a/a/c;->salt:[B

    .line 35
    const/16 v1, 0x3e8

    iput v1, p0, Lnet/lingala/zip4j/a/a/c;->alF:I

    .line 36
    iput-object v0, p0, Lnet/lingala/zip4j/a/a/c;->alH:[B

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BI)V
    .locals 6

    .line 40
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lnet/lingala/zip4j/a/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;[BI[B)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BI[B)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lnet/lingala/zip4j/a/a/c;->hashAlgorithm:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lnet/lingala/zip4j/a/a/c;->alG:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lnet/lingala/zip4j/a/a/c;->salt:[B

    .line 48
    iput p4, p0, Lnet/lingala/zip4j/a/a/c;->alF:I

    .line 49
    iput-object p5, p0, Lnet/lingala/zip4j/a/a/c;->alH:[B

    .line 50
    return-void
.end method


# virtual methods
.method public getIterationCount()I
    .locals 1

    .line 53
    iget v0, p0, Lnet/lingala/zip4j/a/a/c;->alF:I

    return v0
.end method

.method public getSalt()[B
    .locals 1

    .line 61
    iget-object v0, p0, Lnet/lingala/zip4j/a/a/c;->salt:[B

    return-object v0
.end method

.method public sr()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lnet/lingala/zip4j/a/a/c;->hashAlgorithm:Ljava/lang/String;

    return-object v0
.end method
