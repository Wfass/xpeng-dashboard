.class public Lnet/lingala/zip4j/headers/c;
.super Ljava/lang/Object;
.source "HeaderUtil.java"


# direct methods
.method public static a([BZLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0

    .line 36
    if-eqz p2, :cond_0

    .line 37
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1

    .line 40
    :cond_0
    if-eqz p1, :cond_1

    .line 41
    new-instance p1, Ljava/lang/String;

    sget-object p2, Lnet/lingala/zip4j/d/d;->apQ:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1

    .line 45
    :cond_1
    :try_start_0
    new-instance p1, Ljava/lang/String;

    const-string p2, "Cp437"

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 46
    :catch_0
    move-exception p1

    .line 47
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method public static a(Lnet/lingala/zip4j/model/p;Ljava/lang/String;)Lnet/lingala/zip4j/model/i;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 20
    invoke-static {p0, p1}, Lnet/lingala/zip4j/headers/c;->b(Lnet/lingala/zip4j/model/p;Ljava/lang/String;)Lnet/lingala/zip4j/model/i;

    move-result-object v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    const-string v0, "\\\\"

    const-string v1, "/"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-static {p0, p1}, Lnet/lingala/zip4j/headers/c;->b(Lnet/lingala/zip4j/model/p;Ljava/lang/String;)Lnet/lingala/zip4j/model/i;

    move-result-object v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    const-string v0, "/"

    const-string v1, "\\\\"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-static {p0, p1}, Lnet/lingala/zip4j/headers/c;->b(Lnet/lingala/zip4j/model/p;Ljava/lang/String;)Lnet/lingala/zip4j/model/i;

    move-result-object v0

    .line 32
    :cond_0
    return-object v0
.end method

.method public static b(Lnet/lingala/zip4j/model/p;)J
    .locals 2

    .line 60
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/p;->tG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/p;->tF()Lnet/lingala/zip4j/model/m;

    move-result-object p0

    invoke-virtual {p0}, Lnet/lingala/zip4j/model/m;->tx()J

    move-result-wide v0

    return-wide v0

    .line 64
    :cond_0
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/p;->tB()Lnet/lingala/zip4j/model/f;

    move-result-object p0

    invoke-virtual {p0}, Lnet/lingala/zip4j/model/f;->td()J

    move-result-wide v0

    return-wide v0
.end method

.method private static b(Lnet/lingala/zip4j/model/p;Ljava/lang/String;)Lnet/lingala/zip4j/model/i;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 91
    if-eqz p0, :cond_7

    .line 96
    invoke-static {p1}, Lnet/lingala/zip4j/d/f;->fA(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 101
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/p;->tA()Lnet/lingala/zip4j/model/d;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 106
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/p;->tA()Lnet/lingala/zip4j/model/d;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/d;->sX()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 111
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/p;->tA()Lnet/lingala/zip4j/model/d;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/d;->sX()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 112
    return-object v1

    .line 115
    :cond_0
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/p;->tA()Lnet/lingala/zip4j/model/d;

    move-result-object p0

    invoke-virtual {p0}, Lnet/lingala/zip4j/model/d;->sX()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/model/i;

    .line 116
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/i;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-static {v2}, Lnet/lingala/zip4j/d/f;->fA(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 118
    goto :goto_0

    .line 121
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    return-object v0

    .line 124
    :cond_2
    goto :goto_0

    .line 126
    :cond_3
    return-object v1

    .line 107
    :cond_4
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file Headers are null, cannot determine file header with exact match for fileName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 102
    :cond_5
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "central directory is null, cannot determine file header with exact match for fileName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 97
    :cond_6
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file name is null, cannot determine file header with exact match for fileName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 92
    :cond_7
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zip model is null, cannot determine file header with exact match for fileName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .locals 0

    .line 52
    if-nez p1, :cond_0

    .line 53
    sget-object p1, Lnet/lingala/zip4j/d/d;->apR:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0

    .line 56
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method
