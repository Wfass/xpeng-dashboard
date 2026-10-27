.class public interface abstract Lcom/alibaba/fastjson2/a;
.super Ljava/lang/Object;
.source "JSON.java"


# direct methods
.method public static varargs a(Ljava/lang/String;[Lcom/alibaba/fastjson2/u$d;)Lcom/alibaba/fastjson2/JSONArray;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 2348
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 2352
    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson2/d;->a([Lcom/alibaba/fastjson2/u$d;)Lcom/alibaba/fastjson2/u$c;

    move-result-object p1

    .line 2353
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/String;Lcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object p0

    .line 2354
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->g()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    if-eqz p0, :cond_1

    .line 2366
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V

    :cond_1
    return-object v0

    .line 2357
    :cond_2
    :try_start_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 2358
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/u;->a(Ljava/util/List;)V

    .line 2359
    iget-object v1, p0, Lcom/alibaba/fastjson2/u;->d:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 2360
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Object;)V

    .line 2362
    :cond_3
    iget-char v1, p0, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_5

    iget-wide v1, p1, Lcom/alibaba/fastjson2/u$c;->p:J

    sget-object p1, Lcom/alibaba/fastjson2/u$d;->IgnoreCheckClose:Lcom/alibaba/fastjson2/u$d;

    iget-wide v3, p1, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_4

    goto :goto_0

    .line 2363
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string v0, "input not end"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_0
    if-eqz p0, :cond_6

    .line 2366
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V

    :cond_6
    return-object v0

    :catch_0
    move-exception p1

    if-eqz p0, :cond_7

    .line 2353
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw p1

    :cond_8
    :goto_2
    return-object v0
.end method

.method public static a(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/alibaba/fastjson2/e;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 525
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/d;->c()Lcom/alibaba/fastjson2/u$c;

    move-result-object v1

    .line 526
    invoke-static {p0, p1, v1}, Lcom/alibaba/fastjson2/u;->a(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object p0

    .line 527
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->g()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    if-eqz p0, :cond_1

    .line 540
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V

    :cond_1
    return-object v0

    .line 531
    :cond_2
    :try_start_1
    new-instance p1, Lcom/alibaba/fastjson2/e;

    invoke-direct {p1}, Lcom/alibaba/fastjson2/e;-><init>()V

    const-wide/16 v2, 0x0

    .line 532
    invoke-virtual {p0, p1, v2, v3}, Lcom/alibaba/fastjson2/u;->a(Ljava/util/Map;J)V

    .line 533
    iget-object v0, p0, Lcom/alibaba/fastjson2/u;->d:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 534
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Object;)V

    .line 536
    :cond_3
    iget-char v0, p0, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v4, 0x1a

    if-eq v0, v4, :cond_5

    iget-wide v0, v1, Lcom/alibaba/fastjson2/u$c;->p:J

    sget-object v4, Lcom/alibaba/fastjson2/u$d;->IgnoreCheckClose:Lcom/alibaba/fastjson2/u$d;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    goto :goto_0

    .line 537
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string v0, "input not end"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_0
    if-eqz p0, :cond_6

    .line 540
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V

    :cond_6
    return-object p1

    :catch_0
    move-exception p1

    if-eqz p0, :cond_7

    .line 526
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw p1
.end method

.method public static a(Ljava/net/URL;)Lcom/alibaba/fastjson2/e;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 558
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 559
    :try_start_1
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/a;->a(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/alibaba/fastjson2/e;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v0, :cond_1

    .line 560
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    return-object v1

    :catch_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 558
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception v0

    .line 561
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSON#parseObject cannot parse \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static varargs a(Ljava/io/InputStream;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson2/u$d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson2/u$d;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1769
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/d;->c()Lcom/alibaba/fastjson2/u$c;

    move-result-object v1

    .line 1770
    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson2/u$c;->a([Lcom/alibaba/fastjson2/u$d;)V

    .line 1771
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/u$c;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v2

    .line 1773
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, p2, v1}, Lcom/alibaba/fastjson2/u;->a(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object p0

    .line 1774
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->b()Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_2

    if-eqz p0, :cond_1

    .line 1786
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V

    :cond_1
    return-object v0

    :cond_2
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    .line 1778
    :try_start_1
    invoke-interface/range {v2 .. v7}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 1779
    iget-object p2, p0, Lcom/alibaba/fastjson2/u;->d:Ljava/util/List;

    if-eqz p2, :cond_3

    .line 1780
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Object;)V

    .line 1782
    :cond_3
    iget-char p2, p0, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v0, 0x1a

    if-eq p2, v0, :cond_5

    iget-wide v0, v1, Lcom/alibaba/fastjson2/u$c;->p:J

    sget-object p2, Lcom/alibaba/fastjson2/u$d;->IgnoreCheckClose:Lcom/alibaba/fastjson2/u$d;

    iget-wide v2, p2, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_4

    goto :goto_0

    .line 1783
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_0
    if-eqz p0, :cond_6

    .line 1786
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V

    :cond_6
    return-object p1

    :catch_0
    move-exception p1

    if-eqz p0, :cond_7

    .line 1773
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw p1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 10

    if-eqz p0, :cond_9

    .line 51
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 55
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v0

    .line 56
    new-instance v1, Lcom/alibaba/fastjson2/u$c;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/u$c;-><init>(Lzx;)V

    .line 57
    invoke-static {p0, v1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/String;Lcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object p0

    .line 59
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->a()C

    move-result v2

    .line 61
    iget-object v3, v1, Lcom/alibaba/fastjson2/u$c;->s:Ljava/util/function/Supplier;

    const-wide/16 v8, 0x0

    if-nez v3, :cond_3

    iget-wide v3, v1, Lcom/alibaba/fastjson2/u$c;->p:J

    sget-object v5, Lcom/alibaba/fastjson2/u$d;->UseNativeObject:Lcom/alibaba/fastjson2/u$d;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v3, v5

    cmp-long v3, v3, v8

    if-nez v3, :cond_3

    const/16 v3, 0x7b

    if-eq v2, v3, :cond_1

    const/16 v4, 0x5b

    if-ne v2, v4, :cond_3

    :cond_1
    if-ne v2, v3, :cond_2

    .line 66
    new-instance v0, Lcom/alibaba/fastjson2/e;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/e;-><init>()V

    .line 67
    invoke-virtual {p0, v0, v8, v9}, Lcom/alibaba/fastjson2/u;->a(Ljava/util/Map;J)V

    goto :goto_0

    .line 70
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 71
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/u;->a(Ljava/util/List;)V

    .line 74
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/u;->d:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 75
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 78
    :cond_3
    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lzx;->a(Ljava/lang/reflect/Type;Z)Lwk;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v3, p0

    .line 79
    invoke-interface/range {v2 .. v7}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 81
    :cond_4
    :goto_1
    iget-char v2, p0, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v3, 0x1a

    if-eq v2, v3, :cond_6

    iget-wide v1, v1, Lcom/alibaba/fastjson2/u$c;->p:J

    sget-object v3, Lcom/alibaba/fastjson2/u$d;->IgnoreCheckClose:Lcom/alibaba/fastjson2/u$d;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v1, v3

    cmp-long v1, v1, v8

    if-eqz v1, :cond_5

    goto :goto_2

    .line 82
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "input not end"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_2
    if-eqz p0, :cond_7

    .line 85
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V

    :cond_7
    return-object v0

    :catch_0
    move-exception v0

    if-eqz p0, :cond_8

    .line 57
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_3
    throw v0

    :cond_9
    :goto_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_7

    .line 714
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 718
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v0

    .line 719
    new-instance v1, Lcom/alibaba/fastjson2/u$c;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/u$c;-><init>(Lzx;)V

    .line 720
    sget-wide v2, Lcom/alibaba/fastjson2/d;->d:J

    sget-object v4, Lcom/alibaba/fastjson2/u$d;->FieldBased:Lcom/alibaba/fastjson2/u$d;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, p1, v2}, Lzx;->a(Ljava/lang/reflect/Type;Z)Lwk;

    move-result-object v6

    .line 725
    invoke-static {p0, v1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/String;Lcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object p0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object v7, p0

    move-object v8, p1

    .line 726
    :try_start_0
    invoke-interface/range {v6 .. v11}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 727
    iget-object v0, p0, Lcom/alibaba/fastjson2/u;->d:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 728
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Object;)V

    .line 730
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v2, 0x1a

    if-eq v0, v2, :cond_4

    iget-wide v0, v1, Lcom/alibaba/fastjson2/u$c;->p:J

    sget-object v2, Lcom/alibaba/fastjson2/u$d;->IgnoreCheckClose:Lcom/alibaba/fastjson2/u$d;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    goto :goto_1

    .line 731
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string v0, "input not end"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    if-eqz p0, :cond_5

    .line 734
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V

    :cond_5
    return-object p1

    :catch_0
    move-exception p1

    if-eqz p0, :cond_6

    .line 725
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw p1

    :cond_7
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_7

    .line 841
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 845
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v0

    .line 846
    new-instance v1, Lcom/alibaba/fastjson2/u$c;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/u$c;-><init>(Lzx;)V

    .line 847
    sget-wide v2, Lcom/alibaba/fastjson2/d;->d:J

    sget-object v4, Lcom/alibaba/fastjson2/u$d;->FieldBased:Lcom/alibaba/fastjson2/u$d;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, p1, v2}, Lzx;->a(Ljava/lang/reflect/Type;Z)Lwk;

    move-result-object v6

    .line 852
    invoke-static {p0, v1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/String;Lcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object p0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object v7, p0

    move-object v8, p1

    .line 853
    :try_start_0
    invoke-interface/range {v6 .. v11}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 854
    iget-object v0, p0, Lcom/alibaba/fastjson2/u;->d:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 855
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Object;)V

    .line 857
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v2, 0x1a

    if-eq v0, v2, :cond_4

    iget-wide v0, v1, Lcom/alibaba/fastjson2/u$c;->p:J

    sget-object v2, Lcom/alibaba/fastjson2/u$d;->IgnoreCheckClose:Lcom/alibaba/fastjson2/u$d;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    goto :goto_1

    .line 858
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string v0, "input not end"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    if-eqz p0, :cond_5

    .line 861
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V

    :cond_5
    return-object p1

    :catch_0
    move-exception p1

    if-eqz p0, :cond_6

    .line 852
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw p1

    :cond_7
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 12

    .line 2738
    sget-object v0, Lcom/alibaba/fastjson2/d;->C:Lahq;

    .line 2739
    new-instance v1, Lcom/alibaba/fastjson2/ab$a;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/ab$a;-><init>(Lahq;)V

    .line 2740
    :try_start_0
    invoke-static {v1}, Lcom/alibaba/fastjson2/ab;->a(Lcom/alibaba/fastjson2/ab$a;)Lcom/alibaba/fastjson2/ab;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez p0, :cond_0

    .line 2742
    :try_start_1
    invoke-virtual {v9}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_1

    .line 2744
    :cond_0
    iput-object p0, v9, Lcom/alibaba/fastjson2/ab;->o:Ljava/lang/Object;

    .line 2745
    sget-object v2, Lcom/alibaba/fastjson2/ab$c;->a:Lcom/alibaba/fastjson2/ab$c;

    iput-object v2, v9, Lcom/alibaba/fastjson2/ab;->q:Lcom/alibaba/fastjson2/ab$c;

    .line 2747
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 2748
    const-class v3, Lcom/alibaba/fastjson2/e;

    const-wide/16 v4, 0x0

    if-ne v2, v3, :cond_1

    iget-wide v6, v1, Lcom/alibaba/fastjson2/ab$a;->l:J

    cmp-long v1, v6, v4

    if-nez v1, :cond_1

    .line 2749
    move-object v0, p0

    check-cast v0, Lcom/alibaba/fastjson2/e;

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson2/ab;->a(Lcom/alibaba/fastjson2/e;)V

    goto :goto_1

    .line 2751
    :cond_1
    sget-wide v6, Lcom/alibaba/fastjson2/d;->g:J

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->FieldBased:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v10, v1, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v6, v10

    cmp-long v1, v6, v4

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v2, v2, v1}, Lahq;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Laem;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v3, v9

    move-object v4, p0

    .line 2756
    invoke-interface/range {v2 .. v8}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 2759
    :goto_1
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v9, :cond_3

    .line 2760
    :try_start_2
    invoke-virtual {v9}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    return-object v0

    :catch_0
    move-exception v0

    if-eqz v9, :cond_4

    .line 2740
    :try_start_3
    invoke-virtual {v9}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v0
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    .line 2761
    :goto_3
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSON#toJSONString cannot serialize \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static varargs a(Ljava/lang/Object;[Lcom/alibaba/fastjson2/ab$b;)Ljava/lang/String;
    .locals 9

    .line 2804
    new-instance v0, Lcom/alibaba/fastjson2/ab$a;

    sget-object v1, Lcom/alibaba/fastjson2/d;->C:Lahq;

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/ab$a;-><init>(Lahq;[Lcom/alibaba/fastjson2/ab$b;)V

    .line 2805
    invoke-static {v0}, Lcom/alibaba/fastjson2/ab;->a(Lcom/alibaba/fastjson2/ab$a;)Lcom/alibaba/fastjson2/ab;

    move-result-object p1

    if-nez p0, :cond_0

    .line 2807
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_1

    .line 2809
    :cond_0
    iput-object p0, p1, Lcom/alibaba/fastjson2/ab;->o:Ljava/lang/Object;

    .line 2810
    sget-object v1, Lcom/alibaba/fastjson2/ab$c;->a:Lcom/alibaba/fastjson2/ab$c;

    iput-object v1, p1, Lcom/alibaba/fastjson2/ab;->q:Lcom/alibaba/fastjson2/ab$c;

    .line 2811
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2813
    iget-wide v2, v0, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object v4, Lcom/alibaba/fastjson2/ab$b;->FieldBased:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 2814
    :goto_0
    iget-object v0, v0, Lcom/alibaba/fastjson2/ab$a;->b:Lahq;

    invoke-virtual {v0, v1, v1, v2}, Lahq;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Laem;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v3, p1

    move-object v4, p0

    .line 2815
    invoke-interface/range {v2 .. v8}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 2817
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    .line 2818
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->close()V

    :cond_2
    return-object p0

    :catch_0
    move-exception p0

    if-eqz p1, :cond_3

    .line 2805
    :try_start_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p0
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson2/u$d;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/u$d;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_6

    .line 2548
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2552
    :cond_0
    invoke-static {p2}, Lcom/alibaba/fastjson2/d;->a([Lcom/alibaba/fastjson2/u$d;)Lcom/alibaba/fastjson2/u$c;

    move-result-object p2

    .line 2553
    invoke-static {p0, p2}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/String;Lcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object p0

    .line 2554
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u;->c(Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object p1

    .line 2555
    iget-object v0, p0, Lcom/alibaba/fastjson2/u;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2556
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Object;)V

    .line 2558
    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    iget-wide v0, p2, Lcom/alibaba/fastjson2/u$c;->p:J

    sget-object p2, Lcom/alibaba/fastjson2/u$d;->IgnoreCheckClose:Lcom/alibaba/fastjson2/u$d;

    iget-wide v2, p2, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 2559
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    if-eqz p0, :cond_4

    .line 2562
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V

    :cond_4
    return-object p1

    :catch_0
    move-exception p1

    if-eqz p0, :cond_5

    .line 2553
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p1

    :cond_6
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a([B)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 3390
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    .line 3394
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson2/u;->a([B)Lcom/alibaba/fastjson2/u;

    move-result-object p0
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_2

    .line 3395
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->P()V

    .line 3396
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->b()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz p0, :cond_1

    .line 3397
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/c; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    return v1

    :catch_0
    move-exception v1

    if-eqz p0, :cond_2

    .line 3394
    :try_start_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/alibaba/fastjson2/c; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_1
    move-exception p0

    :try_start_4
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1
    :try_end_4
    .catch Lcom/alibaba/fastjson2/c; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_3
    :goto_1
    return v0
.end method

.method public static b(Ljava/lang/String;)Lcom/alibaba/fastjson2/e;
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 234
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 238
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/d;->c()Lcom/alibaba/fastjson2/u$c;

    move-result-object v1

    .line 239
    invoke-static {p0, v1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/String;Lcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object p0

    .line 240
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->g()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    if-eqz p0, :cond_1

    .line 252
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V

    :cond_1
    return-object v0

    .line 243
    :cond_2
    :try_start_1
    new-instance v0, Lcom/alibaba/fastjson2/e;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/e;-><init>()V

    const-wide/16 v2, 0x0

    .line 244
    invoke-virtual {p0, v0, v2, v3}, Lcom/alibaba/fastjson2/u;->a(Ljava/util/Map;J)V

    .line 245
    iget-object v4, p0, Lcom/alibaba/fastjson2/u;->d:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 246
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Object;)V

    .line 248
    :cond_3
    iget-char v4, p0, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_5

    iget-wide v4, v1, Lcom/alibaba/fastjson2/u$c;->p:J

    sget-object v1, Lcom/alibaba/fastjson2/u$d;->IgnoreCheckClose:Lcom/alibaba/fastjson2/u$d;

    iget-wide v6, v1, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v4, v6

    cmp-long v1, v4, v2

    if-eqz v1, :cond_4

    goto :goto_0

    .line 249
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "input not end"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_0
    if-eqz p0, :cond_6

    .line 252
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V

    :cond_6
    return-object v0

    :catch_0
    move-exception v0

    if-eqz p0, :cond_7

    .line 239
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw v0

    :cond_8
    :goto_2
    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 3469
    check-cast v0, [Lcom/alibaba/fastjson2/ab$b;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson2/a;->b(Ljava/lang/Object;[Lcom/alibaba/fastjson2/ab$b;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs b(Ljava/lang/Object;[Lcom/alibaba/fastjson2/ab$b;)Ljava/lang/Object;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3485
    :cond_0
    instance-of v0, p0, Lcom/alibaba/fastjson2/e;

    if-nez v0, :cond_6

    instance-of v0, p0, Lcom/alibaba/fastjson2/JSONArray;

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    if-nez p1, :cond_2

    .line 3490
    invoke-static {}, Lcom/alibaba/fastjson2/d;->b()Lcom/alibaba/fastjson2/ab$a;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/alibaba/fastjson2/d;->a([Lcom/alibaba/fastjson2/ab$b;)Lcom/alibaba/fastjson2/ab$a;

    move-result-object p1

    .line 3491
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3492
    invoke-virtual {p1, v0, v0}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Laem;

    move-result-object v1

    .line 3493
    instance-of v0, v1, Laez;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->ReferenceDetection:Lcom/alibaba/fastjson2/ab$b;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/ab$a;->a(Lcom/alibaba/fastjson2/ab$b;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3494
    check-cast v1, Laez;

    .line 3495
    invoke-virtual {v1, p0}, Laez;->b(Ljava/lang/Object;)Lcom/alibaba/fastjson2/e;

    move-result-object p0

    return-object p0

    .line 3499
    :cond_3
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson2/ab;->a(Lcom/alibaba/fastjson2/ab$a;)Lcom/alibaba/fastjson2/ab;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p1

    move-object v3, p0

    .line 3500
    :try_start_1
    invoke-interface/range {v1 .. v7}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 3501
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz p1, :cond_4

    .line 3502
    :try_start_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3506
    :cond_4
    invoke-static {p0}, Lcom/alibaba/fastjson2/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    if-eqz p1, :cond_5

    .line 3499
    :try_start_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p0
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p0

    .line 3503
    :goto_2
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string v0, "toJSONString error"

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_6
    :goto_3
    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_6

    .line 2491
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2495
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/d;->c()Lcom/alibaba/fastjson2/u$c;

    move-result-object v0

    .line 2496
    invoke-static {p0, v0}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/String;Lcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object p0

    .line 2497
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u;->c(Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object p1

    .line 2498
    iget-object v1, p0, Lcom/alibaba/fastjson2/u;->d:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 2499
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Object;)V

    .line 2501
    :cond_1
    iget-char v1, p0, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_3

    iget-wide v0, v0, Lcom/alibaba/fastjson2/u$c;->p:J

    sget-object v2, Lcom/alibaba/fastjson2/u$d;->IgnoreCheckClose:Lcom/alibaba/fastjson2/u$d;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    goto :goto_0

    .line 2502
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string v0, "input not end"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    if-eqz p0, :cond_4

    .line 2505
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V

    :cond_4
    return-object p1

    :catch_0
    move-exception p1

    if-eqz p0, :cond_5

    .line 2496
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p1

    :cond_6
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 3266
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 3270
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson2/u;->c(Ljava/lang/String;)Lcom/alibaba/fastjson2/u;

    move-result-object p0
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_2

    .line 3271
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->P()V

    .line 3272
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/alibaba/fastjson2/u;->g:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-eqz p0, :cond_2

    .line 3273
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/c; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    return v1

    :catch_0
    move-exception v1

    if-eqz p0, :cond_3

    .line 3270
    :try_start_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/alibaba/fastjson2/c; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_1
    move-exception p0

    :try_start_4
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1
    :try_end_4
    .catch Lcom/alibaba/fastjson2/c; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_4
    :goto_2
    return v0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 3324
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3328
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson2/u;->c(Ljava/lang/String;)Lcom/alibaba/fastjson2/u;

    move-result-object p0
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_2

    .line 3329
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->t()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v1, :cond_2

    if-eqz p0, :cond_1

    .line 3334
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/c; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    return v0

    .line 3332
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->P()V

    .line 3333
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->b()Z

    move-result v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz p0, :cond_3

    .line 3334
    :try_start_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_4
    .catch Lcom/alibaba/fastjson2/c; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    return v1

    :catch_0
    move-exception v1

    if-eqz p0, :cond_4

    .line 3328
    :try_start_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/alibaba/fastjson2/c; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_1
    move-exception p0

    :try_start_6
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw v1
    :try_end_6
    .catch Lcom/alibaba/fastjson2/c; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    :cond_5
    :goto_1
    return v0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 3368
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3372
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson2/u;->c(Ljava/lang/String;)Lcom/alibaba/fastjson2/u;

    move-result-object p0
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_2

    .line 3373
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->s()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v1, :cond_2

    if-eqz p0, :cond_1

    .line 3378
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/c; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    return v0

    .line 3376
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->P()V

    .line 3377
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->b()Z

    move-result v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz p0, :cond_3

    .line 3378
    :try_start_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_4
    .catch Lcom/alibaba/fastjson2/c; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    return v1

    :catch_0
    move-exception v1

    if-eqz p0, :cond_4

    .line 3372
    :try_start_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/alibaba/fastjson2/c; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_1
    move-exception p0

    :try_start_6
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw v1
    :try_end_6
    .catch Lcom/alibaba/fastjson2/c; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    :cond_5
    :goto_1
    return v0
.end method
