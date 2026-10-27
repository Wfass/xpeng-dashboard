.class public Lcom/xiaopeng/musicradio/music/rank/main/view/QQRankMainFragment;
.super Lcom/xiaopeng/musicradio/music/rank/main/view/MsRankMainFragment;
.source "QQRankMainFragment.java"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    extras = 0x1
    path = "/music/fragment/qqrank"
.end annotation


# instance fields
.field private mTvTitle:Lcom/xiaopeng/xui/widget/XTextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/rank/main/view/MsRankMainFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected findView()V
    .locals 2

    .line 27
    sget v0, Lbez$d;->rank_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/rank/main/view/QQRankMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/main/view/QQRankMainFragment;->mRankLayout:Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;

    .line 28
    sget v0, Lbez$d;->title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/rank/main/view/QQRankMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/main/view/QQRankMainFragment;->mTvTitle:Lcom/xiaopeng/xui/widget/XTextView;

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/main/view/QQRankMainFragment;->mRankLayout:Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/rank/main/view/QQRankMainFragment;->getAccountType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->setAccountType(I)V

    .line 30
    sget v0, Lbez$d;->configuration_changed_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/rank/main/view/QQRankMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/main/view/QQRankMainFragment;->mConfigurationChangedView:Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    return-void
.end method

.method protected getAccountType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getContentViewId()I
    .locals 1

    .line 45
    sget v0, Lbez$f;->qq_fragment_rank:I

    return v0
.end method

.method protected getFragmentPath()Ljava/lang/String;
    .locals 1

    const-string v0, "/music/fragment/qqrank"

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QQ"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/musicradio/vui/c;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/rank/main/view/MsRankMainFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onMusicAuthCheck(I)V
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/rank/main/view/QQRankMainFragment;->getAccountType()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 56
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/rank/main/view/QQRankMainFragment;->getAccountType()I

    move-result v0

    invoke-virtual {p1, v0}, Lbdm;->a(I)Lbeg;

    move-result-object p1

    invoke-interface {p1}, Lbeg;->g()Z

    move-result p1

    if-nez p1, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/rank/main/view/QQRankMainFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/rank/main/view/QQRankMainFragment;->getFragmentPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lbni;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public reviewOnScreenChange()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/main/view/QQRankMainFragment;->mTvTitle:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/rank/main/view/QQRankMainFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    return-void
.end method

.method protected setView()V
    .locals 0

    .line 39
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/rank/main/view/MsRankMainFragment;->setView()V

    .line 40
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/rank/main/view/QQRankMainFragment;->reviewOnScreenChange()V

    return-void
.end method
