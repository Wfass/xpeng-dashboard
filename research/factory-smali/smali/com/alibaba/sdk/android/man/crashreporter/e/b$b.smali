.class public Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/man/crashreporter/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private P:I

.field private R:I

.field private S:I

.field private buffer:[B

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:[B

.field private h:[B

.field private position:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .line 2067
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;-><init>(Ljava/io/OutputStream;I)V

    .line 2068
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 2

    .line 2095
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2096
    and-int/lit8 p1, p2, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->e:Z

    .line 2097
    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->d:Z

    .line 2098
    iget-boolean p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->d:Z

    const/4 v0, 0x4

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    goto :goto_2

    :cond_2
    move p1, v0

    :goto_2
    iput p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->P:I

    .line 2099
    iget p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->P:I

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->buffer:[B

    .line 2100
    iput v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->position:I

    .line 2101
    iput v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->R:I

    .line 2102
    iput-boolean v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->f:Z

    .line 2103
    new-array p1, v0, [B

    iput-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->h:[B

    .line 2104
    iput p2, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->S:I

    .line 2105
    invoke-static {p2}, Lcom/alibaba/sdk/android/man/crashreporter/e/b;->c(I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->g:[B

    .line 2106
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

    .line 2218
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->f()V

    .line 2222
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 2224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->buffer:[B

    .line 2225
    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->out:Ljava/io/OutputStream;

    .line 2226
    return-void
.end method

.method public f()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2197
    iget v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->position:I

    if-lez v0, :cond_1

    .line 2198
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->d:Z

    if-eqz v0, :cond_0

    .line 2199
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->h:[B

    iget-object v2, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->buffer:[B

    iget v3, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->position:I

    iget v4, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->S:I

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/sdk/android/man/crashreporter/e/b;->b([B[BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2200
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->position:I

    goto :goto_0

    .line 2203
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64 input not properly padded."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2208
    :cond_1
    :goto_0
    return-void
.end method

.method public g()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2237
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->f()V

    .line 2238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->f:Z

    .line 2239
    return-void
.end method

.method public h()V
    .locals 1

    .line 2248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->f:Z

    .line 2249
    return-void
.end method

.method public write(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2121
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->f:Z

    if-eqz v0, :cond_0

    .line 2122
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 2123
    return-void

    .line 2127
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2128
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->buffer:[B

    iget v2, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->position:I

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    .line 2129
    iget p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->position:I

    iget v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->P:I

    if-lt p1, v0, :cond_4

    .line 2131
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->out:Ljava/io/OutputStream;

    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->h:[B

    iget-object v2, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->buffer:[B

    iget v3, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->P:I

    iget v4, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->S:I

    invoke-static {v0, v2, v3, v4}, Lcom/alibaba/sdk/android/man/crashreporter/e/b;->b([B[BII)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 2133
    iget p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->R:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->R:I

    .line 2134
    iget-boolean p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->e:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->R:I

    const/16 v0, 0x4c

    if-lt p1, v0, :cond_1

    .line 2135
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->out:Ljava/io/OutputStream;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 2136
    iput v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->R:I

    .line 2139
    :cond_1
    iput v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->position:I

    goto :goto_0

    .line 2146
    :cond_2
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->g:[B

    and-int/lit8 v2, p1, 0x7f

    aget-byte v0, v0, v2

    const/4 v3, -0x5

    if-le v0, v3, :cond_3

    .line 2147
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->buffer:[B

    iget v2, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->position:I

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    .line 2148
    iget p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->position:I

    iget v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->P:I

    if-lt p1, v0, :cond_4

    .line 2150
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->buffer:[B

    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->h:[B

    iget v2, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->S:I

    invoke-static {p1, v1, v0, v1, v2}, Lcom/alibaba/sdk/android/man/crashreporter/e/b;->b([BI[BII)I

    move-result p1

    .line 2151
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->h:[B

    invoke-virtual {v0, v2, v1, p1}, Ljava/io/OutputStream;->write([BII)V

    .line 2152
    iput v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->position:I

    .line 2153
    goto :goto_0

    .line 2155
    :cond_3
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->g:[B

    aget-byte p1, p1, v2

    if-ne p1, v3, :cond_5

    .line 2160
    :cond_4
    :goto_0
    return-void

    .line 2156
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid character in Base64 data."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2178
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->f:Z

    if-eqz v0, :cond_0

    .line 2179
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 2180
    return-void

    .line 2183
    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    .line 2184
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/alibaba/sdk/android/man/crashreporter/e/b$b;->write(I)V

    .line 2183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2187
    :cond_1
    return-void
.end method
