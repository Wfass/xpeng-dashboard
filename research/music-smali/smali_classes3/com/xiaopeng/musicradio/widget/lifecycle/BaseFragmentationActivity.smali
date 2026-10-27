.class public Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseFragmentationActivity.java"

# interfaces
.implements Lme/yokeyword/fragmentation/c;


# instance fields
.field final mDelegate:Lme/yokeyword/fragmentation/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 22
    new-instance v0, Lme/yokeyword/fragmentation/f;

    invoke-direct {v0, p0}, Lme/yokeyword/fragmentation/f;-><init>(Lme/yokeyword/fragmentation/c;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0, p1}, Lme/yokeyword/fragmentation/f;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public extraTransaction()Lme/yokeyword/fragmentation/a;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0}, Lme/yokeyword/fragmentation/f;->a()Lme/yokeyword/fragmentation/a;

    move-result-object v0

    return-object v0
.end method

.method public findFragment(Ljava/lang/Class;)Lme/yokeyword/fragmentation/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lme/yokeyword/fragmentation/d;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 267
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lme/yokeyword/fragmentation/g;->a(Landroidx/fragment/app/FragmentManager;Ljava/lang/Class;)Lme/yokeyword/fragmentation/d;

    move-result-object p1

    return-object p1
.end method

.method public getFragmentAnimator()Lme/yokeyword/fragmentation/anim/FragmentAnimator;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0}, Lme/yokeyword/fragmentation/f;->c()Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    move-result-object v0

    return-object v0
.end method

.method public getSupportDelegate()Lme/yokeyword/fragmentation/f;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    return-object v0
.end method

.method public getTopFragment()Lme/yokeyword/fragmentation/d;
    .locals 1

    .line 256
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lme/yokeyword/fragmentation/g;->a(Landroidx/fragment/app/FragmentManager;)Lme/yokeyword/fragmentation/d;

    move-result-object v0

    return-object v0
.end method

.method public getTopVisibleFragment()Lme/yokeyword/fragmentation/d;
    .locals 1

    .line 260
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/b;->a(Landroidx/fragment/app/FragmentManager;)Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;

    move-result-object v0

    return-object v0
.end method

.method public varargs loadMultipleRootFragment(II[Lme/yokeyword/fragmentation/d;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0, p1, p2, p3}, Lme/yokeyword/fragmentation/f;->a(II[Lme/yokeyword/fragmentation/d;)V

    return-void
.end method

.method public loadRootFragment(ILme/yokeyword/fragmentation/d;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0, p1, p2}, Lme/yokeyword/fragmentation/f;->a(ILme/yokeyword/fragmentation/d;)V

    return-void
.end method

.method public loadRootFragment(ILme/yokeyword/fragmentation/d;ZZ)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0, p1, p2, p3, p4}, Lme/yokeyword/fragmentation/f;->a(ILme/yokeyword/fragmentation/d;ZZ)V

    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0}, Lme/yokeyword/fragmentation/f;->f()V

    return-void
.end method

.method public onBackPressedSupport()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0}, Lme/yokeyword/fragmentation/f;->g()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 40
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0, p1}, Lme/yokeyword/fragmentation/f;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateFragmentAnimator()Lme/yokeyword/fragmentation/anim/FragmentAnimator;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0}, Lme/yokeyword/fragmentation/f;->d()Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0}, Lme/yokeyword/fragmentation/f;->h()V

    .line 53
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0, p1}, Lme/yokeyword/fragmentation/f;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public pop()V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0}, Lme/yokeyword/fragmentation/f;->i()V

    return-void
.end method

.method public popTo(Ljava/lang/Class;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0, p1, p2}, Lme/yokeyword/fragmentation/f;->a(Ljava/lang/Class;Z)V

    return-void
.end method

.method public popTo(Ljava/lang/Class;ZLjava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0, p1, p2, p3}, Lme/yokeyword/fragmentation/f;->a(Ljava/lang/Class;ZLjava/lang/Runnable;)V

    return-void
.end method

.method public popTo(Ljava/lang/Class;ZLjava/lang/Runnable;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z",
            "Ljava/lang/Runnable;",
            "I)V"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0, p1, p2, p3, p4}, Lme/yokeyword/fragmentation/f;->a(Ljava/lang/Class;ZLjava/lang/Runnable;I)V

    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0, p1}, Lme/yokeyword/fragmentation/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public replaceFragment(Lme/yokeyword/fragmentation/d;Z)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0, p1, p2}, Lme/yokeyword/fragmentation/f;->a(Lme/yokeyword/fragmentation/d;Z)V

    return-void
.end method

.method public setDefaultFragmentBackground(I)V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0, p1}, Lme/yokeyword/fragmentation/f;->a(I)V

    return-void
.end method

.method public setFragmentAnimator(Lme/yokeyword/fragmentation/anim/FragmentAnimator;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0, p1}, Lme/yokeyword/fragmentation/f;->a(Lme/yokeyword/fragmentation/anim/FragmentAnimator;)V

    return-void
.end method

.method public showHideFragment(Lme/yokeyword/fragmentation/d;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0, p1}, Lme/yokeyword/fragmentation/f;->a(Lme/yokeyword/fragmentation/d;)V

    return-void
.end method

.method public showHideFragment(Lme/yokeyword/fragmentation/d;Lme/yokeyword/fragmentation/d;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0, p1, p2}, Lme/yokeyword/fragmentation/f;->a(Lme/yokeyword/fragmentation/d;Lme/yokeyword/fragmentation/d;)V

    return-void
.end method

.method public start(Lme/yokeyword/fragmentation/d;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0, p1}, Lme/yokeyword/fragmentation/f;->b(Lme/yokeyword/fragmentation/d;)V

    return-void
.end method

.method public start(Lme/yokeyword/fragmentation/d;I)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0, p1, p2}, Lme/yokeyword/fragmentation/f;->a(Lme/yokeyword/fragmentation/d;I)V

    return-void
.end method

.method public startForResult(Lme/yokeyword/fragmentation/d;I)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0, p1, p2}, Lme/yokeyword/fragmentation/f;->b(Lme/yokeyword/fragmentation/d;I)V

    return-void
.end method

.method public startWithPop(Lme/yokeyword/fragmentation/d;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0, p1}, Lme/yokeyword/fragmentation/f;->c(Lme/yokeyword/fragmentation/d;)V

    return-void
.end method

.method public startWithPopTo(Lme/yokeyword/fragmentation/d;Ljava/lang/Class;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/yokeyword/fragmentation/d;",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragmentationActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0, p1, p2, p3}, Lme/yokeyword/fragmentation/f;->a(Lme/yokeyword/fragmentation/d;Ljava/lang/Class;Z)V

    return-void
.end method
