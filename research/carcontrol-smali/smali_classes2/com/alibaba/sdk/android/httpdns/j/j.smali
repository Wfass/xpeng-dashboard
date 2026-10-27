.class public Lcom/alibaba/sdk/android/httpdns/j/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/alibaba/sdk/android/httpdns/e/b;Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/sdk/android/httpdns/e/h;)Lcom/alibaba/sdk/android/httpdns/i/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/httpdns/e/b;",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/httpdns/RequestIpType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/sdk/android/httpdns/e/h;",
            ")",
            "Lcom/alibaba/sdk/android/httpdns/i/d;"
        }
    .end annotation

    if-eqz p4, :cond_1

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    if-eqz p5, :cond_0

    invoke-virtual {p4, p5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p4, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    :cond_2
    :goto_0
    invoke-virtual {p6, p1}, Lcom/alibaba/sdk/android/httpdns/e/h;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p3

    invoke-static {p0, p1, p2, p4, p3}, Lcom/alibaba/sdk/android/httpdns/j/j;->a(Lcom/alibaba/sdk/android/httpdns/e/b;Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkDetector;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkDetector;

    move-result-object p1

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Landroid/content/Context;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkDetector;->getNetType(Landroid/content/Context;)Lcom/alibaba/sdk/android/httpdns/NetType;

    move-result-object p1

    sget-object p2, Lcom/alibaba/sdk/android/httpdns/NetType;->v6:Lcom/alibaba/sdk/android/httpdns/NetType;

    if-ne p1, p2, :cond_3

    new-instance p1, Lcom/alibaba/sdk/android/httpdns/i/d;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/b/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/httpdns/b/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/b/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/httpdns/b/c;->b()I

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()I

    move-result v5

    sget-object v6, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v6:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/sdk/android/httpdns/i/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILcom/alibaba/sdk/android/httpdns/RequestIpType;)V

    return-object p1

    :cond_3
    new-instance p1, Lcom/alibaba/sdk/android/httpdns/i/d;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/b/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/httpdns/b/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/b/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/httpdns/b/c;->a()I

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()I

    move-result v5

    sget-object v6, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v4:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/sdk/android/httpdns/i/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILcom/alibaba/sdk/android/httpdns/RequestIpType;)V

    return-object p1
.end method

.method public static a(Lcom/alibaba/sdk/android/httpdns/e/b;Ljava/util/ArrayList;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Lcom/alibaba/sdk/android/httpdns/e/h;)Lcom/alibaba/sdk/android/httpdns/i/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/httpdns/e/b;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/sdk/android/httpdns/RequestIpType;",
            "Lcom/alibaba/sdk/android/httpdns/e/h;",
            ")",
            "Lcom/alibaba/sdk/android/httpdns/i/d;"
        }
    .end annotation

    invoke-static {p2}, Lcom/alibaba/sdk/android/httpdns/j/j;->a(Lcom/alibaba/sdk/android/httpdns/RequestIpType;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/alibaba/sdk/android/httpdns/e/h;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p3

    if-eqz p3, :cond_2

    const-string/jumbo v0, "s"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "sign_resolve"

    goto :goto_1

    :cond_2
    const-string v0, "resolve"

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?host="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "&sdk=android_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "2.4.2"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/j/j;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p3}, Lcom/alibaba/sdk/android/httpdns/j/j;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkDetector;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkDetector;

    move-result-object p1

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Landroid/content/Context;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkDetector;->getNetType(Landroid/content/Context;)Lcom/alibaba/sdk/android/httpdns/NetType;

    move-result-object p1

    sget-object p2, Lcom/alibaba/sdk/android/httpdns/NetType;->v6:Lcom/alibaba/sdk/android/httpdns/NetType;

    if-ne p1, p2, :cond_3

    new-instance p1, Lcom/alibaba/sdk/android/httpdns/i/d;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/b/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/httpdns/b/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/b/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/httpdns/b/c;->b()I

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()I

    move-result v5

    sget-object v6, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v6:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/sdk/android/httpdns/i/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILcom/alibaba/sdk/android/httpdns/RequestIpType;)V

    return-object p1

    :cond_3
    new-instance p1, Lcom/alibaba/sdk/android/httpdns/i/d;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/b/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/httpdns/b/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/b/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/httpdns/b/c;->a()I

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()I

    move-result v5

    sget-object v6, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v4:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/sdk/android/httpdns/i/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILcom/alibaba/sdk/android/httpdns/RequestIpType;)V

    return-object p1
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/m/a;->a()Lcom/alibaba/sdk/android/httpdns/m/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/m/a;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&sid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/alibaba/sdk/android/httpdns/RequestIpType;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/j/j$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const-string p0, "&query=4,6"

    goto :goto_0

    :cond_1
    const-string p0, "&query=6"

    :goto_0
    return-object p0
.end method

.method public static a(Lcom/alibaba/sdk/android/httpdns/e/b;Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/httpdns/e/b;",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/httpdns/RequestIpType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p2}, Lcom/alibaba/sdk/android/httpdns/j/j;->a(Lcom/alibaba/sdk/android/httpdns/RequestIpType;)Ljava/lang/String;

    move-result-object p2

    :try_start_0
    invoke-static {p3}, Lcom/alibaba/sdk/android/httpdns/j/j;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p3, 0x0

    :goto_0
    invoke-static {p4}, Lcom/alibaba/sdk/android/httpdns/j/j;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    if-eqz p4, :cond_0

    const-string/jumbo v1, "s"

    invoke-virtual {p4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    const-string/jumbo p4, "sign_d"

    goto :goto_1

    :cond_0
    const-string p4, "d"

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p4, "?host="

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "&sdk=android_"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "2.4.2"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/j/j;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method private static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const-string v6, "&sdns-"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/alibaba/sdk/android/httpdns/j/j;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u8bbe\u7f6e\u81ea\u5b9a\u4e49\u53c2\u6570\u5931\u8d25\uff0c\u81ea\u5b9a\u4e49key\u4e0d\u5408\u6cd5\uff1a"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/alibaba/sdk/android/httpdns/j/j;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u8bbe\u7f6e\u81ea\u5b9a\u4e49\u53c2\u6570\u5931\u8d25\uff0c\u81ea\u5b9a\u4e49value\u4e0d\u5408\u6cd5\uff1a"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->b(Ljava/lang/String;)V

    move v7, v5

    move v5, v3

    move v3, v7

    goto :goto_0

    :cond_2
    move v3, v5

    :goto_0
    if-eqz v3, :cond_4

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    const/16 v2, 0x3e8

    if-gt v0, v2, :cond_3

    return-object p0

    :cond_3
    const-string/jumbo p0, "\u8bbe\u7f6e\u81ea\u5b9a\u4e49\u53c2\u6570\u5931\u8d25\uff0c\u81ea\u5b9a\u4e49\u53c2\u6570\u8fc7\u957f"

    invoke-static {p0}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->b(Ljava/lang/String;)V

    :cond_4
    return-object v1
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "[a-zA-Z0-9\\-_]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "[a-zA-Z0-9\\-_=]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
