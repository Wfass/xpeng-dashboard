.class public Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;
.super Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;
.source "HomeMainFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/home/view/a;
.implements Lcom/xiaopeng/musicradio/music/main/view/a;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/home/homemain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment<",
        "Lcom/xiaopeng/musicradio/home/view/a;",
        "Lcom/xiaopeng/musicradio/home/presenter/HomeMainPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/home/view/a;",
        "Lcom/xiaopeng/musicradio/music/main/view/a;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HomeMainFragment"


# instance fields
.field protected mHandler:Landroid/os/Handler;

.field private mIsResume:Z

.field private mNavFragmentManager:Lcom/xiaopeng/musicradio/commonui/navigation/c;

.field protected mScreenState:Lcom/xiaopeng/musicradio/widget/k;

.field private mStubRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mWindowFocus:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;-><init>()V

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->mIsResume:Z

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;)Z
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->isValidState()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->showMain()V

    return-void
.end method

.method private doIdleTask()V
    .locals 0

    .line 187
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->loadSaleData()V

    .line 188
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->preLoadPlayerView()V

    return-void
.end method

.method private initDelayView()V
    .locals 3

    .line 144
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/c;->a()Lcom/xiaopeng/musicradio/utils/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/c;->a()Lcom/xiaopeng/musicradio/utils/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/main/a$d;->vs_small_player_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 146
    instance-of v1, v0, Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    .line 147
    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 148
    check-cast v0, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initDelayView: ======= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->mIsResume:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HomeMainFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->mIsResume:Z

    if-nez v1, :cond_0

    const-string v1, "initDelayView: ===== "

    .line 151
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->getViewLifecycleOwner()Landroidx/lifecycle/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onPause(Landroidx/lifecycle/n;)V

    :cond_0
    return-void
.end method

