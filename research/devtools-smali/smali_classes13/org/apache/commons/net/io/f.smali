.class public final Lorg/apache/commons/net/io/f;
.super Ljava/io/FilterInputStream;
.source "ToNetASCIIInputStream.java"


# instance fields
.field private atp:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 51
    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/commons/net/io/f;->atp:I

    .line 52
    return-void
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lorg/apache/commons/net/io/f;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 179
    iget v1, p0, Lorg/apache/commons/net/io/f;->atp:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 180
    add-int/lit8 v0, v0, 0x1

    return v0

    .line 183
    :cond_0
    return v0
.end method

.method public markSupported()Z
    .locals 1

    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget v0, p0, Lorg/apache/commons/net/io/f;->atp:I

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 71
    iput v2, p0, Lorg/apache/commons/net/io/f;->atp:I

    .line 72
    return v1

    .line 75
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/io/f;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 77
    const/4 v4, 0x1

    const/16 v5, 0xd

    if-eq v0, v1, :cond_2

    if-eq v0, v5, :cond_1

    goto :goto_0

    .line 80
    :cond_1
    iput v4, p0, Lorg/apache/commons/net/io/f;->atp:I

    .line 81
    return v5

    .line 83
    :cond_2
    iget v1, p0, Lorg/apache/commons/net/io/f;->atp:I

    if-eq v1, v4, :cond_3

    .line 85
    iput v3, p0, Lorg/apache/commons/net/io/f;->atp:I

    .line 86
    return v5

    .line 90
    :cond_3
    :goto_0
    iput v2, p0, Lorg/apache/commons/net/io/f;->atp:I

    .line 91
    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/net/io/f;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    const/4 v0, 0x1

    if-ge p3, v0, :cond_0

    .line 136
    const/4 p1, 0x0

    return p1

    .line 139
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/net/io/f;->available()I

    move-result v1

    .line 141
    if-le p3, v1, :cond_1

    .line 142
    nop

    .line 146
    move p3, v1

    :cond_1
    if-ge p3, v0, :cond_2

    .line 147
    nop

    .line 150
    move p3, v0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/net/io/f;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 151
    return v1

    .line 154
    :cond_3
    nop

    .line 158
    move v2, p3

    move p3, p2

    :goto_0
    add-int/lit8 v3, p3, 0x1

    int-to-byte v0, v0

    aput-byte v0, p1, p3

    .line 160
    add-int/2addr v2, v1

    if-lez v2, :cond_5

    invoke-virtual {p0}, Lorg/apache/commons/net/io/f;->read()I

    move-result v0

    if-ne v0, v1, :cond_4

    goto :goto_1

    .line 158
    :cond_4
    move p3, v3

    goto :goto_0

    .line 162
    :cond_5
    :goto_1
    sub-int/2addr v3, p2

    return v3
.end method
