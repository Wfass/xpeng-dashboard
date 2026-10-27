.class public Lnet/lingala/zip4j/b/b/d;
.super Ljava/io/OutputStream;
.source "CountingOutputStream.java"

# interfaces
.implements Lnet/lingala/zip4j/b/b/g;


# instance fields
.field private amM:Ljava/io/OutputStream;

.field private amN:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/lingala/zip4j/b/b/d;->amN:J

    .line 14
    iput-object p1, p0, Lnet/lingala/zip4j/b/b/d;->amM:Ljava/io/OutputStream;

    .line 15
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/d;->amM:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 91
    return-void
.end method

.method public eZ(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lnet/lingala/zip4j/b/b/d;->sC()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    const/4 p1, 0x0

    return p1

    .line 76
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/d;->amM:Ljava/io/OutputStream;

    check-cast v0, Lnet/lingala/zip4j/b/b/h;

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/b/b/h;->fa(I)Z

    move-result p1

    return p1
.end method

.method public getFilePointer()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/d;->amM:Ljava/io/OutputStream;

    instance-of v0, v0, Lnet/lingala/zip4j/b/b/h;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/d;->amM:Ljava/io/OutputStream;

    check-cast v0, Lnet/lingala/zip4j/b/b/h;

    invoke-virtual {v0}, Lnet/lingala/zip4j/b/b/h;->getFilePointer()J

    move-result-wide v0

    return-wide v0

    .line 85
    :cond_0
    iget-wide v0, p0, Lnet/lingala/zip4j/b/b/d;->amN:J

    return-wide v0
.end method

.method public sA()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/d;->amM:Ljava/io/OutputStream;

    instance-of v0, v0, Lnet/lingala/zip4j/b/b/h;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/d;->amM:Ljava/io/OutputStream;

    check-cast v0, Lnet/lingala/zip4j/b/b/h;

    invoke-virtual {v0}, Lnet/lingala/zip4j/b/b/h;->getFilePointer()J

    move-result-wide v0

    return-wide v0

    .line 47
    :cond_0
    iget-wide v0, p0, Lnet/lingala/zip4j/b/b/d;->amN:J

    return-wide v0
.end method

.method public sB()J
    .locals 2

    .line 51
    invoke-virtual {p0}, Lnet/lingala/zip4j/b/b/d;->sC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/d;->amM:Ljava/io/OutputStream;

    check-cast v0, Lnet/lingala/zip4j/b/b/h;

    invoke-virtual {v0}, Lnet/lingala/zip4j/b/b/h;->sB()J

    move-result-wide v0

    return-wide v0

    .line 55
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public sC()Z
    .locals 1

    .line 59
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/d;->amM:Ljava/io/OutputStream;

    instance-of v0, v0, Lnet/lingala/zip4j/b/b/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/lingala/zip4j/b/b/d;->amM:Ljava/io/OutputStream;

    check-cast v0, Lnet/lingala/zip4j/b/b/h;

    .line 60
    invoke-virtual {v0}, Lnet/lingala/zip4j/b/b/h;->sC()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 59
    :goto_0
    return v0
.end method

.method public sD()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/d;->amM:Ljava/io/OutputStream;

    instance-of v0, v0, Lnet/lingala/zip4j/b/b/h;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/d;->amM:Ljava/io/OutputStream;

    check-cast v0, Lnet/lingala/zip4j/b/b/h;

    invoke-virtual {v0}, Lnet/lingala/zip4j/b/b/h;->getFilePointer()J

    move-result-wide v0

    return-wide v0

    .line 68
    :cond_0
    iget-wide v0, p0, Lnet/lingala/zip4j/b/b/d;->amN:J

    return-wide v0
.end method

.method public sz()I
    .locals 1

    .line 35
    invoke-virtual {p0}, Lnet/lingala/zip4j/b/b/d;->sC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/d;->amM:Ljava/io/OutputStream;

    check-cast v0, Lnet/lingala/zip4j/b/b/h;

    invoke-virtual {v0}, Lnet/lingala/zip4j/b/b/h;->sz()I

    move-result v0

    return v0

    .line 39
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/b/b/d;->write([B)V

    .line 20
    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/lingala/zip4j/b/b/d;->write([BII)V

    .line 25
    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/d;->amM:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 30
    iget-wide p1, p0, Lnet/lingala/zip4j/b/b/d;->amN:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lnet/lingala/zip4j/b/b/d;->amN:J

    .line 31
    return-void
.end method
