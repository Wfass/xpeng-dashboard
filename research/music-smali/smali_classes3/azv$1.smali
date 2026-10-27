.class Lazv$1;
.super Ljava/lang/Object;
.source "LocalLoveOperationBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazv;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lazv;


# direct methods
.method constructor <init>(Lazv;Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lazv$1;->b:Lazv;

    iput-object p2, p0, Lazv$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 44
    :try_start_0
    iget-object v0, p0, Lazv$1;->b:Lazv;

    iget-object v1, p0, Lazv$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lazv;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 47
    iget-object v3, p0, Lazv$1;->b:Lazv;

    invoke-virtual {v3, v2}, Lazv;->a(Ljava/lang/Object;)Lcom/xiaopeng/musicradio/bean/db/LocalLove;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lazv$1;->b:Lazv;

    invoke-static {v0}, Lazv;->a(Lazv;)Ljava/util/HashSet;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/LocalLove;

    .line 52
    iget-object v3, p0, Lazv$1;->b:Lazv;

    invoke-static {v3}, Lazv;->a(Lazv;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/LocalLove;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 54
    :cond_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 56
    iget-object v1, p0, Lazv$1;->b:Lazv;

    invoke-virtual {v1}, Lazv;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "initCached"

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    :goto_2
    new-instance v0, Lasj$q;

    invoke-direct {v0}, Lasj$q;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method
