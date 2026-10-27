.class Lbda$1;
.super Ljava/lang/Object;
.source "NetRadioOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbda;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbda;


# direct methods
.method constructor <init>(Lbda;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lbda$1;->a:Lbda;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 74
    iget-object v0, p0, Lbda$1;->a:Lbda;

    invoke-static {v0}, Lbda;->a(Lbda;)Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lbda$1;->a:Lbda;

    invoke-static {v1}, Lbda;->b(Lbda;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 76
    :try_start_0
    iget-object v2, p0, Lbda$1;->a:Lbda;

    invoke-static {v2}, Lbda;->b(Lbda;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 77
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 78
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;

    .line 79
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 80
    iget-object v3, p0, Lbda$1;->a:Lbda;

    invoke-static {v3}, Lbda;->b(Lbda;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lbda$1;->a:Lbda;

    invoke-static {v0}, Lbda;->b(Lbda;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 85
    iget-object v0, p0, Lbda$1;->a:Lbda;

    invoke-static {v0}, Lbda;->b(Lbda;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;

    .line 86
    iget-object v2, p0, Lbda$1;->a:Lbda;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/av;->a(Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;)Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v0

    invoke-static {v2, v0}, Lbda;->a(Lbda;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    goto :goto_1

    .line 88
    :cond_2
    iget-object v0, p0, Lbda$1;->a:Lbda;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lbda;->a(Lbda;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    .line 90
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    new-instance v0, Lbda$1$1;

    invoke-direct {v0, p0}, Lbda$1$1;-><init>(Lbda$1;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lbql;->b(Ljava/lang/Runnable;J)V

    return-void

    :catchall_0
    move-exception v0

    .line 90
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
