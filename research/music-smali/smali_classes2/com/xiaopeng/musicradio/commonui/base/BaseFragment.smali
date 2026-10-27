.class public abstract Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UIInterface:",
        "Ljava/lang/Object;",
        "Presenter:",
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "TUIInterface;>;>",
        "Landroidx/fragment/app/Fragment;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicBaseFragment"


# instance fields
.field protected mAttachedContext:Landroid/content/Context;

.field protected mFragmentContext:Lcom/xiaopeng/musicradio/commonui/base/b;

.field protected mInstanceState:Landroid/os/Bundle;

.field protected mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TPresenter;"
        }
    .end annotation
.end field

.field private mRootView:Landroid/view/View;

.field protected onBackPressedCallback:Landroidx/activity/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 73
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment$1;-><init>(Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;Z)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->onBackPressedCallback:Landroidx/activity/b;

    return-void
.end method

.method private addBackPressCallback()V
    .locals 3

    .line 50
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->shouldHandleBackPress()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->getViewLifecycleOwner()Landroidx/lifecycle/n;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->onBackPressedCallback:Landroidx/activity/b;

    invoke-virtual {v0, v1, v2}, Landroidx/activity/OnBackPressedDispatcher;->a(Landroidx/lifecycle/n;Landroidx/activity/b;)V

    :cond_0
    return-void
.end method

.method private release()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->mRootView:Landroid/view/View;

    .line 171
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->needCacheView()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 172
    iput-object v1, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->mRootView:Landroid/view/View;

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->mFragmentContext:Lcom/xiaopeng/musicradio/commonui/base/b;

    if-eqz v1, :cond_1

    .line 175
    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/commonui/base/b;->a(Landroid/view/View;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected createFragmentContext()Lcom/xiaopeng/musicradio/commonui/base/b;
    .locals 2

    .line 146
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/base/b;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/commonui/base/b;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected abstract createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPresenter;"
        }
    .end annotation
.end method

.method protected createViewAgain()V
    .locals 2

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createViewAgain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicBaseFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected createViewFirst()V
    .locals 0

    return-void
.end method

.method protected abstract findView()V
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract getContentViewId()I
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->mFragmentContext:Lcom/xiaopeng/musicradio/commonui/base/b;

    if-eqz v0, :cond_0

    return-object v0

    .line 102
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->mAttachedContext:Landroid/content/Context;

    :cond_1
    return-object v0
.end method

.method public getFragmentContext()Landroid/content/Context;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->mFragmentContext:Lcom/xiaopeng/musicradio/commonui/base/b;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method protected handleInflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 185
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->preCacheLayout()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 186
    invoke-static {}, Laqx;->a()Laqx;

    move-result-object p2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->getContentViewId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Laqx;->a(Landroid/view/LayoutInflater;Ljava/lang/Integer;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->getContentViewId()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public needCacheView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->mAttachedContext:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->mInstanceState:Landroid/os/Bundle;

    .line 44
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    if-nez p1, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 114
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreateView: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " this = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "MusicBaseFragment"

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object p3, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->mRootView:Landroid/view/View;

    if-nez p3, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->createFragmentContext()Lcom/xiaopeng/musicradio/commonui/base/b;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->mFragmentContext:Lcom/xiaopeng/musicradio/commonui/base/b;

    .line 117
    iget-object p3, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->mFragmentContext:Lcom/xiaopeng/musicradio/commonui/base/b;

    iput-object p3, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->mAttachedContext:Landroid/content/Context;

    .line 118
    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->handleInflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->mRootView:Landroid/view/View;

    .line 120
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->mRootView:Landroid/view/View;

    sget p2, Laqv$d;->tag_lifecycle_owner:I

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 121
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->mFragmentContext:Lcom/xiaopeng/musicradio/commonui/base/b;

    iget-object p2, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->mRootView:Landroid/view/View;

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/b;->a(Landroid/view/ViewGroup;)V

    .line 122
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->findView()V

    .line 123
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->setView()V

    .line 124
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->setListener()V

    .line 126
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    if-eqz p1, :cond_0

    .line 127
    invoke-virtual {p1, p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->a(Ljava/lang/Object;)V

    .line 128
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/j;->addObserver(Landroidx/lifecycle/m;)V

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->createViewFirst()V

    goto :goto_0

    .line 133
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->mFragmentContext:Lcom/xiaopeng/musicradio/commonui/base/b;

    check-cast p3, Landroid/view/ViewGroup;

    invoke-virtual {p1, p3}, Lcom/xiaopeng/musicradio/commonui/base/b;->a(Landroid/view/ViewGroup;)V

    .line 134
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->mRootView:Landroid/view/View;

    sget p2, Laqv$d;->tag_lifecycle_owner:I

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 135
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    if-eqz p1, :cond_2

    .line 136
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/j;->addObserver(Landroidx/lifecycle/m;)V

    .line 138
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->createViewAgain()V

    .line 140
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " context = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->mFragmentContext:Lcom/xiaopeng/musicradio/commonui/base/b;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->addBackPressCallback()V

    .line 142
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 157
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " context = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->mFragmentContext:Lcom/xiaopeng/musicradio/commonui/base/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicBaseFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->release()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 196
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroyView: ===="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " context = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->mFragmentContext:Lcom/xiaopeng/musicradio/commonui/base/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicBaseFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->release()V

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 164
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDetach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " context = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->mFragmentContext:Lcom/xiaopeng/musicradio/commonui/base/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicBaseFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->release()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 66
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicBaseFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->shouldHandleBackPress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->onBackPressedCallback:Landroidx/activity/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/activity/b;->a(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 57
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicBaseFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->shouldHandleBackPress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->onBackPressedCallback:Landroidx/activity/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/activity/b;->a(Z)V

    :cond_0
    return-void
.end method

.method protected popBackStack(Landroidx/activity/b;)V
    .locals 4

    .line 82
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const-string v1, " this = "

    const-string v2, "MusicBaseFragment"

    if-lez v0, :cond_0

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleOnBackPressed child pop: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleOnBackPressed self pop: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p1, v0}, Landroidx/activity/b;->a(Z)V

    :goto_0
    return-void
.end method

.method protected preCacheLayout()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract setListener()V
.end method

.method public setMenuVisibility(Z)V
    .locals 0

    .line 242
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    return-void
.end method

.method protected abstract setView()V
.end method

.method protected shouldHandleBackPress()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
