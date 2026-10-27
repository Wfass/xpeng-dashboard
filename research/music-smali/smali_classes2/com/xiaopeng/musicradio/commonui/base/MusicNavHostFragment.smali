.class public Lcom/xiaopeng/musicradio/commonui/base/MusicNavHostFragment;
.super Landroidx/navigation/fragment/NavHostFragment;
.source "MusicNavHostFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicNavHostFragment"


# instance fields
.field private mHasSelfPause:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroidx/navigation/fragment/NavHostFragment;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/commonui/base/MusicNavHostFragment;->mHasSelfPause:Z

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 5

    .line 44
    invoke-super {p0}, Landroidx/navigation/fragment/NavHostFragment;->onPause()V

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicNavHostFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/MusicNavHostFragment;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v0

    .line 49
    iget-boolean v2, p0, Lcom/xiaopeng/musicradio/commonui/base/MusicNavHostFragment;->mHasSelfPause:Z

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroidx/lifecycle/j;->getCurrentState()Landroidx/lifecycle/j$b;

    move-result-object v0

    sget-object v2, Landroidx/lifecycle/j$b;->RESUMED:Landroidx/lifecycle/j$b;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/commonui/base/MusicNavHostFragment;->mHasSelfPause:Z

    .line 51
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/MusicNavHostFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 53
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 54
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/j;->getCurrentState()Landroidx/lifecycle/j$b;

    move-result-object v3

    sget-object v4, Landroidx/lifecycle/j$b;->RESUMED:Landroidx/lifecycle/j$b;

    if-ne v3, v4, :cond_0

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPause1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->onPause()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 26
    invoke-super {p0}, Landroidx/navigation/fragment/NavHostFragment;->onResume()V

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicNavHostFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/commonui/base/MusicNavHostFragment;->mHasSelfPause:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/commonui/base/MusicNavHostFragment;->mHasSelfPause:Z

    .line 32
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/MusicNavHostFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 34
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->onResume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 20
    invoke-super {p0, p1}, Landroidx/navigation/fragment/NavHostFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    return-void
.end method
