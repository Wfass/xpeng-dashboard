.class public Lnet/lingala/zip4j/model/m;
.super Lnet/lingala/zip4j/model/o;
.source "Zip64EndOfCentralDirectoryRecord.java"


# instance fields
.field private anH:I

.field private anS:J

.field private anT:I

.field private anU:J

.field private anV:J

.field private anW:J

.field private anX:J

.field private anY:[B

.field private anh:I

.field private anz:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Lnet/lingala/zip4j/model/o;-><init>()V

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/lingala/zip4j/model/m;->anX:J

    return-void
.end method


# virtual methods
.method public A(J)V
    .locals 0

    .line 37
    iput-wide p1, p0, Lnet/lingala/zip4j/model/m;->anS:J

    .line 38
    return-void
.end method

.method public B(J)V
    .locals 0

    .line 78
    iput-wide p1, p0, Lnet/lingala/zip4j/model/m;->anU:J

    .line 79
    return-void
.end method

.method public C(J)V
    .locals 0

    .line 86
    iput-wide p1, p0, Lnet/lingala/zip4j/model/m;->anV:J

    .line 87
    return-void
.end method

.method public D(J)V
    .locals 0

    .line 94
    iput-wide p1, p0, Lnet/lingala/zip4j/model/m;->anW:J

    .line 95
    return-void
.end method

.method public E(J)V
    .locals 0

    .line 103
    iput-wide p1, p0, Lnet/lingala/zip4j/model/m;->anX:J

    .line 104
    return-void
.end method

.method public Q([B)V
    .locals 0

    .line 111
    iput-object p1, p0, Lnet/lingala/zip4j/model/m;->anY:[B

    .line 112
    return-void
.end method

.method public fc(I)V
    .locals 0

    .line 53
    iput p1, p0, Lnet/lingala/zip4j/model/m;->anh:I

    .line 54
    return-void
.end method

.method public fg(I)V
    .locals 0

    .line 61
    iput p1, p0, Lnet/lingala/zip4j/model/m;->anz:I

    .line 62
    return-void
.end method

.method public fl(I)V
    .locals 0

    .line 45
    iput p1, p0, Lnet/lingala/zip4j/model/m;->anH:I

    .line 46
    return-void
.end method

.method public fq(I)V
    .locals 0

    .line 69
    iput p1, p0, Lnet/lingala/zip4j/model/m;->anT:I

    .line 70
    return-void
.end method

.method public sM()I
    .locals 1

    .line 49
    iget v0, p0, Lnet/lingala/zip4j/model/m;->anh:I

    return v0
.end method

.method public sZ()I
    .locals 1

    .line 57
    iget v0, p0, Lnet/lingala/zip4j/model/m;->anz:I

    return v0
.end method

.method public tg()I
    .locals 1

    .line 41
    iget v0, p0, Lnet/lingala/zip4j/model/m;->anH:I

    return v0
.end method

.method public ts()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lnet/lingala/zip4j/model/m;->anS:J

    return-wide v0
.end method

.method public tt()I
    .locals 1

    .line 65
    iget v0, p0, Lnet/lingala/zip4j/model/m;->anT:I

    return v0
.end method

.method public tu()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lnet/lingala/zip4j/model/m;->anU:J

    return-wide v0
.end method

.method public tv()J
    .locals 2

    .line 82
    iget-wide v0, p0, Lnet/lingala/zip4j/model/m;->anV:J

    return-wide v0
.end method

.method public tw()J
    .locals 2

    .line 90
    iget-wide v0, p0, Lnet/lingala/zip4j/model/m;->anW:J

    return-wide v0
.end method

.method public tx()J
    .locals 2

    .line 98
    iget-wide v0, p0, Lnet/lingala/zip4j/model/m;->anX:J

    return-wide v0
.end method
