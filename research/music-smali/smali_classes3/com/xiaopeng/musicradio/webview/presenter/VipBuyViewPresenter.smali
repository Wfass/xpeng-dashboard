.class public Lcom/xiaopeng/musicradio/webview/presenter/VipBuyViewPresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "VipBuyViewPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "Lcom/xiaopeng/musicradio/webview/view/b;",
        ">;"
    }
.end annotation


# instance fields
.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 35
    iput p1, p0, Lcom/xiaopeng/musicradio/webview/presenter/VipBuyViewPresenter;->b:I

    .line 36
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbsi;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsi;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    invoke-interface {v0}, Lbsi;->getReadingBuyUrl()Lcom/xiaopeng/musicradio/bean/VipUrlInfo;

    move-result-object v1

    goto :goto_0

    .line 44
    :cond_1
    invoke-interface {v0}, Lbsi;->getNeteaseBuyUrl()Lcom/xiaopeng/musicradio/bean/VipUrlInfo;

    move-result-object v1

    goto :goto_0

    .line 41
    :cond_2
    invoke-interface {v0}, Lbsi;->getQqBuyUrl()Lcom/xiaopeng/musicradio/bean/VipUrlInfo;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    .line 50
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/VipUrlInfo;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 51
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/presenter/VipBuyViewPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/presenter/VipBuyViewPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/webview/view/b;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/VipUrlInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/webview/view/b;->onBuyUrlGet(Ljava/lang/String;)V

    goto :goto_1

    .line 55
    :cond_3
    invoke-interface {v0}, Lbsi;->vipUrlList()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 31
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 0

    .line 62
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    .line 63
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onVipBuyUrlEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$bd;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "VipBuyViewPresenter"

    const-string v0, "onVipBuyUrlEvent"

    .line 68
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget p1, p0, Lcom/xiaopeng/musicradio/webview/presenter/VipBuyViewPresenter;->b:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/webview/presenter/VipBuyViewPresenter;->a(I)V

    return-void
.end method
