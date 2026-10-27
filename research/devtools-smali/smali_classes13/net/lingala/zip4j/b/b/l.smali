.class Lnet/lingala/zip4j/b/b/l;
.super Lnet/lingala/zip4j/b/b/b;
.source "ZipStandardCipherOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/lingala/zip4j/b/b/b<",
        "Lnet/lingala/zip4j/a/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/b/b/j;Lnet/lingala/zip4j/model/ZipParameters;[C)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/b/b/b;-><init>(Lnet/lingala/zip4j/b/b/j;Lnet/lingala/zip4j/model/ZipParameters;[C)V

    .line 15
    return-void
.end method

.method private f(Lnet/lingala/zip4j/model/ZipParameters;)J
    .locals 4

    .line 42
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tP()J

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/lingala/zip4j/d/f;->M(J)J

    move-result-wide v0

    .line 44
    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    const/16 p1, 0x10

    shl-long/2addr v0, p1

    return-wide v0

    .line 47
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tM()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method protected synthetic b(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipParameters;[C)Lnet/lingala/zip4j/a/c;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lnet/lingala/zip4j/b/b/l;->d(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipParameters;[C)Lnet/lingala/zip4j/a/d;

    move-result-object p1

    return-object p1
.end method

.method protected d(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipParameters;[C)Lnet/lingala/zip4j/a/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    invoke-direct {p0, p2}, Lnet/lingala/zip4j/b/b/l;->f(Lnet/lingala/zip4j/model/ZipParameters;)J

    move-result-wide p1

    .line 21
    new-instance v0, Lnet/lingala/zip4j/a/d;

    invoke-direct {v0, p3, p1, p2}, Lnet/lingala/zip4j/a/d;-><init>([CJ)V

    .line 22
    invoke-virtual {v0}, Lnet/lingala/zip4j/a/d;->st()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/b/b/l;->L([B)V

    .line 23
    return-object v0
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/b/b/l;->write([B)V

    .line 29
    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/lingala/zip4j/b/b/l;->write([BII)V

    .line 34
    return-void
.end method

.method public write([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-super {p0, p1, p2, p3}, Lnet/lingala/zip4j/b/b/b;->write([BII)V

    .line 39
    return-void
.end method
