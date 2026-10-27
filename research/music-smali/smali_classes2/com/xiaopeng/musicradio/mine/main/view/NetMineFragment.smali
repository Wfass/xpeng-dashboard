.class public Lcom/xiaopeng/musicradio/mine/main/view/NetMineFragment;
.super Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;
.source "NetMineFragment.java"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    extras = 0x1
    path = "/mine/net_mine"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetMineFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected getBugRightMargin()I
    .locals 2

    .line 46
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/NetMineFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/s;->a(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method public getMenuIndex()I
    .locals 1

    .line 103
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->c()I

    move-result v0

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    const-string v0, "/mine/net_mine"

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Netease"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/musicradio/vui/c;->P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getVipSaleType()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method protected isShowContinuePlay()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected logout()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/NetMineFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->i()V

    return-void
.end method

.method public onAccountInfoUpdated(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipDetail;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onKugouAccountInfoUpdated(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipDetail;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onKugouAuthChanged(Z)V
    .locals 0

    return-void
.end method

.method public onNeteaaseAccountInfoUpdated(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipDetail;",
            ">;)V"
        }
    .end annotation

    .line 36
    iget-object p3, p0, Lcom/xiaopeng/musicradio/mine/main/view/NetMineFragment;->mAccountInfoLayout:Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;

    invoke-virtual {p3, p1, p2, p6}, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->setInfo(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onNeteaseAuthChanged(Z)V
    .locals 0

    return-void
.end method

.method public onQqAuthChanged(Z)V
    .locals 0

    return-void
.end method

.method public onXmlyAccountInfoUpdated(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onXmlyAuthChanged(Z)V
    .locals 0

    return-void
.end method

.method protected showBuyDialog()V
    .locals 3

    .line 90
    invoke-static {}, Latu;->d()V

    .line 91
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbtg;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbtg;

    .line 92
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/NetMineFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lbtg;->startVipBuy(Landroid/content/Context;I)V

    .line 93
    invoke-static {}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->getInstance()Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/NetMineFragment;->getPageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Music_Mine_SubPage_Buy"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->reportPageExposure(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
