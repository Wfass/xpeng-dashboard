.class public Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;
.super Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;
.source "PlayerFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/playercomponent/big/view/d;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/player/player"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment<",
        "Lcom/xiaopeng/musicradio/playercomponent/big/view/d;",
        "Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/playercomponent/big/view/d;"
    }
.end annotation


# static fields
.field public static final FLAG_RECEIVER_INCLUDE_BACKGROUND:I = 0x1000000

.field private static final TAG:Ljava/lang/String; = "PlayerFragment"

.field private static final sDspShakeId:I = 0x20850


# instance fields
.field private mBgEff:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;

.field private mCloseBtn:Landroid/view/View;

.field private mCloseImg:Lcom/xiaopeng/xui/widget/XImageButton;

.field private mDsp:Lcom/xiaopeng/xui/widget/XButton;

.field private mEffImg:Lcom/xiaopeng/xui/widget/XImageView;

.field private mHasFinish:Z

.field private mLastType:I

.field private mScreenState:Lcom/xiaopeng/musicradio/widget/k;

.field private mSwipeLayout:Lcom/xiaopeng/musicradio/view/SwipeBackLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;-><init>()V

    const/4 v0, -0x2

    .line 64
    iput v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->mLastType:I

    .line 77
    new-instance v0, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    return-void
.end method

.method static synthetic access$002(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->mHasFinish:Z

    return p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;)Lcom/xiaopeng/musicradio/widget/k;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->finish()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->doBackAni()V

    return-void
.end method

.method private doBackAni()V
    .locals 2

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doBackAni: ====== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->mHasFinish:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->mHasFinish:Z

    if-eqz v0, :cond_0

    return-void

    .line 167
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->finish()V

    return-void
.end method

.method private finish()V
    .locals 2

    const-string v0, "PlayerFragment"

    const-string v1, "finish: ====="

    .line 171
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 172
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->mHasFinish:Z

    .line 173
    invoke-static {}, Lbni;->a()V

    return-void
.end method

.method private getBuildViewList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 329
    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->mCloseBtn:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private getCurrentPlayerFragment()Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBaseFragment;
    .locals 3

    .line 231
    iget v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->mLastType:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 232
    invoke-static {}, Lblg;->a()Lblg;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->mLastType:I

    invoke-virtual {v0, v2}, Lblg;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    .line 234
    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    instance-of v2, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBaseFragment;

    if-eqz v2, :cond_0

    .line 236
    check-cast v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBaseFragment;

    return-object v0

    :cond_0
    return-object v1
.end method

