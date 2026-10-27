.class public Lnet/lingala/zip4j/model/i;
.super Lnet/lingala/zip4j/model/b;
.source "FileHeader.java"


# instance fields
.field private anH:I

.field private anI:I

.field private anJ:I

.field private anK:[B

.field private anL:[B

.field private anM:J

.field private anN:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lnet/lingala/zip4j/model/b;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lnet/lingala/zip4j/model/i;->anI:I

    .line 34
    sget-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->amg:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/model/i;->a(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 35
    return-void
.end method

.method private d(Lnet/lingala/zip4j/model/i;)J
    .locals 2

    .line 113
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->sT()Lnet/lingala/zip4j/model/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->sT()Lnet/lingala/zip4j/model/n;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/n;->tj()J

    move-result-wide v0

    return-wide v0

    .line 117
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->tj()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public O([B)V
    .locals 0

    .line 66
    iput-object p1, p0, Lnet/lingala/zip4j/model/i;->anK:[B

    .line 67
    return-void
.end method

.method public P([B)V
    .locals 0

    .line 74
    iput-object p1, p0, Lnet/lingala/zip4j/model/i;->anL:[B

    .line 75
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 100
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 101
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 102
    :cond_1
    invoke-super {p0, p1}, Lnet/lingala/zip4j/model/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 103
    :cond_2
    check-cast p1, Lnet/lingala/zip4j/model/i;

    .line 104
    invoke-direct {p0, p0}, Lnet/lingala/zip4j/model/i;->d(Lnet/lingala/zip4j/model/i;)J

    move-result-wide v2

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/model/i;->d(Lnet/lingala/zip4j/model/i;)J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    .line 101
    :cond_4
    :goto_1
    return v1
.end method

.method public fl(I)V
    .locals 0

    .line 42
    iput p1, p0, Lnet/lingala/zip4j/model/i;->anH:I

    .line 43
    return-void
.end method

.method public fm(I)V
    .locals 0

    .line 50
    iput p1, p0, Lnet/lingala/zip4j/model/i;->anI:I

    .line 51
    return-void
.end method

.method public fn(I)V
    .locals 0

    .line 58
    iput p1, p0, Lnet/lingala/zip4j/model/i;->anJ:I

    .line 59
    return-void
.end method

.method public ft(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lnet/lingala/zip4j/model/i;->anN:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public hashCode()I
    .locals 3

    .line 109
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lnet/lingala/zip4j/model/i;->getFileName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p0}, Lnet/lingala/zip4j/model/i;->d(Lnet/lingala/zip4j/model/i;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public tg()I
    .locals 1

    .line 38
    iget v0, p0, Lnet/lingala/zip4j/model/i;->anH:I

    return v0
.end method

.method public th()I
    .locals 1

    .line 54
    iget v0, p0, Lnet/lingala/zip4j/model/i;->anJ:I

    return v0
.end method

.method public ti()[B
    .locals 1

    .line 70
    iget-object v0, p0, Lnet/lingala/zip4j/model/i;->anL:[B

    return-object v0
.end method

.method public tj()J
    .locals 2

    .line 78
    iget-wide v0, p0, Lnet/lingala/zip4j/model/i;->anM:J

    return-wide v0
.end method

.method public tk()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lnet/lingala/zip4j/model/i;->anN:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 95
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/i;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y(J)V
    .locals 0

    .line 82
    iput-wide p1, p0, Lnet/lingala/zip4j/model/i;->anM:J

    .line 83
    return-void
.end method
