.class public Lcom/xiaopeng/musicradio/commonui/navigation/MusicNavFragment;
.super Lcom/xiaopeng/musicradio/commonui/vui/DeskVuiFragment;
.source "MusicNavFragment.java"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/common/nav_fragment"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicNavFragment"


# instance fields
.field private mNavFragmentManager:Lcom/xiaopeng/musicradio/commonui/navigation/c;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/vui/DeskVuiFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected findView()V
    .locals 4

    .line 30
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/navigation/MusicNavFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Laqv$d;->nav_host_fragment_common:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 31
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/navigation/MusicNavFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "bundle_path"

    .line 32
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 33
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/musicradio/commonui/navigation/MusicNavFragment;->path:Ljava/lang/String;

    .line 34
    new-instance v1, Lcom/xiaopeng/musicradio/commonui/navigation/c;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/navigation/MusicNavFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/commonui/navigation/MusicNavFragment;->path:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lcom/xiaopeng/musicradio/commonui/navigation/c;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/commonui/navigation/MusicNavFragment;->mNavFragmentManager:Lcom/xiaopeng/musicradio/commonui/navigation/c;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/navigation/MusicNavFragment;->mNavFragmentManager:Lcom/xiaopeng/musicradio/commonui/navigation/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " context = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/navigation/MusicNavFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicNavFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 25
    sget v0, Laqv$e;->fragment_music_nav:I

    return v0
.end method

.method public needCacheView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .line 58
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/DeskVuiFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/navigation/MusicNavFragment;->mNavFragmentManager:Lcom/xiaopeng/musicradio/commonui/navigation/c;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/navigation/MusicNavFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/navigation/MusicNavFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/commonui/navigation/c;->a(Landroid/content/Context;Landroid/app/Activity;)V

    :cond_0
    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/navigation/MusicNavFragment;->mNavFragmentManager:Lcom/xiaopeng/musicradio/commonui/navigation/c;

    .line 67
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/DeskVuiFragment;->onDestroyView()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 92
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/DeskVuiFragment;->onHiddenChanged(Z)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 82
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/DeskVuiFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 72
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/DeskVuiFragment;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 87
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/DeskVuiFragment;->onStop()V

    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method public setMenuVisibility(Z)V
    .locals 0

    .line 77
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/DeskVuiFragment;->setMenuVisibility(Z)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 97
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/DeskVuiFragment;->setUserVisibleHint(Z)V

    return-void
.end method

.method protected setView()V
    .locals 0

    return-void
.end method

.method protected shouldHandleBackPress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