.method private isFragmentOrParentDestroy(Landroidx/fragment/app/Fragment;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 220
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 225
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->isFragmentOrParentDestroy(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private navigateFrom3rd(Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 290
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "navigateFrom3rd: action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " extra = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PlayerFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment$4;

    invoke-direct {v1, p0, p1, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment$4;-><init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-static {v1}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public colseBtnState(Z)V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->mCloseBtn:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->createPresenter()Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;
    .locals 1

    .line 97
    new-instance v0, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;-><init>()V

    return-object v0
.end method

.method public doShowEff(Z)V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->mEffImg:Lcom/xiaopeng/xui/widget/XImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    return-void
.end method

.method public findView()V
    .locals 2

    .line 108
    sget v0, Lble$d;->layout_swipe:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->mSwipeLayout:Lcom/xiaopeng/musicradio/view/SwipeBackLayout;

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->mSwipeLayout:Lcom/xiaopeng/musicradio/view/SwipeBackLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment$1;-><init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->setOnSwipeBackListener(Lcom/xiaopeng/musicradio/view/SwipeBackLayout$b;)V

    .line 122
    sget v0, Lble$d;->view_back:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->mCloseBtn:Landroid/view/View;

    .line 123
    sget v0, Lble$d;->img_eff:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->mEffImg:Lcom/xiaopeng/xui/widget/XImageView;

    .line 124
    sget v0, Lble$d;->btn_dsp:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->mDsp:Lcom/xiaopeng/xui/widget/XButton;

    .line 125
    sget v0, Lble$d;->view_player_eff:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->mBgEff:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;

    .line 126
    sget v0, Lble$d;->btn_back:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->mCloseImg:Lcom/xiaopeng/xui/widget/XImageButton;

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->mCloseBtn:Landroid/view/View;

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XTouchUtils;->enlargeTouchDelegate(Landroid/view/View;I)V

    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 102
    sget v0, Lble$e;->activity_player:I

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 312
    sget-object v0, Lcom/xiaopeng/musicradio/vui/c;->bA:Ljava/lang/String;

    return-object v0
.end method

.method protected handleInflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 84
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/ae;->a()Lcom/xiaopeng/musicradio/utils/ae;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->getContentViewId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/utils/ae;->b(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 86
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->handleInflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 88
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->enable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "PlayerFragment Layout.inflate.cost: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PlayerFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v2
.end method

.method public isMainScene()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNight()Z
    .locals 1

    .line 177
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xui/theme/XThemeManager;->isNight(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onBuildScene()V
    .locals 5

    .line 322
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->getBuildViewList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->getSubSceneList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->isMainScene()Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 182
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 183
    invoke-static {p1}, Lapo;->b(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "PlayerFragment"

    const-string v0, "onConfigurationChanged: ========"

    .line 184
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 265
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "PlayerFragment.onCreate"

    .line 266
    invoke-static {p1}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->collect(Ljava/lang/String;)V

    .line 267
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/c;->a()Lcom/xiaopeng/musicradio/utils/c;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/utils/c;->a(Z)V

    .line 268
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->b()V

    .line 269
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->navigateFrom3rd(Landroid/content/Intent;)V

    const-string p1, "PlayerFragment"

    const-string v0, "onCreate: ====== "

    .line 270
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 397
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->onDestroy()V

    const-string v0, "PlayerFragment"

    const-string v1, "onDestroy: ==="

    .line 398
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 389
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->onDestroyView()V

    .line 390
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object v0

    const-string v1, "VIEW_PLAY_LRC"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/common/n;->b(Ljava/lang/String;)V

    .line 391
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object v0

    const-string v1, "VIEW_PLAY_LIST"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/common/n;->b(Ljava/lang/String;)V

    const-string v0, "PlayerFragment"

    const-string v1, "onDestroyView: "

    .line 392
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 281
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->onNewIntent(Landroid/content/Intent;)V

    .line 282
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->navigateFrom3rd(Landroid/content/Intent;)V

    const-string p1, "PlayerFragment"

    const-string v0, "onNewIntent: ===="

    .line 283
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 380
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->onPause()V

    const-string v0, "PlayerFragment"

    const-string v1, "onPause: ====="

    .line 381
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object v0

    const-string v1, "VIEW_PLAYER"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/common/n;->b(Ljava/lang/String;)V

    .line 383
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object v0

    const-string v1, "VIEW_PLAY_LRC"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/common/n;->b(Ljava/lang/String;)V

    .line 384
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object v0

    const-string v1, "VIEW_PLAY_LIST"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/common/n;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 372
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->onResume()V

    const-string v0, "PlayerFragment"

    const-string v1, "onResume: ===== "

    .line 373
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object v0

    const-string v1, "VIEW_PLAYER"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/common/n;->a(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->mBgEff:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->d()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 275
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->onStart()V

    const-string v0, "PlayerFragment"

    const-string v1, "onStart: ===="

    .line 276
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 365
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->onStop()V

    .line 366
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object v0

    const-string v1, "VIEW_PLAY_LRC"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/common/n;->b(Ljava/lang/String;)V

    .line 367
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object v0

    const-string v1, "VIEW_PLAY_LIST"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/common/n;->b(Ljava/lang/String;)V

    return-void
.end method

.method public openDsp()V
    .locals 2

    .line 336
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.xiaopeng.intent.action.POPUP_SOUND_EFFECT"

    .line 337
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000000

    .line 338
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 339
    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public pauseEff()V
    .locals 0

    return-void
.end method

.method public refreshBg(Landroid/graphics/Bitmap;ZZ)V
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->mBgEff:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->a(Landroid/graphics/Bitmap;ZZZ)V

    return-void
.end method

.method public refreshColor(I)V
    .locals 7

    .line 350
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lapo;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 352
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 353
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 354
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    const-wide v3, 0x3fe6666666666666L    # 0.7

    int-to-double v5, p1

    mul-double/2addr v5, v3

    double-to-int p1, v5

    .line 355
    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    .line 357
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->mCloseImg:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/by;->a(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 359
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->mCloseImg:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lble$a;->x_color_text_1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/by;->a(Landroid/widget/ImageView;I)V

    :goto_0
    return-void
.end method

.method public resumeEff()V
    .locals 0

    return-void
.end method

.method public setDragScrollableChildEnable(Z)V
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->mSwipeLayout:Lcom/xiaopeng/musicradio/view/SwipeBackLayout;

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->setDragScrollableChildEnable(Z)V

    :cond_0
    return-void
.end method

.method public setListener()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->mCloseBtn:Landroid/view/View;

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment$3;-><init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setView()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->mDsp:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment$2;-><init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public switchAudio(I)V
    .locals 4

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchAudio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "switchAudio: destroy======"

    .line 193
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 196
    :cond_0
    invoke-direct {p0, p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->isFragmentOrParentDestroy(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "switchAudio: isFragmentOrParentDestroy destroy======"

    .line 197
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 200
    :cond_1
    iget v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->mLastType:I

    if-ne v0, p1, :cond_2

    return-void

    .line 203
    :cond_2
    iput p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->mLastType:I

    .line 204
    invoke-static {}, Lblg;->a()Lblg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lblg;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 205
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 206
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 207
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/p;

    move-result-object v0

    if-eqz v2, :cond_3

    .line 209
    invoke-virtual {v0, v2}, Landroidx/fragment/app/p;->c(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;

    goto :goto_0

    .line 211
    :cond_3
    invoke-static {}, Lpp;->a()Lpp;

    move-result-object v2

    invoke-virtual {v2, p1}, Lpp;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 212
    sget v3, Lble$d;->layout_player:I

    invoke-virtual {v0, v3, v2, p1}, Landroidx/fragment/app/p;->b(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/p;

    .line 214
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchAudio:path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {v0}, Landroidx/fragment/app/p;->c()I

    return-void
.end method
