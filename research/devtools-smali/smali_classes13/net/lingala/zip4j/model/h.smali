.class public Lnet/lingala/zip4j/model/h;
.super Lnet/lingala/zip4j/model/o;
.source "ExtraDataRecord.java"


# instance fields
.field private anG:J

.field private anx:I

.field private data:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lnet/lingala/zip4j/model/o;-><init>()V

    return-void
.end method


# virtual methods
.method public ff(I)V
    .locals 0

    .line 38
    iput p1, p0, Lnet/lingala/zip4j/model/h;->anx:I

    .line 39
    return-void
.end method

.method public getData()[B
    .locals 1

    .line 42
    iget-object v0, p0, Lnet/lingala/zip4j/model/h;->data:[B

    return-object v0
.end method

.method public sY()I
    .locals 1

    .line 34
    iget v0, p0, Lnet/lingala/zip4j/model/h;->anx:I

    return v0
.end method

.method public setData([B)V
    .locals 0

    .line 46
    iput-object p1, p0, Lnet/lingala/zip4j/model/h;->data:[B

    .line 47
    return-void
.end method

.method public tf()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lnet/lingala/zip4j/model/h;->anG:J

    return-wide v0
.end method

.method public x(J)V
    .locals 0

    .line 30
    iput-wide p1, p0, Lnet/lingala/zip4j/model/h;->anG:J

    .line 31
    return-void
.end method
