.class Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$1;
.super Lbkv;
.source "SyncStatePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->c(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;I)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$1;->b:Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;

    iput p2, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$1;->a:I

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    const v0, 0xc65d41

    if-ne p1, v0, :cond_0

    .line 262
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$1;->b:Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->d(Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;)V

    goto :goto_0

    :cond_0
    const v0, 0xc65d42

    if-ne p1, v0, :cond_1

    .line 264
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$1;->b:Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->e(Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;)V

    goto :goto_0

    :cond_1
    const v0, 0xc65d43

    if-ne p1, v0, :cond_2

    .line 266
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 267
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$1;->b:Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 268
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$1;->b:Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lawz;

    invoke-interface {p1}, Lawz;->onSyncNone()V

    goto :goto_0

    .line 271
    :cond_2
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget p2, Lcom/xiaopeng/musicradio/mine/a$e;->server_error_tip:I

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 272
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$1;->b:Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 273
    iget p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$1;->a:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    .line 274
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$1;->b:Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lawz;

    invoke-interface {p1}, Lawz;->onSyncFail()V

    goto :goto_0

    .line 276
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$1;->b:Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->b(Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 256
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$1;->b:Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->d(Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;)V

    return-void
.end method
