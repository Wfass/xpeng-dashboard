.class public final Lorg/apache/commons/net/io/d;
.super Ljava/io/PushbackInputStream;
.source "FromNetASCIIInputStream.java"


# static fields
.field static final atk:Z

.field static final atl:Ljava/lang/String;

.field static final atm:[B


# instance fields
.field private atn:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/io/d;->atl:Ljava/lang/String;

    .line 43
    sget-object v0, Lorg/apache/commons/net/io/d;->atl:Ljava/lang/String;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/net/io/d;->atk:Z

    .line 45
    :try_start_0
    sget-object v0, Lorg/apache/commons/net/io/d;->atl:Ljava/lang/String;

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/io/d;->atm:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    nop

    .line 49
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Broken JVM - cannot find US-ASCII charset!"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 74
    sget-object v0, Lorg/apache/commons/net/io/d;->atm:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 51
    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/commons/net/io/d;->atn:I

    .line 75
    return-void
.end method

.method private ve()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 84
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 86
    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 87
    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    .line 89
    sget-object v0, Lorg/apache/commons/net/io/d;->atm:[B

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/io/d;->unread([B)V

    .line 90
    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 92
    iget v1, p0, Lorg/apache/commons/net/io/d;->atn:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/net/io/d;->atn:I

    goto :goto_0

    .line 96
    :cond_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 97
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/io/d;->unread(I)V

    .line 99
    :cond_1
    return v1

    .line 103
    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lorg/apache/commons/net/io/d;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lorg/apache/commons/net/io/d;->buf:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/net/io/d;->pos:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/commons/net/io/d;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 216
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    sget-boolean v0, Lorg/apache/commons/net/io/d;->atk:Z

    if-eqz v0, :cond_0

    .line 124
    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    return v0

    .line 127
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/net/io/d;->ve()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/net/io/d;->read([BII)I

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

    .line 166
    sget-boolean v0, Lorg/apache/commons/net/io/d;->atk:Z

    if-eqz v0, :cond_0

    .line 167
    invoke-super {p0, p1, p2, p3}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result p1

    return p1

    .line 170
    :cond_0
    const/4 v0, 0x1

    if-ge p3, v0, :cond_1

    .line 171
    const/4 p1, 0x0

    return p1

    .line 176
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/net/io/d;->available()I

    move-result v1

    .line 178
    if-le p3, v1, :cond_2

    move p3, v1

    :cond_2
    iput p3, p0, Lorg/apache/commons/net/io/d;->atn:I

    .line 181
    iget p3, p0, Lorg/apache/commons/net/io/d;->atn:I

    if-ge p3, v0, :cond_3

    .line 182
    iput v0, p0, Lorg/apache/commons/net/io/d;->atn:I

    .line 186
    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/net/io/d;->ve()I

    move-result p3

    const/4 v1, -0x1

    if-ne p3, v1, :cond_4

    .line 187
    return v1

    .line 190
    :cond_4
    nop

    .line 194
    move v2, p3

    move p3, p2

    :goto_0
    add-int/lit8 v3, p3, 0x1

    int-to-byte v2, v2

    aput-byte v2, p1, p3

    .line 196
    iget p3, p0, Lorg/apache/commons/net/io/d;->atn:I

    sub-int/2addr p3, v0

    iput p3, p0, Lorg/apache/commons/net/io/d;->atn:I

    if-lez p3, :cond_6

    invoke-direct {p0}, Lorg/apache/commons/net/io/d;->ve()I

    move-result v2

    if-ne v2, v1, :cond_5

    goto :goto_1

    .line 194
    :cond_5
    move p3, v3

    goto :goto_0

    .line 199
    :cond_6
    :goto_1
    sub-int/2addr v3, p2

    return v3
.end method
