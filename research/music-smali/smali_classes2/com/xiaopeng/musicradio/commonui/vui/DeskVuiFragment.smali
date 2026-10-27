.class public abstract Lcom/xiaopeng/musicradio/commonui/vui/DeskVuiFragment;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;
.source "DeskVuiFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UIInterface:",
        "Ljava/lang/Object;",
        "Presenter:",
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "TUIInterface;>;>",
        "Lcom/xiaopeng/musicradio/commonui/base/BaseFragment<",
        "TUIInterface;TPresenter;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DeskVuiFragment"


# instance fields
.field private mHasSelfPause:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/commonui/vui/DeskVuiFragment;->mHasSelfPause:Z

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 6

    .line 60
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->onPause()V

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeskVuiFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/vui/DeskVuiFragment;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroidx/lifecycle/j;->getCurrentState()Landroidx/lifecycle/j$b;

    move-result-object v2

    sget-object v3, Landroidx/lifecycle/j$b;->RESUMED:Landroidx/lifecycle/j$b;

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    .line 66
    iput-boolean v2, p0, Lcom/xiaopeng/musicradio/commonui/vui/DeskVuiFragment;->mHasSelfPause:Z

    .line 67
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/vui/DeskVuiFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 68
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 69
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 70
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/j;->getCurrentState()Landroidx/lifecycle/j$b;

    move-result-object v4

    sget-object v5, Landroidx/lifecycle/j$b;->RESUMED:Landroidx/lifecycle/j$b;

    if-ne v4, v5, :cond_0

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPause1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->onPause()V

    goto :goto_0

    :cond_1
    const-string v2, "mObserverMap"

    .line 76
    invoke-static {v0, v2}, Lcom/xiaopeng/musicradio/utils/bf;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "mHashMap"

    .line 78
    invoke-static {v0, v2}, Lcom/xiaopeng/musicradio/utils/bf;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_3

    .line 80
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 81
    instance-of v3, v2, Lcom/xiaopeng/musicradio/commonui/lifecycle/a;

    if-eqz v3, :cond_2

    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_2

    .line 82
    move-object v3, v2

    check-cast v3, Landroid/view/View;

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPause: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 85
    check-cast v2, Lcom/xiaopeng/musicradio/commonui/lifecycle/a;

    .line 86
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/vui/DeskVuiFragment;->getViewLifecycleOwner()Landroidx/lifecycle/n;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/xiaopeng/musicradio/commonui/lifecycle/a;->onPause(Landroidx/lifecycle/n;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onResume()V
    .locals 6

    .line 25
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->onResume()V

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeskVuiFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/commonui/vui/DeskVuiFragment;->mHasSelfPause:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/commonui/vui/DeskVuiFragment;->mHasSelfPause:Z

    .line 31
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/vui/DeskVuiFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 33
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->onResume()V

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/vui/DeskVuiFragment;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v0

    const-string v2, "mObserverMap"

    .line 39
    invoke-static {v0, v2}, Lcom/xiaopeng/musicradio/utils/bf;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "mHashMap"

    .line 41
    invoke-static {v0, v2}, Lcom/xiaopeng/musicradio/utils/bf;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 43
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 44
    instance-of v3, v2, Lcom/xiaopeng/musicradio/commonui/lifecycle/a;

    if-eqz v3, :cond_1

    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 45
    move-object v3, v2

    check-cast v3, Landroid/view/View;

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResume: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 48
    check-cast v2, Lcom/xiaopeng/musicradio/commonui/lifecycle/a;

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/vui/DeskVuiFragment;->getViewLifecycleOwner()Landroidx/lifecycle/n;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/xiaopeng/musicradio/commonui/lifecycle/a;->onResume(Landroidx/lifecycle/n;)V

    goto :goto_1

    :cond_2
    return-void
.end method
