.class public abstract Lara;
.super Ljava/lang/Object;
.source "AbsReissueOperation.java"


# instance fields
.field protected a:Lcom/xiaopeng/musicradio/bean/dao/ReissueInfoDao;

.field protected b:Larf;

.field protected c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Larf;

    invoke-direct {v0}, Larf;-><init>()V

    iput-object v0, p0, Lara;->b:Larf;

    .line 38
    invoke-static {}, Larb;->a()Larb;

    move-result-object v0

    invoke-virtual {v0}, Larb;->b()Lcom/xiaopeng/musicradio/bean/dao/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/DaoSession;->getReissueInfoDao()Lcom/xiaopeng/musicradio/bean/dao/ReissueInfoDao;

    move-result-object v0

    iput-object v0, p0, Lara;->a:Lcom/xiaopeng/musicradio/bean/dao/ReissueInfoDao;

    .line 39
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "queue-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 41
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lara;->c:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a()Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;
    .locals 1

    .line 125
    iget-object v0, p0, Lara;->b:Larf;

    invoke-virtual {v0}, Larf;->a()Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;
    .locals 1

    .line 143
    iget-object v0, p0, Lara;->a:Lcom/xiaopeng/musicradio/bean/dao/ReissueInfoDao;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/dao/ReissueInfoDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

    return-object p1
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)V
    .locals 1

    .line 54
    new-instance v0, Lara$2;

    invoke-direct {v0, p0, p1}, Lara$2;-><init>(Lara;Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;",
            ">;)V"
        }
    .end annotation

    .line 45
    new-instance v0, Lara$1;

    invoke-direct {v0, p0, p1}, Lara$1;-><init>(Lara;Ljava/util/List;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public b()V
    .locals 3

    .line 130
    :try_start_0
    iget-object v0, p0, Lara;->a:Lcom/xiaopeng/musicradio/bean/dao/ReissueInfoDao;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/ReissueInfoDao;->loadAll()Ljava/util/List;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lara;->c:Landroid/os/Handler;

    new-instance v2, Lara$5;

    invoke-direct {v2, p0, v0}, Lara$5;-><init>(Lara;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ReissueOperation"

    .line 138
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public b(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)V
    .locals 3

    .line 78
    :try_start_0
    iget-object v0, p0, Lara;->a:Lcom/xiaopeng/musicradio/bean/dao/ReissueInfoDao;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/dao/ReissueInfoDao;->insertOrReplace(Ljava/lang/Object;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertOrReplace:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReissueOperation"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    :goto_0
    iget-object v0, p0, Lara;->c:Landroid/os/Handler;

    new-instance v1, Lara$4;

    invoke-direct {v1, p0, p1}, Lara$4;-><init>(Lara;Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;",
            ">;)V"
        }
    .end annotation

    .line 64
    :try_start_0
    iget-object v0, p0, Lara;->a:Lcom/xiaopeng/musicradio/bean/dao/ReissueInfoDao;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/dao/ReissueInfoDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertOrReplace:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReissueOperation"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    :goto_0
    iget-object v0, p0, Lara;->c:Landroid/os/Handler;

    new-instance v1, Lara$3;

    invoke-direct {v1, p0, p1}, Lara$3;-><init>(Lara;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c()V
    .locals 1

    .line 147
    iget-object v0, p0, Lara;->b:Larf;

    invoke-virtual {v0}, Larf;->b()V

    .line 148
    iget-object v0, p0, Lara;->a:Lcom/xiaopeng/musicradio/bean/dao/ReissueInfoDao;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/ReissueInfoDao;->deleteAll()V

    return-void
.end method

.method public c(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)V
    .locals 2

    .line 101
    :try_start_0
    iget-object v0, p0, Lara;->a:Lcom/xiaopeng/musicradio/bean/dao/ReissueInfoDao;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/dao/ReissueInfoDao;->delete(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteSync:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ReissueOperation"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