.method private isValidState()Z
    .locals 1

    .line 180
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$0ZbPcouxoSsiuiBZYCGbvJPDSRo(Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->doIdleTask()V

    return-void
.end method

.method private loadSaleData()V
    .locals 2

    .line 159
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbsi;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsi;

    if-eqz v0, :cond_0

    .line 161
    invoke-interface {v0}, Lbsi;->loadSaleDataV2()V

    :cond_0
    return-void
.end method

.method private onNavigation(Landroid/content/Intent;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "xui_media_enter_request"

    .line 126
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNavigation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "HomeMainFragment"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "path"

    .line 133
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    const-string v1, "params"

    .line 138
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 139
    iget-object v1, p0, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->mNavFragmentManager:Lcom/xiaopeng/musicradio/commonui/navigation/c;

    invoke-virtual {v1, v0, p1}, Lcom/xiaopeng/musicradio/commonui/navigation/c;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private preLoadPlayerView()V
    .locals 5

    .line 192
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/c;->a()Lcom/xiaopeng/musicradio/utils/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/c;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 195
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/c;->a()Lcom/xiaopeng/musicradio/utils/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/utils/c;->a(Z)V

    .line 196
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/ae;->a()Lcom/xiaopeng/musicradio/utils/ae;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x7

    new-array v3, v3, [I

    sget v4, Lcom/xiaopeng/musicradio/main/a$e;->activity_player:I

    aput v4, v3, v1

    const/4 v1, 0x1

    sget v4, Lcom/xiaopeng/musicradio/main/a$e;->layout_new_player_common:I

    aput v4, v3, v1

    const/4 v1, 0x2

    sget v4, Lcom/xiaopeng/musicradio/main/a$e;->layout_player_album:I

    aput v4, v3, v1

    const/4 v1, 0x3

    sget v4, Lcom/xiaopeng/musicradio/main/a$e;->layout_player_info:I

    aput v4, v3, v1

    const/4 v1, 0x4

    sget v4, Lcom/xiaopeng/musicradio/main/a$e;->layout_to_player_info:I

    aput v4, v3, v1

    const/4 v1, 0x5

    sget v4, Lcom/xiaopeng/musicradio/main/a$e;->layout_player_music_tags:I

    aput v4, v3, v1

    const/4 v1, 0x6

    sget v4, Lcom/xiaopeng/musicradio/main/a$e;->layout_player_music_tags:I

    aput v4, v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/musicradio/utils/ae;->a(Landroid/view/LayoutInflater;[I)V

    return-void
.end method

.method private showMain()V
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->mNavFragmentManager:Lcom/xiaopeng/musicradio/commonui/navigation/c;

    if-nez v0, :cond_1

    .line 97
    sget v0, Lcom/xiaopeng/musicradio/main/a$d;->stub_home:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 99
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/main/a$d;->nav_host_fragment:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 102
    new-instance v1, Lcom/xiaopeng/musicradio/commonui/navigation/c;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "/home/homefragment"

    invoke-direct {v1, v2, v0, v3}, Lcom/xiaopeng/musicradio/commonui/navigation/c;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->mNavFragmentManager:Lcom/xiaopeng/musicradio/commonui/navigation/c;

    .line 103
    sget v0, Lcom/xiaopeng/musicradio/main/a$d;->recycler_stub:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->mStubRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 104
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->onNavigation(Landroid/content/Intent;)V

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 107
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->initDelayView()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->createPresenter()Lcom/xiaopeng/musicradio/home/presenter/HomeMainPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/home/presenter/HomeMainPresenter;
    .locals 1

    .line 58
    new-instance v0, Lcom/xiaopeng/musicradio/home/presenter/HomeMainPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/home/presenter/HomeMainPresenter;-><init>()V

    return-object v0
.end method

.method public findView()V
    .locals 0

    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 63
    sget v0, Lcom/xiaopeng/musicradio/main/a$e;->fragment_home_main:I

    return v0
.end method

.method public hideMainLoading()V
    .locals 0

    return-void
.end method

.method public onAppFirstFrameComplete()V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 72
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 73
    iget-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 236
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "HomeMainFragment.onCreate"

    .line 237
    invoke-static {p1}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->collect(Ljava/lang/String;)V

    .line 239
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 250
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->onDestroy()V

    const/4 v0, 0x0

    .line 253
    invoke-static {v0}, Lcom/xiaopeng/musicradio/account/qlogin/g;->a(Z)V

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->mStubRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lbrs;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 256
    invoke-static {}, Laqx;->a()Laqx;

    move-result-object v0

    invoke-virtual {v0}, Laqx;->b()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 244
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->onDestroyView()V

    const-string v0, "HomeMainFragment"

    const-string v1, "onDestroyView: ===== "

    .line 245
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onIdleViewInit()V
    .locals 1

    .line 274
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/c;->a()Lcom/xiaopeng/musicradio/utils/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/c;->f()V

    .line 275
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->initDelayView()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 116
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "HomeMainFragment"

    const-string v1, "onNewIntent: ========"

    .line 117
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->onNavigation(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 218
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->onPause()V

    const/4 v0, 0x0

    .line 219
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->mIsResume:Z

    .line 220
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->mWindowFocus:Z

    const-string v0, "HomeMainFragment"

    const-string v1, "onPause: =========== "

    .line 221
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 208
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->onResume()V

    const/4 v0, 0x1

    .line 209
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->mIsResume:Z

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume: isComplete = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/br;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HomeMainFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance v0, Lcom/xiaopeng/musicradio/home/view/-$$Lambda$HomeMainFragment$0ZbPcouxoSsiuiBZYCGbvJPDSRo;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/home/view/-$$Lambda$HomeMainFragment$0ZbPcouxoSsiuiBZYCGbvJPDSRo;-><init>(Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;)V

    invoke-static {v0}, Lbql;->i(Ljava/lang/Runnable;)V

    .line 213
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;->getInstance()Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;->setBluetoothScreenId(I)V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 78
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->onStart()V

    const-string v0, "HomeMainFragment"

    const-string v1, "onStart: ====== "

    .line 79
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sget-boolean v0, Lcom/xiaopeng/musicradio/MusicApp;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment$1;-><init>(Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->hideMainLoading()V

    .line 91
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->showMain()V

    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 226
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->onStop()V

    const-string v0, "HomeMainFragment"

    const-string v1, "onStop: ===== "

    .line 227
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public selectMenu(I)V
    .locals 0

    return-void
.end method

.method public setListener()V
    .locals 0

    return-void
.end method

.method public setView()V
    .locals 0

    return-void
.end method

.method protected shouldHandleBackPress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
