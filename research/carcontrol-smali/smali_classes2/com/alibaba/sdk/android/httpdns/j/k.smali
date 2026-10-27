.class public Lcom/alibaba/sdk/android/httpdns/j/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/alibaba/sdk/android/httpdns/e/b;

.field private final a:Lcom/alibaba/sdk/android/httpdns/e/h;

.field private final a:Lcom/alibaba/sdk/android/httpdns/j/d;

.field private final a:Lcom/alibaba/sdk/android/httpdns/k/d;

.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/httpdns/e/b;Lcom/alibaba/sdk/android/httpdns/k/d;Lcom/alibaba/sdk/android/httpdns/e/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/j/k;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    iput-object p2, p0, Lcom/alibaba/sdk/android/httpdns/j/k;->a:Lcom/alibaba/sdk/android/httpdns/k/d;

    new-instance p1, Lcom/alibaba/sdk/android/httpdns/j/d;

    invoke-direct {p1, p2}, Lcom/alibaba/sdk/android/httpdns/j/d;-><init>(Lcom/alibaba/sdk/android/httpdns/k/d;)V

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/j/k;->a:Lcom/alibaba/sdk/android/httpdns/j/d;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/j/k;->a:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/alibaba/sdk/android/httpdns/j/k;->a:Lcom/alibaba/sdk/android/httpdns/e/h;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/k;->a:Lcom/alibaba/sdk/android/httpdns/j/d;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/j/d;->c()V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/i/i;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/httpdns/RequestIpType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/httpdns/i/i<",
            "Lcom/alibaba/sdk/android/httpdns/j/l;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/k;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    iget-object v5, p0, Lcom/alibaba/sdk/android/httpdns/j/k;->a:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/alibaba/sdk/android/httpdns/j/k;->a:Lcom/alibaba/sdk/android/httpdns/e/h;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/alibaba/sdk/android/httpdns/j/j;->a(Lcom/alibaba/sdk/android/httpdns/e/b;Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/sdk/android/httpdns/e/h;)Lcom/alibaba/sdk/android/httpdns/i/d;

    move-result-object p3

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result p4

    if-eqz p4, :cond_0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "start resolve ip request for "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, " "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/j/k;->a:Lcom/alibaba/sdk/android/httpdns/j/d;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/j/d;->a()Lcom/alibaba/sdk/android/httpdns/j/i;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/j/k;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-interface {p1, p2, p3, p5}, Lcom/alibaba/sdk/android/httpdns/j/i;->a(Lcom/alibaba/sdk/android/httpdns/e/b;Lcom/alibaba/sdk/android/httpdns/i/d;Lcom/alibaba/sdk/android/httpdns/i/i;)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Lcom/alibaba/sdk/android/httpdns/i/i;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/sdk/android/httpdns/RequestIpType;",
            "Lcom/alibaba/sdk/android/httpdns/i/i<",
            "Lcom/alibaba/sdk/android/httpdns/j/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/k;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/j/k;->a:Lcom/alibaba/sdk/android/httpdns/e/h;

    invoke-static {v0, p1, p2, v1}, Lcom/alibaba/sdk/android/httpdns/j/j;->a(Lcom/alibaba/sdk/android/httpdns/e/b;Ljava/util/ArrayList;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Lcom/alibaba/sdk/android/httpdns/e/h;)Lcom/alibaba/sdk/android/httpdns/i/d;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start resolve hosts async for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V

    :cond_0
    new-instance p1, Lcom/alibaba/sdk/android/httpdns/i/c;

    new-instance p2, Lcom/alibaba/sdk/android/httpdns/j/b;

    invoke-direct {p2}, Lcom/alibaba/sdk/android/httpdns/j/b;-><init>()V

    invoke-direct {p1, v0, p2}, Lcom/alibaba/sdk/android/httpdns/i/c;-><init>(Lcom/alibaba/sdk/android/httpdns/i/d;Lcom/alibaba/sdk/android/httpdns/i/j;)V

    new-instance p2, Lcom/alibaba/sdk/android/httpdns/i/g;

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/i/e;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/j/k;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/sdk/android/httpdns/h/a;->a(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/h/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/sdk/android/httpdns/i/e;-><init>(Lcom/alibaba/sdk/android/httpdns/h/a;)V

    invoke-direct {p2, p1, v0}, Lcom/alibaba/sdk/android/httpdns/i/g;-><init>(Lcom/alibaba/sdk/android/httpdns/i/c;Lcom/alibaba/sdk/android/httpdns/i/g$a;)V

    new-instance p1, Lcom/alibaba/sdk/android/httpdns/i/g;

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/j/p;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/j/k;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/j/k;->a:Lcom/alibaba/sdk/android/httpdns/k/d;

    iget-object v3, p0, Lcom/alibaba/sdk/android/httpdns/j/k;->a:Lcom/alibaba/sdk/android/httpdns/j/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/sdk/android/httpdns/j/p;-><init>(Lcom/alibaba/sdk/android/httpdns/e/b;Lcom/alibaba/sdk/android/httpdns/k/d;Lcom/alibaba/sdk/android/httpdns/j/s;)V

    invoke-direct {p1, p2, v0}, Lcom/alibaba/sdk/android/httpdns/i/g;-><init>(Lcom/alibaba/sdk/android/httpdns/i/c;Lcom/alibaba/sdk/android/httpdns/i/g$a;)V

    new-instance p2, Lcom/alibaba/sdk/android/httpdns/i/k;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Lcom/alibaba/sdk/android/httpdns/i/k;-><init>(Lcom/alibaba/sdk/android/httpdns/i/c;I)V

    :try_start_0
    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/j/k;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/e/b;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/i/f;

    invoke-direct {v0, p2, p3}, Lcom/alibaba/sdk/android/httpdns/i/f;-><init>(Lcom/alibaba/sdk/android/httpdns/i/c;Lcom/alibaba/sdk/android/httpdns/i/i;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p3, p1}, Lcom/alibaba/sdk/android/httpdns/i/i;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/k;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/k;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
