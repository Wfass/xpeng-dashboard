.class public Lcom/alibaba/sdk/android/httpdns/j/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/alibaba/sdk/android/httpdns/CacheTtlChanger;

.field private final a:Lcom/alibaba/sdk/android/httpdns/a/b;

.field private final a:Lcom/alibaba/sdk/android/httpdns/e/b;

.field private final a:Lcom/alibaba/sdk/android/httpdns/g/b;

.field private final a:Lcom/alibaba/sdk/android/httpdns/j/h;

.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private a:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/httpdns/e/b;Lcom/alibaba/sdk/android/httpdns/g/b;Lcom/alibaba/sdk/android/httpdns/a/b;Lcom/alibaba/sdk/android/httpdns/j/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    iput-object p2, p0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Lcom/alibaba/sdk/android/httpdns/g/b;

    iput-object p3, p0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Lcom/alibaba/sdk/android/httpdns/a/b;

    iput-object p4, p0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Lcom/alibaba/sdk/android/httpdns/j/h;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)Lcom/alibaba/sdk/android/httpdns/a/a;
    .locals 8

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Lcom/alibaba/sdk/android/httpdns/CacheTtlChanger;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2, p3, p7}, Lcom/alibaba/sdk/android/httpdns/CacheTtlChanger;->changeCacheTtl(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;I)I

    move-result p7

    :cond_0
    move v7, p7

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result p7

    if-eqz p7, :cond_1

    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "save host "

    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for type "

    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ttl is "

    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-static {p7}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V

    :cond_1
    iget-object p7, p0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Lcom/alibaba/sdk/android/httpdns/j/h;

    invoke-virtual {p7, p5}, Lcom/alibaba/sdk/android/httpdns/j/h;->a(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/j/g;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/sdk/android/httpdns/j/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)Lcom/alibaba/sdk/android/httpdns/a/a;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/httpdns/j/m;)Lcom/alibaba/sdk/android/httpdns/a/b;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Lcom/alibaba/sdk/android/httpdns/a/b;

    return-object p0
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/httpdns/j/m;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/httpdns/j/m;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 7

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Lcom/alibaba/sdk/android/httpdns/a/b;

    invoke-virtual {v1, v0}, Lcom/alibaba/sdk/android/httpdns/a/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/sdk/android/httpdns/a/a;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/httpdns/a/a;->a()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/httpdns/a/a;->a()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_1

    :cond_0
    invoke-virtual {v3, v5}, Lcom/alibaba/sdk/android/httpdns/a/a;->a(Z)V

    :cond_1
    iget-object v4, p0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/httpdns/a/a;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v5}, Lcom/alibaba/sdk/android/httpdns/a/a;->a(Z)V

    :cond_2
    iget-object v4, p0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Lcom/alibaba/sdk/android/httpdns/j/h;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/httpdns/a/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/sdk/android/httpdns/j/h;->a(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/j/g;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/alibaba/sdk/android/httpdns/j/g;->a(Lcom/alibaba/sdk/android/httpdns/a/a;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "cache ready"

    invoke-static {v2}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V

    :cond_4
    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Lcom/alibaba/sdk/android/httpdns/a/b;

    invoke-virtual {p1, v1}, Lcom/alibaba/sdk/android/httpdns/a/b;->a(Ljava/util/List;)V

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/sdk/android/httpdns/a/a;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/httpdns/a/a;->a()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Lcom/alibaba/sdk/android/httpdns/a/b;

    invoke-virtual {v2, p1}, Lcom/alibaba/sdk/android/httpdns/a/b;->a(Ljava/util/List;)V

    :goto_2
    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/e/b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Lcom/alibaba/sdk/android/httpdns/j/h;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/j/h;->a()Ljava/util/List;

    return-void

    :cond_8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/httpdns/a/a;

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->values()[Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/a/a;->b()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/a/a;->a()Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v4:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Lcom/alibaba/sdk/android/httpdns/g/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/a/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/a/a;->a()[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alibaba/sdk/android/httpdns/j/m$a;

    invoke-direct {v4, p0, v0}, Lcom/alibaba/sdk/android/httpdns/j/m$a;-><init>(Lcom/alibaba/sdk/android/httpdns/j/m;Lcom/alibaba/sdk/android/httpdns/a/a;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/sdk/android/httpdns/g/b;->a(Ljava/lang/String;[Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/g/a;)V

    goto :goto_3

    :cond_a
    return-void
.end method

.method private b(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Lcom/alibaba/sdk/android/httpdns/j/h;

    invoke-virtual {v0, p3}, Lcom/alibaba/sdk/android/httpdns/j/h;->a(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/j/g;

    move-result-object p3

    invoke-virtual {p3, p1, p2, p4}, Lcom/alibaba/sdk/android/httpdns/j/g;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;[Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/a/a;

    move-result-object p2

    iget-boolean p3, p0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Z

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance p3, Lcom/alibaba/sdk/android/httpdns/j/m$b;

    invoke-direct {p3, p0, p1}, Lcom/alibaba/sdk/android/httpdns/j/m$b;-><init>(Lcom/alibaba/sdk/android/httpdns/j/m;Ljava/util/ArrayList;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Lcom/alibaba/sdk/android/httpdns/j/h;

    invoke-virtual {v0, p3}, Lcom/alibaba/sdk/android/httpdns/j/h;->a(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/j/g;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/alibaba/sdk/android/httpdns/j/g;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/httpdns/RequestIpType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Lcom/alibaba/sdk/android/httpdns/j/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/httpdns/j/h;->a(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/j/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/j/g;->a()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Lcom/alibaba/sdk/android/httpdns/j/h;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/j/h;->a()Ljava/util/List;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/alibaba/sdk/android/httpdns/j/m$e;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/sdk/android/httpdns/j/m$e;-><init>(Lcom/alibaba/sdk/android/httpdns/j/m;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    :cond_0
    return-void
.end method

.method public a(Lcom/alibaba/sdk/android/httpdns/CacheTtlChanger;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Lcom/alibaba/sdk/android/httpdns/CacheTtlChanger;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Lcom/alibaba/sdk/android/httpdns/j/a;)V
    .locals 9

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/httpdns/j/a;->a()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/httpdns/j/a$a;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/j/a$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/j/a$a;->a()Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/j/a$a;->a()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/j/a$a;->a()I

    move-result v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/sdk/android/httpdns/j/m;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)Lcom/alibaba/sdk/android/httpdns/a/a;

    move-result-object v1

    iget-boolean v2, p0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/j/a$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/j/a$a;->a()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/j/a$a;->a()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    :cond_1
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    :try_start_0
    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p3, Lcom/alibaba/sdk/android/httpdns/j/m$d;

    invoke-direct {p3, p0, p2}, Lcom/alibaba/sdk/android/httpdns/j/m$d;-><init>(Lcom/alibaba/sdk/android/httpdns/j/m;Ljava/util/ArrayList;)V

    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    :cond_3
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/j/m$h;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "update both is impossible for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object p2, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v6:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v4:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/sdk/android/httpdns/j/m;->b(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/j/l;)V
    .locals 12

    move-object v0, p0

    move-object v9, p2

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/j/m$h;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-object v4, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v4:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    invoke-virtual/range {p6 .. p6}, Lcom/alibaba/sdk/android/httpdns/j/l;->a()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p6 .. p6}, Lcom/alibaba/sdk/android/httpdns/j/l;->a()I

    move-result v8

    move-object v1, v0

    move-object v2, p1

    move-object v3, v9

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/sdk/android/httpdns/j/m;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)Lcom/alibaba/sdk/android/httpdns/a/a;

    move-result-object v11

    sget-object v4, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v6:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    invoke-virtual/range {p6 .. p6}, Lcom/alibaba/sdk/android/httpdns/j/l;->b()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p6 .. p6}, Lcom/alibaba/sdk/android/httpdns/j/l;->a()I

    move-result v8

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/sdk/android/httpdns/j/m;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)Lcom/alibaba/sdk/android/httpdns/a/a;

    move-result-object v1

    iget-boolean v2, v0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Z

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual/range {p6 .. p6}, Lcom/alibaba/sdk/android/httpdns/j/l;->a()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p6 .. p6}, Lcom/alibaba/sdk/android/httpdns/j/l;->a()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual/range {p6 .. p6}, Lcom/alibaba/sdk/android/httpdns/j/l;->b()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual/range {p6 .. p6}, Lcom/alibaba/sdk/android/httpdns/j/l;->b()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual/range {p6 .. p6}, Lcom/alibaba/sdk/android/httpdns/j/l;->a()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual/range {p6 .. p6}, Lcom/alibaba/sdk/android/httpdns/j/l;->a()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-virtual/range {p6 .. p6}, Lcom/alibaba/sdk/android/httpdns/j/l;->b()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual/range {p6 .. p6}, Lcom/alibaba/sdk/android/httpdns/j/l;->b()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_9

    goto :goto_1

    :cond_4
    :goto_0
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    sget-object v4, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v6:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    invoke-virtual/range {p6 .. p6}, Lcom/alibaba/sdk/android/httpdns/j/l;->b()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p6 .. p6}, Lcom/alibaba/sdk/android/httpdns/j/l;->a()I

    move-result v8

    move-object v1, v0

    move-object v2, p1

    move-object v3, v9

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/sdk/android/httpdns/j/m;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)Lcom/alibaba/sdk/android/httpdns/a/a;

    move-result-object v11

    iget-boolean v1, v0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Z

    if-nez v1, :cond_8

    iget-object v1, v0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual/range {p6 .. p6}, Lcom/alibaba/sdk/android/httpdns/j/l;->b()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual/range {p6 .. p6}, Lcom/alibaba/sdk/android/httpdns/j/l;->b()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_9

    goto :goto_2

    :cond_7
    sget-object v4, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v4:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    invoke-virtual/range {p6 .. p6}, Lcom/alibaba/sdk/android/httpdns/j/l;->a()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p6 .. p6}, Lcom/alibaba/sdk/android/httpdns/j/l;->a()I

    move-result v8

    move-object v1, v0

    move-object v2, p1

    move-object v3, v9

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/sdk/android/httpdns/j/m;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)Lcom/alibaba/sdk/android/httpdns/a/a;

    move-result-object v11

    iget-boolean v1, v0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Z

    if-nez v1, :cond_8

    iget-object v1, v0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual/range {p6 .. p6}, Lcom/alibaba/sdk/android/httpdns/j/l;->a()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual/range {p6 .. p6}, Lcom/alibaba/sdk/android/httpdns/j/l;->a()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_9

    :cond_8
    :goto_2
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_a

    :try_start_0
    iget-object v1, v0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/alibaba/sdk/android/httpdns/j/m$c;

    invoke-direct {v2, v0, v10}, Lcom/alibaba/sdk/android/httpdns/j/m$c;-><init>(Lcom/alibaba/sdk/android/httpdns/j/m;Ljava/util/ArrayList;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    :cond_a
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Lcom/alibaba/sdk/android/httpdns/j/h;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/httpdns/j/h;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Z

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/alibaba/sdk/android/httpdns/j/m$f;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/sdk/android/httpdns/j/m$f;-><init>(Lcom/alibaba/sdk/android/httpdns/j/m;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/j/m;->a()V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public a(ZZ)V
    .locals 1

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Z

    :try_start_0
    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/j/m$g;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/sdk/android/httpdns/j/m$g;-><init>(Lcom/alibaba/sdk/android/httpdns/j/m;Z)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Lcom/alibaba/sdk/android/httpdns/j/h;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/j/h;->a()Ljava/util/List;

    return-void
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/m;->a:Lcom/alibaba/sdk/android/httpdns/j/h;

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/j/m;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/httpdns/j/h;->a(Ljava/util/List;)Ljava/util/List;

    return-void
.end method
