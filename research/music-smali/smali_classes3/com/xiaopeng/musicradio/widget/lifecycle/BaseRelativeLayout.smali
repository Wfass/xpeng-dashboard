.class public Lcom/xiaopeng/musicradio/widget/lifecycle/BaseRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "BaseRelativeLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/widget/lifecycle/e;
.implements Lcom/xiaopeng/musicradio/widget/lifecycle/f;
.implements Lcom/xiaopeng/musicradio/widget/lifecycle/g;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected a:Landroid/os/Handler;

.field protected b:Lcom/xiaopeng/musicradio/widget/lifecycle/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseRelativeLayout;->a:Landroid/os/Handler;

    .line 16
    new-instance p1, Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseRelativeLayout;->b:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseRelativeLayout;->a:Landroid/os/Handler;

    .line 16
    new-instance p1, Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseRelativeLayout;->b:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseRelativeLayout;->a:Landroid/os/Handler;

    .line 16
    new-instance p1, Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseRelativeLayout;->b:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    return-void
.end method


# virtual methods
.method public hasRegist()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseRelativeLayout;->b:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->hasRegist()Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseRelativeLayout;->b:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 57
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseRelativeLayout;->b:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->a(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseRelativeLayout;->b:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onCreate()V

    return-void
.end method

.method public onCreateView()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseRelativeLayout;->b:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onCreateView()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseRelativeLayout;->b:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseRelativeLayout;->b:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onDestroyView()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 63
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseRelativeLayout;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseRelativeLayout;->b:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->b(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseRelativeLayout;->b:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onParentAnimationEnd()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseRelativeLayout;->b:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onParentAnimationEnd()V

    return-void
.end method

.method public onParentAnimationStart()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseRelativeLayout;->b:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onParentAnimationStart()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseRelativeLayout;->b:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseRelativeLayout;->b:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseRelativeLayout;->b:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseRelativeLayout;->b:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onStop()V

    return-void
.end method

.method public onSupportInvisible()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseRelativeLayout;->b:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onSupportInvisible()V

    return-void
.end method

.method public onSupportVisible()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseRelativeLayout;->b:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onSupportVisible()V

    return-void
.end method

.method public register()V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseRelativeLayout;->b:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->register()V

    return-void
.end method

.method public registerSubView(Lcom/xiaopeng/musicradio/widget/lifecycle/e;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseRelativeLayout;->b:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->registerSubView(Lcom/xiaopeng/musicradio/widget/lifecycle/e;)V

    return-void
.end method

.method public unregister()V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseRelativeLayout;->b:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->unregister()V

    return-void
.end method

.method public unregisterSubView(Lcom/xiaopeng/musicradio/widget/lifecycle/e;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseRelativeLayout;->b:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->unregisterSubView(Lcom/xiaopeng/musicradio/widget/lifecycle/e;)V

    return-void
.end method
