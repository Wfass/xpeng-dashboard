.class public abstract Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;
.super Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentation;
.source "BaseFragment.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseFragment"


# instance fields
.field private isRestoreFromMemory:Z

.field protected mActivity:Landroid/app/Activity;

.field protected mContentView:Landroid/view/View;

.field protected mHandler:Landroid/os/Handler;

.field private mViewLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentation;-><init>()V

    .line 37
    new-instance v0, Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->mViewLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->isRestoreFromMemory:Z

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;)Lcom/xiaopeng/musicradio/widget/lifecycle/i;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->mViewLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    return-object p0
.end method

.method private registerLifecycleView(Landroid/view/LayoutInflater;)V
    .locals 1

    .line 79
    new-instance v0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment$2;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment$2;-><init>(Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;Landroid/view/LayoutInflater;)V

    invoke-static {p1, v0}, Lfo;->a(Landroid/view/LayoutInflater;Lfp;)V

    return-void
.end method


# virtual methods
.method public abstract findView()V
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract getContainerViewId()I
.end method

.method public abstract getContentViewId()I
.end method

.method public getEnterExitAnimation()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTagText()Ljava/lang/String;
    .locals 1

    .line 199
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTopVisibleFragment()Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;
    .locals 1

    .line 326
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/b;->a(Landroidx/fragment/app/FragmentManager;)Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public abstract initBefore()V
.end method

.method public isAttached()Z
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract isCanBackDrawView()Z
.end method

.method public isRestoreFromMemory()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->isRestoreFromMemory:Z

    return v0
.end method

.method public isViewDestroyed()Z
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract needCacheInMemory()Z
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 169
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentation;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 162
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentation;->onAttach(Landroid/app/Activity;)V

    .line 163
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public abstract onBackPressed()Z
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentation;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->isRestoreFromMemory:Z

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->initBefore()V

    .line 54
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 55
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->registerLifecycleView(Landroid/view/LayoutInflater;)V

    .line 56
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->getContentViewId()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->mContentView:Landroid/view/View;

    .line 57
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->findView()V

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->isCanBackDrawView()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment$1;

    invoke-direct {p2, p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment$1;-><init>(Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->setView()V

    .line 68
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->setListener()V

    .line 69
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->mViewLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onCreateView()V

    .line 70
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->mContentView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 145
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentation;->onDestroy()V

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->mViewLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onDestroy()V

    .line 148
    iput-object v1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->mContentView:Landroid/view/View;

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 133
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentation;->onDestroyView()V

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->mViewLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onDestroyView()V

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 137
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->mContentView:Landroid/view/View;

    .line 140
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/ac;->a(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 175
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentation;->onDetach()V

    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 121
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentation;->onPause()V

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->mViewLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 115
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentation;->onResume()V

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->mViewLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 109
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentation;->onStart()V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->mViewLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 127
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentation;->onStop()V

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->mViewLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onStop()V

    return-void
.end method

.method public onSupportInvisible()V
    .locals 1

    .line 188
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentation;->onSupportInvisible()V

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->mViewLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onSupportInvisible()V

    return-void
.end method

.method public onSupportVisible()V
    .locals 1

    .line 182
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentation;->onSupportVisible()V

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->mViewLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onSupportVisible()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 75
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentation;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public abstract setListener()V
.end method

.method public abstract setView()V
.end method

.method public switchFragment(Ljava/lang/Class;Landroid/os/Bundle;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;",
            ">;",
            "Landroid/os/Bundle;",
            "ZZ)V"
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 231
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->switchFragment(Ljava/lang/Class;Ljava/lang/Class;Landroid/os/Bundle;ZZ)V

    return-void
.end method

.method public switchFragment(Ljava/lang/Class;Ljava/lang/Class;Landroid/os/Bundle;ZZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;",
            ">;",
            "Landroid/os/Bundle;",
            "ZZ)V"
        }
    .end annotation

    if-eqz p5, :cond_0

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    move-object p2, p0

    goto :goto_0

    .line 250
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/b;->a(Ljava/lang/Class;Landroidx/fragment/app/FragmentManager;)Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;

    move-result-object p2

    .line 251
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/b;->a(Ljava/lang/Class;Landroidx/fragment/app/FragmentManager;)Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 252
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->getTagText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->getTagText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_3

    .line 255
    :cond_2
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->getContainerViewId()I

    move-result v0

    .line 257
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 258
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/p;

    move-result-object v2

    .line 259
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->getEnterExitAnimation()[I

    move-result-object v3

    if-eqz v3, :cond_3

    .line 260
    array-length v4, v3

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    const/16 v4, 0x1001

    .line 261
    invoke-virtual {v2, v4}, Landroidx/fragment/app/p;->c(I)Landroidx/fragment/app/p;

    .line 262
    new-instance v4, Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    const/4 v7, 0x2

    aget v7, v3, v7

    const/4 v8, 0x3

    aget v3, v3, v8

    invoke-direct {v4, v5, v6, v7, v3}, Lme/yokeyword/fragmentation/anim/FragmentAnimator;-><init>(IIII)V

    invoke-virtual {p1, v4}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->setFragmentAnimator(Lme/yokeyword/fragmentation/anim/FragmentAnimator;)V

    .line 264
    :cond_3
    invoke-virtual {p1, p3}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 268
    :try_start_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->isAdded()Z

    move-result p3

    if-nez p3, :cond_7

    .line 269
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->getTagText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p3

    if-nez p3, :cond_7

    if-eqz p5, :cond_5

    if-eqz p2, :cond_5

    .line 271
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->needCacheInMemory()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 272
    invoke-virtual {v2, p2}, Landroidx/fragment/app/p;->b(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;

    goto :goto_1

    .line 274
    :cond_4
    invoke-virtual {v2, p2}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;

    .line 278
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->getTagText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v0, p1, p2}, Landroidx/fragment/app/p;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/p;

    if-eqz p4, :cond_6

    .line 280
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->getTagText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/fragment/app/p;->a(Ljava/lang/String;)Landroidx/fragment/app/p;

    .line 282
    :cond_6
    invoke-virtual {v2}, Landroidx/fragment/app/p;->c()I

    .line 283
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    goto :goto_3

    :cond_7
    if-eqz p5, :cond_9

    if-eqz p2, :cond_9

    .line 289
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->needCacheInMemory()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 290
    invoke-virtual {v2, p2}, Landroidx/fragment/app/p;->b(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;

    goto :goto_2

    .line 292
    :cond_8
    invoke-virtual {v2, p2}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;

    .line 295
    :cond_9
    :goto_2
    invoke-virtual {v2, p1}, Landroidx/fragment/app/p;->c(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;

    if-eqz p4, :cond_a

    .line 297
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->getTagText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/fragment/app/p;->a(Ljava/lang/String;)Landroidx/fragment/app/p;

    .line 299
    :cond_a
    invoke-virtual {v2}, Landroidx/fragment/app/p;->c()I

    .line 300
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 303
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_3
    return-void
.end method

.method public switchFragment(Ljava/lang/Class;Ljava/lang/Class;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;",
            ">;Z)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    .line 220
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->switchFragment(Ljava/lang/Class;Ljava/lang/Class;Landroid/os/Bundle;ZZ)V

    return-void
.end method
