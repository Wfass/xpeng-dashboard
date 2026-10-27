.class public Lcom/amap/api/services/a/am;
.super Ljava/lang/Object;
.source "InstanceFactory.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/amap/api/services/a/l;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/amap/api/services/a/l;",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/a/au;
        }
    .end annotation

    .line 130
    nop

    .line 132
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/amap/api/services/a/ao;->bq()Lcom/amap/api/services/a/ao;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/amap/api/services/a/ao;->d(Landroid/content/Context;Lcom/amap/api/services/a/l;)Lcom/amap/api/services/a/an;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    goto :goto_0

    .line 133
    :catch_0
    move-exception p0

    .line 134
    const-string p1, "InstanceFactory"

    const-string v1, "getInstance1"

    invoke-static {p0, p1, v1}, Lcom/amap/api/services/a/aw;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    move-object p0, v0

    :goto_0
    const/4 p1, 0x1

    if-eqz p0, :cond_1

    .line 139
    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/services/a/an;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/amap/api/services/a/an;->d:Z

    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {p0, p2}, Lcom/amap/api/services/a/an;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 141
    if-eqz p0, :cond_0

    .line 142
    invoke-virtual {p0, p4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 143
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 144
    invoke-virtual {p0, p5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 145
    return-object p0

    .line 150
    :cond_0
    goto :goto_1

    .line 148
    :catch_1
    move-exception p0

    .line 149
    const-string p2, "InstanceFactory"

    const-string v1, "getInstance1()"

    invoke-static {p0, p2, v1}, Lcom/amap/api/services/a/aw;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_1
    :goto_1
    if-nez p3, :cond_2

    .line 157
    return-object v0

    .line 159
    :cond_2
    :try_start_2
    invoke-virtual {p3, p4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 160
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 161
    invoke-virtual {p0, p5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 165
    return-object p0

    .line 166
    :catch_2
    move-exception p0

    .line 167
    const-string p1, "InstanceFactory"

    const-string p2, "getInstance2()"

    invoke-static {p0, p1, p2}, Lcom/amap/api/services/a/aw;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    new-instance p0, Lcom/amap/api/services/a/au;

    const-string p1, "\u83b7\u53d6\u5bf9\u8c61\u9519\u8bef"

    invoke-direct {p0, p1}, Lcom/amap/api/services/a/au;-><init>(Ljava/lang/String;)V

    throw p0
.end method
