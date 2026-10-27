.class public Lcom/alibaba/sdk/android/httpdns/g/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/alibaba/sdk/android/httpdns/e/b;

.field private a:Lcom/alibaba/sdk/android/httpdns/g/c$a;

.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/httpdns/ranking/IPRankingBean;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/concurrent/ConcurrentSkipListSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/httpdns/e/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/g/b$a;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/httpdns/g/b$a;-><init>(Lcom/alibaba/sdk/android/httpdns/g/b;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/g/b;->a:Lcom/alibaba/sdk/android/httpdns/g/c$a;

    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/g/b;->a:Ljava/util/concurrent/ConcurrentSkipListSet;

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/g/b;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/ranking/IPRankingBean;
    .locals 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/g/b;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/g/b;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/sdk/android/httpdns/ranking/IPRankingBean;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/httpdns/ranking/IPRankingBean;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/httpdns/g/b;)Ljava/util/concurrent/ConcurrentSkipListSet;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/httpdns/g/b;->a:Ljava/util/concurrent/ConcurrentSkipListSet;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;[Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/g/a;)V
    .locals 8

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/g/b;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/httpdns/g/b;->a(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/ranking/IPRankingBean;

    move-result-object v5

    if-eqz v5, :cond_2

    if-eqz p2, :cond_2

    array-length v0, p2

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/g/b;->a:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/g/b;->a:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/g/b;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v7, Lcom/alibaba/sdk/android/httpdns/g/c;

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/g/b;->a:Lcom/alibaba/sdk/android/httpdns/g/c$a;

    new-instance v6, Lcom/alibaba/sdk/android/httpdns/g/b$b;

    invoke-direct {v6, p0, p3}, Lcom/alibaba/sdk/android/httpdns/g/b$b;-><init>(Lcom/alibaba/sdk/android/httpdns/g/b;Lcom/alibaba/sdk/android/httpdns/g/a;)V

    move-object v1, v7

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/sdk/android/httpdns/g/c;-><init>(Lcom/alibaba/sdk/android/httpdns/g/c$a;Ljava/lang/String;[Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/ranking/IPRankingBean;Lcom/alibaba/sdk/android/httpdns/g/a;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/g/b;->a:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/httpdns/ranking/IPRankingBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/g/b;->a:Ljava/util/List;

    return-void
.end method
