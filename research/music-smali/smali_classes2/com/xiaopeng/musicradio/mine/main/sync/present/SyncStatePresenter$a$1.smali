.class Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a$1;
.super Lbkv;
.source "SyncStatePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/mine/FavouriteSyncResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a$1;->a:Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/mine/FavouriteSyncResult;)V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a$1;->a:Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;->a:Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->a(Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;Z)Z

    if-eqz p1, :cond_0

    .line 179
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/mine/FavouriteSyncResult;->getData()Lcom/xiaopeng/musicradio/bean/mine/FavouriteSyncResult$DataBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/mine/FavouriteSyncResult;->getData()Lcom/xiaopeng/musicradio/bean/mine/FavouriteSyncResult$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/mine/FavouriteSyncResult$DataBean;->getResults()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/mine/FavouriteSyncResult;->getData()Lcom/xiaopeng/musicradio/bean/mine/FavouriteSyncResult$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/mine/FavouriteSyncResult$DataBean;->getResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/mine/FavouriteSyncResult;->getData()Lcom/xiaopeng/musicradio/bean/mine/FavouriteSyncResult$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/mine/FavouriteSyncResult$DataBean;->getResults()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/mine/ResultState;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VipBuyViewPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a$1;->a:Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;->a:Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a$1;->a:Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;->a:Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawz;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/mine/FavouriteSyncResult;->getData()Lcom/xiaopeng/musicradio/bean/mine/FavouriteSyncResult$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/mine/FavouriteSyncResult$DataBean;->getResults()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lawz;->onSyncState(Ljava/util/List;)V

    goto :goto_0

    .line 185
    :cond_0
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->server_error_tip:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 186
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a$1;->a:Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;->a:Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->b(Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 175
    check-cast p1, Lcom/xiaopeng/musicradio/bean/mine/FavouriteSyncResult;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a$1;->a(Lcom/xiaopeng/musicradio/bean/mine/FavouriteSyncResult;)V

    return-void
.end method
