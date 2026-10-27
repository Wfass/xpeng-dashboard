.class public Lorg/jaudiotagger/audio/asf/io/FullRequestInputStream;
.super Ljava/io/FilterInputStream;
.source "FullRequestInputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public read([B)I
    .locals 2

    .line 32
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/jaudiotagger/audio/asf/io/FullRequestInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    add-int v1, p2, v0

    sub-int v2, p3, v0

    .line 45
    invoke-super {p0, p1, v1, v2}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/2addr v0, v1

    :cond_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 52
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sub-int/2addr p3, v0

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " more bytes expected."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return v0
.end method

.method public skip(J)J
    .locals 8

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v4, v2

    move-wide v2, v0

    :goto_0
    cmp-long v5, v2, p1

    if-gez v5, :cond_1

    sub-long v5, p1, v2

    .line 69
    invoke-super {p0, v5, v6}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v5

    cmp-long v7, v5, v0

    if-nez v7, :cond_0

    add-int/lit8 v4, v4, 0x1

    const/4 v7, 0x2

    if-ne v4, v7, :cond_0

    goto :goto_1

    :cond_0
    add-long/2addr v2, v5

    goto :goto_0

    :cond_1
    :goto_1
    return-wide v2
.end method
