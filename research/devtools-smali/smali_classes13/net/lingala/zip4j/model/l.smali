.class public Lnet/lingala/zip4j/model/l;
.super Lnet/lingala/zip4j/model/o;
.source "Zip64EndOfCentralDirectoryLocator.java"


# instance fields
.field private anP:I

.field private anQ:J

.field private anR:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lnet/lingala/zip4j/model/o;-><init>()V

    return-void
.end method


# virtual methods
.method public fo(I)V
    .locals 0

    .line 31
    iput p1, p0, Lnet/lingala/zip4j/model/l;->anP:I

    .line 32
    return-void
.end method

.method public fp(I)V
    .locals 0

    .line 47
    iput p1, p0, Lnet/lingala/zip4j/model/l;->anR:I

    .line 48
    return-void
.end method

.method public tp()I
    .locals 1

    .line 26
    iget v0, p0, Lnet/lingala/zip4j/model/l;->anP:I

    return v0
.end method

.method public tq()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lnet/lingala/zip4j/model/l;->anQ:J

    return-wide v0
.end method

.method public tr()I
    .locals 1

    .line 43
    iget v0, p0, Lnet/lingala/zip4j/model/l;->anR:I

    return v0
.end method

.method public z(J)V
    .locals 0

    .line 39
    iput-wide p1, p0, Lnet/lingala/zip4j/model/l;->anQ:J

    .line 40
    return-void
.end method
