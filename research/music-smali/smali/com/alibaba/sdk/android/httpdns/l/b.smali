.class public Lcom/alibaba/sdk/android/httpdns/l/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/alibaba/sdk/android/httpdns/e/b;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/httpdns/e/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/l/b;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/httpdns/l/b;)Lcom/alibaba/sdk/android/httpdns/e/b;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/httpdns/l/b;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/alibaba/sdk/android/httpdns/b/b;)V
    .locals 8

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/b/b;->b()[Ljava/lang/String;

    move-result-object v0

    const-string v1, ", ports: "

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/b/b;->b()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-le v0, v2, :cond_1

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start ranking server ips: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/b/b;->b()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/b/b;->b()[I

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/l/b;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v3, Lcom/alibaba/sdk/android/httpdns/l/c;

    iget-object v4, p0, Lcom/alibaba/sdk/android/httpdns/l/b;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/b/b;->b()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/b/b;->b()[I

    move-result-object v6

    new-instance v7, Lcom/alibaba/sdk/android/httpdns/l/b$a;

    invoke-direct {v7, p0}, Lcom/alibaba/sdk/android/httpdns/l/b$a;-><init>(Lcom/alibaba/sdk/android/httpdns/l/b;)V

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/alibaba/sdk/android/httpdns/l/c;-><init>(Ljava/lang/String;[Ljava/lang/String;[ILcom/alibaba/sdk/android/httpdns/l/a;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/b/b;->a()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/b/b;->a()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-le v0, v2, :cond_3

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start ranking server ipv6s: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/b/b;->a()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/b/b;->a()[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/l/b;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/alibaba/sdk/android/httpdns/l/c;

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/l/b;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/b/b;->a()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/b/b;->a()[I

    move-result-object p1

    new-instance v4, Lcom/alibaba/sdk/android/httpdns/l/b$b;

    invoke-direct {v4, p0}, Lcom/alibaba/sdk/android/httpdns/l/b$b;-><init>(Lcom/alibaba/sdk/android/httpdns/l/b;)V

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/alibaba/sdk/android/httpdns/l/c;-><init>(Ljava/lang/String;[Ljava/lang/String;[ILcom/alibaba/sdk/android/httpdns/l/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method
