.class public abstract Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity;
.super Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;
.source "BaseActivity.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/widget/lifecycle/f;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private isRestoreFromMemory:Z

.field private mContentView:Landroid/view/View;

.field private mViewLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;-><init>()V

    .line 15
    new-instance v0, Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity;->mViewLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity;->isRestoreFromMemory:Z

    return-void
.end method


# virtual methods
.method public abstract findView()V
.end method

.method public finish(II)V
    .locals 0

    .line 104
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;->finish()V

    .line 105
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected getContentView()Landroid/view/View;
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity;->getContentViewId()I

    move-result v0

    if-lez v0, :cond_1

    .line 120
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity;->mContentView:Landroid/view/View;

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity;->mContentView:Landroid/view/View;

    return-object v0

    .line 123
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getContentViewId() must return the resource id > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract getContentViewId()I
.end method

.method public getTagText()Ljava/lang/String;
    .locals 1

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract isCanBackDrawView()Z
.end method

.method public isRestoreFromMemory()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity;->isRestoreFromMemory:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 99
    invoke-super {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity;->mViewLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 30
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 31
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity;->requestWindowFeature(I)Z

    .line 32
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity;->supportRequestWindowFeature(I)Z

    if-eqz p1, :cond_0

    .line 34
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity;->isRestoreFromMemory:Z

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 37
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity;->findView()V

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity;->isCanBackDrawView()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 39
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity$1;-><init>(Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity;->setView()V

    .line 48
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity;->setListener()V

    .line 50
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity;->mViewLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onCreate()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 87
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;->onDestroy()V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity;->mViewLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity;->mViewLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 74
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;->onPause()V

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity;->mViewLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onSupportInvisible()V

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity;->mViewLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 67
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;->onResume()V

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity;->mViewLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onResume()V

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity;->mViewLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onSupportVisible()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 61
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;->onStart()V

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity;->mViewLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 81
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;->onStop()V

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity;->mViewLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onStop()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 93
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;->onWindowFocusChanged(Z)V

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity;->mViewLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public registerSubView(Lcom/xiaopeng/musicradio/widget/lifecycle/e;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity;->mViewLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->registerSubView(Lcom/xiaopeng/musicradio/widget/lifecycle/e;)V

    return-void
.end method

.method public abstract setListener()V
.end method

.method public abstract setView()V
.end method

.method public unregisterSubView(Lcom/xiaopeng/musicradio/widget/lifecycle/e;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity;->mViewLifecycleDelegate:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->unregisterSubView(Lcom/xiaopeng/musicradio/widget/lifecycle/e;)V

    return-void
.end method
