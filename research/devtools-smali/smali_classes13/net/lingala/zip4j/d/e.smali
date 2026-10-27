.class public Lnet/lingala/zip4j/d/e;
.super Ljava/lang/Object;
.source "RawIO.java"


# instance fields
.field private final amd:[B

.field private final amr:[B

.field private final apS:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/lingala/zip4j/d/e;->apS:[B

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/lingala/zip4j/d/e;->amd:[B

    .line 31
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/lingala/zip4j/d/e;->amr:[B

    return-void
.end method

.method private S([B)V
    .locals 1

    .line 161
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 162
    return-void
.end method


# virtual methods
.method public R([B)I
    .locals 1

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/lingala/zip4j/d/e;->m([BI)I

    move-result p1

    return p1
.end method

.method public a(Ljava/io/OutputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lnet/lingala/zip4j/d/e;->apS:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lnet/lingala/zip4j/d/e;->f([BII)V

    .line 115
    iget-object p2, p0, Lnet/lingala/zip4j/d/e;->apS:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 116
    return-void
.end method

.method public a(Ljava/io/OutputStream;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lnet/lingala/zip4j/d/e;->amr:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2, p3}, Lnet/lingala/zip4j/d/e;->a([BIJ)V

    .line 139
    iget-object p2, p0, Lnet/lingala/zip4j/d/e;->amr:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 140
    return-void
.end method

.method public a([BIJ)V
    .locals 3

    .line 143
    add-int/lit8 v0, p2, 0x7

    const/16 v1, 0x38

    ushr-long v1, p3, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 144
    add-int/lit8 v0, p2, 0x6

    const/16 v1, 0x30

    ushr-long v1, p3, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 145
    add-int/lit8 v0, p2, 0x5

    const/16 v1, 0x28

    ushr-long v1, p3, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 146
    add-int/lit8 v0, p2, 0x4

    const/16 v1, 0x20

    ushr-long v1, p3, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 147
    add-int/lit8 v0, p2, 0x3

    const/16 v1, 0x18

    ushr-long v1, p3, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 148
    add-int/lit8 v0, p2, 0x2

    const/16 v1, 0x10

    ushr-long v1, p3, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 149
    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0x8

    ushr-long v1, p3, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 150
    const-wide/16 v0, 0xff

    and-long/2addr p3, v0

    long-to-int p3, p3

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    .line 151
    return-void
.end method

.method public b(Ljava/io/RandomAccessFile;I)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lnet/lingala/zip4j/d/e;->amr:[B

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/d/e;->S([B)V

    .line 40
    iget-object v0, p0, Lnet/lingala/zip4j/d/e;->amr:[B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 41
    iget-object p1, p0, Lnet/lingala/zip4j/d/e;->amr:[B

    invoke-virtual {p0, p1, v1}, Lnet/lingala/zip4j/d/e;->l([BI)J

    move-result-wide p1

    return-wide p1
.end method

.method public b(Ljava/io/OutputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lnet/lingala/zip4j/d/e;->amd:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lnet/lingala/zip4j/d/e;->g([BII)V

    .line 126
    iget-object p2, p0, Lnet/lingala/zip4j/d/e;->amd:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 127
    return-void
.end method

.method public c(Ljava/io/RandomAccessFile;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lnet/lingala/zip4j/d/e;->amr:[B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 35
    iget-object p1, p0, Lnet/lingala/zip4j/d/e;->amr:[B

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/lingala/zip4j/d/e;->l([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public d(Ljava/io/RandomAccessFile;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lnet/lingala/zip4j/d/e;->amd:[B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 82
    iget-object p1, p0, Lnet/lingala/zip4j/d/e;->amd:[B

    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/d/e;->R([B)I

    move-result p1

    return p1
.end method

.method public e(Ljava/io/RandomAccessFile;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lnet/lingala/zip4j/d/e;->apS:[B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 101
    iget-object p1, p0, Lnet/lingala/zip4j/d/e;->apS:[B

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/lingala/zip4j/d/e;->n([BI)I

    move-result p1

    return p1
.end method

.method public f([BII)V
    .locals 2

    .line 119
    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p3, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 120
    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    .line 122
    return-void
.end method

.method public g([BII)V
    .locals 2

    .line 130
    add-int/lit8 v0, p2, 0x3

    ushr-int/lit8 v1, p3, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 131
    add-int/lit8 v0, p2, 0x2

    ushr-int/lit8 v1, p3, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 132
    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p3, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 133
    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    .line 135
    return-void
.end method

.method public l([BI)J
    .locals 6

    .line 56
    array-length v0, p1

    sub-int/2addr v0, p2

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 57
    iget-object v0, p0, Lnet/lingala/zip4j/d/e;->amr:[B

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/d/e;->S([B)V

    .line 59
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/d/e;->amr:[B

    array-length v2, p1

    if-ge v2, v1, :cond_1

    array-length v2, p1

    sub-int/2addr v2, p2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    const/4 v3, 0x0

    invoke-static {p1, p2, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    const-wide/16 p1, 0x0

    .line 62
    iget-object v0, p0, Lnet/lingala/zip4j/d/e;->amr:[B

    const/4 v2, 0x7

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    int-to-long v4, v0

    or-long/2addr p1, v4

    .line 63
    shl-long/2addr p1, v1

    .line 64
    iget-object v0, p0, Lnet/lingala/zip4j/d/e;->amr:[B

    const/4 v2, 0x6

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    int-to-long v4, v0

    or-long/2addr p1, v4

    .line 65
    shl-long/2addr p1, v1

    .line 66
    iget-object v0, p0, Lnet/lingala/zip4j/d/e;->amr:[B

    const/4 v2, 0x5

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    int-to-long v4, v0

    or-long/2addr p1, v4

    .line 67
    shl-long/2addr p1, v1

    .line 68
    iget-object v0, p0, Lnet/lingala/zip4j/d/e;->amr:[B

    const/4 v2, 0x4

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    int-to-long v4, v0

    or-long/2addr p1, v4

    .line 69
    shl-long/2addr p1, v1

    .line 70
    iget-object v0, p0, Lnet/lingala/zip4j/d/e;->amr:[B

    const/4 v2, 0x3

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    int-to-long v4, v0

    or-long/2addr p1, v4

    .line 71
    shl-long/2addr p1, v1

    .line 72
    iget-object v0, p0, Lnet/lingala/zip4j/d/e;->amr:[B

    const/4 v2, 0x2

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    int-to-long v4, v0

    or-long/2addr p1, v4

    .line 73
    shl-long/2addr p1, v1

    .line 74
    iget-object v0, p0, Lnet/lingala/zip4j/d/e;->amr:[B

    const/4 v2, 0x1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    int-to-long v4, v0

    or-long/2addr p1, v4

    .line 75
    shl-long/2addr p1, v1

    .line 76
    iget-object v0, p0, Lnet/lingala/zip4j/d/e;->amr:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    or-long/2addr p1, v0

    .line 77
    return-wide p1
.end method

.method public m([BI)I
    .locals 3

    .line 95
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    add-int/2addr v1, p2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    add-int/2addr v1, p2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x3

    add-int/2addr v2, p2

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v1

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, v0

    return p1
.end method

.method public n([BI)I
    .locals 2

    .line 110
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    add-int/2addr v1, p2

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v0

    return p1
.end method
