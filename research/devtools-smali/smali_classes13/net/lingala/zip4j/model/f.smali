.class public Lnet/lingala/zip4j/model/f;
.super Lnet/lingala/zip4j/model/o;
.source "EndOfCentralDirectoryRecord.java"


# instance fields
.field private anA:I

.field private anB:I

.field private anC:I

.field private anD:I

.field private anE:J

.field private anF:J

.field private anz:I

.field private comment:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lnet/lingala/zip4j/model/o;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lnet/lingala/zip4j/model/f;->comment:Ljava/lang/String;

    .line 33
    sget-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->amh:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/model/f;->a(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 34
    return-void
.end method


# virtual methods
.method public fg(I)V
    .locals 0

    .line 41
    iput p1, p0, Lnet/lingala/zip4j/model/f;->anz:I

    .line 42
    return-void
.end method

.method public fh(I)V
    .locals 0

    .line 49
    iput p1, p0, Lnet/lingala/zip4j/model/f;->anA:I

    .line 50
    return-void
.end method

.method public fi(I)V
    .locals 0

    .line 58
    iput p1, p0, Lnet/lingala/zip4j/model/f;->anB:I

    .line 59
    return-void
.end method

.method public fj(I)V
    .locals 0

    .line 66
    iput p1, p0, Lnet/lingala/zip4j/model/f;->anC:I

    .line 67
    return-void
.end method

.method public fk(I)V
    .locals 0

    .line 74
    iput p1, p0, Lnet/lingala/zip4j/model/f;->anD:I

    .line 75
    return-void
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lnet/lingala/zip4j/model/f;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public sZ()I
    .locals 1

    .line 37
    iget v0, p0, Lnet/lingala/zip4j/model/f;->anz:I

    return v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 98
    if-eqz p1, :cond_0

    .line 99
    iput-object p1, p0, Lnet/lingala/zip4j/model/f;->comment:Ljava/lang/String;

    .line 101
    :cond_0
    return-void
.end method

.method public ta()I
    .locals 1

    .line 45
    iget v0, p0, Lnet/lingala/zip4j/model/f;->anA:I

    return v0
.end method

.method public tb()I
    .locals 1

    .line 53
    iget v0, p0, Lnet/lingala/zip4j/model/f;->anB:I

    return v0
.end method

.method public tc()I
    .locals 1

    .line 62
    iget v0, p0, Lnet/lingala/zip4j/model/f;->anC:I

    return v0
.end method

.method public td()J
    .locals 2

    .line 78
    iget-wide v0, p0, Lnet/lingala/zip4j/model/f;->anE:J

    return-wide v0
.end method

.method public te()J
    .locals 2

    .line 86
    iget-wide v0, p0, Lnet/lingala/zip4j/model/f;->anF:J

    return-wide v0
.end method

.method public v(J)V
    .locals 0

    .line 82
    iput-wide p1, p0, Lnet/lingala/zip4j/model/f;->anE:J

    .line 83
    return-void
.end method

.method public w(J)V
    .locals 0

    .line 90
    iput-wide p1, p0, Lnet/lingala/zip4j/model/f;->anF:J

    .line 91
    return-void
.end method
