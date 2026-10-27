.class public final Lorg/apache/commons/net/io/ToNetASCIIInputStream;
.super Ljava/io/FilterInputStream;
.source "ToNetASCIIInputStream.java"


# static fields
.field private static final __LAST_WAS_CR:I = 0x1

.field private static final __LAST_WAS_NL:I = 0x2

.field private static final __NOTHING_SPECIAL:I


# instance fields
.field private __status:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;

    .line 50
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

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
    iget-object v0, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 179
    .local v0, "result":I
    iget v1, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 180
    add-int/lit8 v1, v0, 0x1

    return v1

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
    iget v0, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 71
    iput v2, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    .line 72
    return v1

    .line 75
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 77
    .local v0, "ch":I
    const/4 v4, 0x1

    const/16 v5, 0xd

    if-eq v0, v1, :cond_2

    if-eq v0, v5, :cond_1

    goto :goto_0

    .line 80
    :cond_1
    iput v4, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    .line 81
    return v5

    .line 83
    :cond_2
    iget v1, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    if-eq v1, v4, :cond_3

    .line 85
    iput v3, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    .line 86
    return v5

    .line 90
    :cond_3
    :goto_0
    iput v2, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    .line 91
    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    const/4 v0, 0x1

    if-ge p3, v0, :cond_0

    .line 136
    const/4 v0, 0x0

    return v0

    .line 139
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->available()I

    move-result v1

    .line 141
    .local v1, "ch":I
    if-le p3, v1, :cond_1

    .line 142
    move p3, v1

    .line 146
    :cond_1
    if-ge p3, v0, :cond_2

    .line 147
    const/4 p3, 0x1

    .line 150
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->read()I

    move-result v0

    move v1, v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 151
    return v2

    .line 154
    :cond_3
    move v0, p3

    move p3, p2

    .line 158
    .local v0, "length":I
    .local p2, "off":I
    .local p3, "offset":I
    :goto_0
    add-int/lit8 v3, p3, 0x1

    .local v3, "offset":I
    int-to-byte v4, v1

    aput-byte v4, p1, p3

    .line 160
    .end local p3    # "offset":I
    add-int/2addr v0, v2

    if-lez v0, :cond_5

    invoke-virtual {p0}, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->read()I

    move-result p3

    move v1, p3

    if-ne p3, v2, :cond_4

    goto :goto_1

    .line 154
    :cond_4
    move p3, v3

    goto :goto_0

    .line 162
    :cond_5
    :goto_1
    sub-int p3, v3, p2

    return p3
.end method
