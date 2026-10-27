.class public Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;
.super Lcom/xiaopeng/xui/widget/XFrameLayout;
.source "BaseFrameLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/widget/lifecycle/e;
.implements Lcom/xiaopeng/musicradio/widget/lifecycle/f;
.implements Lcom/xiaopeng/musicradio/widget/lifecycle/g;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected mHandler:Landroid/os/Handler;

.field private mIsDiableTouch:Z

.field protected mLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->mHandler:Landroid/os/Handler;

    .line 24
    new-instance p1, Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->mLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->mIsDiableTouch:Z

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->mHandler:Landroid/os/Handler;

    .line 24
    new-instance p1, Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->mLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->mIsDiableTouch:Z

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->mHandler:Landroid/os/Handler;

    .line 24
    new-instance p1, Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->mLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->mIsDiableTouch:Z

    .line 39
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->init()V

    return-void
.end method

.method private init()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected checkLayoutStatus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public disableTouch(Z)V
    .locals 0

    .line 174
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->mIsDiableTouch:Z

    return-void
.end method

.method public hasRegist()Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->mLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->hasRegist()Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->mLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 72
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onAttachedToWindow()V

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->mLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->a(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->mLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onCreate()V

    return-void
.end method

.method public onCreateView()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->mLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onCreateView()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->mLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->mLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onDestroyView()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 78
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onDetachedFromWindow()V

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->mLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->b(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 179
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->mIsDiableTouch:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 182
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->mLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onParentAnimationEnd()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->mLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onParentAnimationEnd()V

    return-void
.end method

.method public onParentAnimationStart()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->mLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onParentAnimationStart()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->mLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->mLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->mLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->mLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onStop()V

    return-void
.end method

.method public onSupportInvisible()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->mLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onSupportInvisible()V

    return-void
.end method

.method public onSupportVisible()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->mLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onSupportVisible()V

    return-void
.end method

.method public register()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->mLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->register()V

    return-void
.end method

.method public registerSubView(Lcom/xiaopeng/musicradio/widget/lifecycle/e;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->mLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->registerSubView(Lcom/xiaopeng/musicradio/widget/lifecycle/e;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 146
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->getVisibility()I

    move-result v0

    .line 147
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 148
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->checkLayoutStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    .line 150
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/bz;->a(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->onSupportVisible()V

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->onSupportInvisible()V

    :cond_1
    :goto_0
    return-void
.end method

.method public unregister()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->mLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->unregister()V

    return-void
.end method

.method public unregisterSubView(Lcom/xiaopeng/musicradio/widget/lifecycle/e;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->mLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->unregisterSubView(Lcom/xiaopeng/musicradio/widget/lifecycle/e;)V

    return-void
.end method
