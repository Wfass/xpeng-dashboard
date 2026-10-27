.class public Lcom/alibaba/sdk/android/httpdns/k/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/alibaba/sdk/android/httpdns/e/b;Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/i/i;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/httpdns/e/b;",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/httpdns/i/i<",
            "Lcom/alibaba/sdk/android/httpdns/k/g;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/ss?platform=android&sdk_version="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "2.4.2"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&region=global"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/j/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkDetector;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkDetector;->getNetType(Landroid/content/Context;)Lcom/alibaba/sdk/android/httpdns/NetType;

    move-result-object p1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/NetType;->v6:Lcom/alibaba/sdk/android/httpdns/NetType;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/b/b;->a()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/b/b;->a()[I

    move-result-object v7

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->b()Lcom/alibaba/sdk/android/httpdns/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/b/b;->a()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->b()Lcom/alibaba/sdk/android/httpdns/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/b/b;->a()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/b/b;->a()[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/b/b;->a()[I

    move-result-object v11

    invoke-static/range {v6 .. v11}, Lcom/alibaba/sdk/android/httpdns/k/h;->a([Ljava/lang/String;[I[Ljava/lang/String;[I[Ljava/lang/String;[I)[Lcom/alibaba/sdk/android/httpdns/k/a;

    move-result-object p1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v6:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/b/b;->b()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/b/b;->b()[I

    move-result-object v7

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->b()Lcom/alibaba/sdk/android/httpdns/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/b/b;->b()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->b()Lcom/alibaba/sdk/android/httpdns/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/b/b;->b()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/b/b;->b()[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/b/b;->b()[I

    move-result-object v11

    invoke-static/range {v6 .. v11}, Lcom/alibaba/sdk/android/httpdns/k/h;->a([Ljava/lang/String;[I[Ljava/lang/String;[I[Ljava/lang/String;[I)[Lcom/alibaba/sdk/android/httpdns/k/a;

    move-result-object p1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v4:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    :goto_0
    move-object v7, v0

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/i/d;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/httpdns/k/a;->a()Ljava/lang/String;

    move-result-object v3

    aget-object v1, p1, v1

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/sdk/android/httpdns/k/a;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()I

    move-result v6

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/sdk/android/httpdns/i/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILcom/alibaba/sdk/android/httpdns/RequestIpType;)V

    new-instance v1, Lcom/alibaba/sdk/android/httpdns/i/c;

    new-instance v2, Lcom/alibaba/sdk/android/httpdns/k/h$a;

    invoke-direct {v2}, Lcom/alibaba/sdk/android/httpdns/k/h$a;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/alibaba/sdk/android/httpdns/i/c;-><init>(Lcom/alibaba/sdk/android/httpdns/i/d;Lcom/alibaba/sdk/android/httpdns/i/j;)V

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/i/g;

    new-instance v2, Lcom/alibaba/sdk/android/httpdns/i/e;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/sdk/android/httpdns/h/a;->a(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/h/a;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/sdk/android/httpdns/i/e;-><init>(Lcom/alibaba/sdk/android/httpdns/h/a;)V

    invoke-direct {v0, v1, v2}, Lcom/alibaba/sdk/android/httpdns/i/g;-><init>(Lcom/alibaba/sdk/android/httpdns/i/c;Lcom/alibaba/sdk/android/httpdns/i/g$a;)V

    new-instance v1, Lcom/alibaba/sdk/android/httpdns/i/g;

    new-instance v2, Lcom/alibaba/sdk/android/httpdns/k/e;

    invoke-direct {v2, p1}, Lcom/alibaba/sdk/android/httpdns/k/e;-><init>([Lcom/alibaba/sdk/android/httpdns/k/a;)V

    invoke-direct {v1, v0, v2}, Lcom/alibaba/sdk/android/httpdns/i/g;-><init>(Lcom/alibaba/sdk/android/httpdns/i/c;Lcom/alibaba/sdk/android/httpdns/i/g$a;)V

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/i/k;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/sdk/android/httpdns/i/k;-><init>(Lcom/alibaba/sdk/android/httpdns/i/c;I)V

    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    new-instance p1, Lcom/alibaba/sdk/android/httpdns/i/f;

    invoke-direct {p1, v0, p2}, Lcom/alibaba/sdk/android/httpdns/i/f;-><init>(Lcom/alibaba/sdk/android/httpdns/i/c;Lcom/alibaba/sdk/android/httpdns/i/i;)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {p2, p0}, Lcom/alibaba/sdk/android/httpdns/i/i;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static a([Ljava/lang/String;[I[Ljava/lang/String;[I[Ljava/lang/String;[I)[Lcom/alibaba/sdk/android/httpdns/k/a;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_1

    move v4, v3

    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_1

    aget-object v5, p0, v4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    array-length v5, p1

    if-le v5, v4, :cond_0

    aget v5, p1, v4

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    move p0, v3

    :goto_2
    array-length p1, p2

    if-ge p0, p1, :cond_3

    aget-object p1, p2, p0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_2

    array-length p1, p3

    if-le p1, p0, :cond_2

    aget p1, p3, p0

    goto :goto_3

    :cond_2
    move p1, v2

    :goto_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_3
    if-eqz p4, :cond_5

    move p0, v3

    :goto_4
    array-length p1, p4

    if-ge p0, p1, :cond_5

    aget-object p1, p4, p0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p5, :cond_4

    array-length p1, p5

    if-le p1, p0, :cond_4

    aget p1, p5, p0

    goto :goto_5

    :cond_4
    move p1, v2

    :goto_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/alibaba/sdk/android/httpdns/k/a;

    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v3, p1, :cond_6

    new-instance p1, Lcom/alibaba/sdk/android/httpdns/k/a;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-direct {p1, p2, p3}, Lcom/alibaba/sdk/android/httpdns/k/a;-><init>(Ljava/lang/String;I)V

    aput-object p1, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_6
    return-object p0
.end method
