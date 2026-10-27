.class Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter$2;
.super Lbkv;
.source "LoginManagerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->b(J)V
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
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter$2;->a:Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    const v0, 0xc65d44

    if-ne p1, v0, :cond_0

    .line 256
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter$2;->a:Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 257
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter$2;->a:Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/main/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/mine/main/view/a;->onSyncStart()V

    goto :goto_0

    .line 260
    :cond_0
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 262
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter$2;->a:Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 263
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter$2;->a:Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/main/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/mine/main/view/a;->onSyncEnd()V

    :cond_2
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/mine/FavouriteSyncResult;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 241
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

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter$2;->a:Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter$2;->a:Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/main/view/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/mine/FavouriteSyncResult;->getData()Lcom/xiaopeng/musicradio/bean/mine/FavouriteSyncResult$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/mine/FavouriteSyncResult$DataBean;->getResults()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/mine/main/view/a;->onSyncState(Ljava/util/List;)V

    goto :goto_0

    .line 246
    :cond_0
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->server_error_tip:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 248
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter$2;->a:Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 249
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter$2;->a:Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/main/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/mine/main/view/a;->onSyncEnd()V

    :cond_2
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 238
    check-cast p1, Lcom/xiaopeng/musicradio/bean/mine/FavouriteSyncResult;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter$2;->a(Lcom/xiaopeng/musicradio/bean/mine/FavouriteSyncResult;)V

    return-void
.end method
