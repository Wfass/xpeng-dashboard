.class public Lnet/lingala/zip4j/model/n;
.super Lnet/lingala/zip4j/model/o;
.source "Zip64ExtendedInfo.java"


# instance fields
.field private anJ:I

.field private anM:J

.field private ank:J

.field private anl:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Lnet/lingala/zip4j/model/o;-><init>()V

    .line 28
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/lingala/zip4j/model/n;->ank:J

    .line 29
    iput-wide v0, p0, Lnet/lingala/zip4j/model/n;->anl:J

    .line 30
    iput-wide v0, p0, Lnet/lingala/zip4j/model/n;->anM:J

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lnet/lingala/zip4j/model/n;->anJ:I

    .line 32
    return-void
.end method


# virtual methods
.method public fn(I)V
    .locals 0

    .line 71
    iput p1, p0, Lnet/lingala/zip4j/model/n;->anJ:I

    .line 72
    return-void
.end method

.method public getCompressedSize()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lnet/lingala/zip4j/model/n;->ank:J

    return-wide v0
.end method

.method public sO()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lnet/lingala/zip4j/model/n;->anl:J

    return-wide v0
.end method

.method public setCompressedSize(J)V
    .locals 0

    .line 47
    iput-wide p1, p0, Lnet/lingala/zip4j/model/n;->ank:J

    .line 48
    return-void
.end method

.method public th()I
    .locals 1

    .line 67
    iget v0, p0, Lnet/lingala/zip4j/model/n;->anJ:I

    return v0
.end method

.method public tj()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lnet/lingala/zip4j/model/n;->anM:J

    return-wide v0
.end method

.method public u(J)V
    .locals 0

    .line 55
    iput-wide p1, p0, Lnet/lingala/zip4j/model/n;->anl:J

    .line 56
    return-void
.end method

.method public y(J)V
    .locals 0

    .line 63
    iput-wide p1, p0, Lnet/lingala/zip4j/model/n;->anM:J

    .line 64
    return-void
.end method
