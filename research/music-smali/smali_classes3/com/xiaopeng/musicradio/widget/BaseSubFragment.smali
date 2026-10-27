.class public abstract Lcom/xiaopeng/musicradio/widget/BaseSubFragment;
.super Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;
.source "BaseSubFragment.java"

# interfaces
.implements Lme/yokeyword/fragmentation/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UIInterface:",
        "Ljava/lang/Object;",
        "Presenter:",
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "TUIInterface;>;>",
        "Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment<",
        "TUIInterface;TPresenter;>;",
        "Lme/yokeyword/fragmentation/d;"
    }
.end annotation


# instance fields
.field protected _mActivity:Landroidx/fragment/app/FragmentActivity;

.field final mDelegate:Lme/yokeyword/fragmentation/SupportFragmentDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;-><init>()V

    .line 25
    new-instance v0, Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    invoke-direct {v0, p0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;-><init>(Lme/yokeyword/fragmentation/d;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubFragment;->mDelegate:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    return-void
.end method


# virtual methods
.method public enqueueAction(Ljava/lang/Runnable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubFragment;->mDelegate:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    invoke-virtual {v0, p1}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public extraTransaction()Lme/yokeyword/fragmentation/a;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubFragment;->mDelegate:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    invoke-virtual {v0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->a()Lme/yokeyword/fragmentation/a;

    move-result-object v0

    return-object v0
.end method

.method public findChildFragment(Ljava/lang/Class;)Lme/yokeyword/fragmentation/d;
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

    .line 360
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/BaseSubFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lme/yokeyword/fragmentation/g;->a(Landroidx/fragment/app/FragmentManager;Ljava/lang/Class;)Lme/yokeyword/fragmentation/d;

    move-result-object p1

    return-object p1
.end method

.method public getFragmentAnimator()Lme/yokeyword/fragmentation/anim/FragmentAnimator;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubFragment;->mDelegate:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    invoke-virtual {v0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->j()Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    move-result-object v0

    return-object v0
.end method

.method public getSupportDelegate()Lme/yokeyword/fragmentation/SupportFragmentDelegate;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubFragment;->mDelegate:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    return-object v0
.end method

.method protected hideSoftInput()V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubFragment;->mDelegate:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    invoke-virtual {v0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->l()V

    return-void
.end method

.method public final isSupportVisible()Z
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubFragment;->mDelegate:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    invoke-virtual {v0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->h()Z

    move-result v0

    return v0
.end method

.method public loadRootFragment(ILme/yokeyword/fragmentation/d;)V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubFragment;->mDelegate:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    invoke-virtual {v0, p1, p2}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->a(ILme/yokeyword/fragmentation/d;)V

    return-void
.end method

.method public loadRootFragment(ILme/yokeyword/fragmentation/d;ZZ)V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubFragment;->mDelegate:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    invoke-virtual {v0, p1, p2, p3, p4}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->a(ILme/yokeyword/fragmentation/d;ZZ)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 62
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubFragment;->mDelegate:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    invoke-virtual {v0, p1}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->onAttach(Landroid/app/Activity;)V

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubFragment;->mDelegate:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    invoke-virtual {v0, p1}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->a(Landroid/app/Activity;)V

    .line 46
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/BaseSubFragment;->mDelegate:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    invoke-virtual {p1}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->p()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/BaseSubFragment;->_mActivity:Landroidx/fragment/app/FragmentActivity;

    return-void
.end method

.method public onBackPressedSupport()Z
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubFragment;->mDelegate:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    invoke-virtual {v0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->k()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubFragment;->mDelegate:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    invoke-virtual {v0, p1}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubFragment;->mDelegate:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    invoke-virtual {v0, p1, p2, p3}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->a(IZI)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method public onCreateFragmentAnimator()Lme/yokeyword/fragmentation/anim/FragmentAnimator;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubFragment;->mDelegate:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    invoke-virtual {v0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->i()Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubFragment;->mDelegate:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    invoke-virtual {v0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->e()V

    .line 93
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubFragment;->mDelegate:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    invoke-virtual {v0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->d()V

    .line 87
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->onDestroyView()V

    return-void
.end method

.method public onEnterAnimationEnd(Landroid/os/Bundle;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubFragment;->mDelegate:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    invoke-virtual {v0, p1}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->d(Landroid/os/Bundle;)V

    return-void
.end method

.method public onFragmentResult(IILandroid/os/Bundle;)V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubFragment;->mDelegate:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    invoke-virtual {v0, p1, p2, p3}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->a(IILandroid/os/Bundle;)V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    .line 98
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->onHiddenChanged(Z)V

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubFragment;->mDelegate:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    invoke-virtual {v0, p1}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->a(Z)V

    return-void
.end method

.method public onLazyInitView(Landroid/os/Bundle;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubFragment;->mDelegate:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    invoke-virtual {v0, p1}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->e(Landroid/os/Bundle;)V

    return-void
.end method

.method public onNewBundle(Landroid/os/Bundle;)V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubFragment;->mDelegate:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    invoke-virtual {v0, p1}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->f(Landroid/os/Bundle;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 80
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->onPause()V

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubFragment;->mDelegate:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    invoke-virtual {v0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->c()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 74
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->onResume()V

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubFragment;->mDelegate:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    invoke-virtual {v0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->b()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 68
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubFragment;->mDelegate:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    invoke-virtual {v0, p1}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSupportInvisible()V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubFragment;->mDelegate:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    invoke-virtual {v0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->g()V

    return-void
.end method

.method public onSupportVisible()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubFragment;->mDelegate:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    invoke-virtual {v0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->f()V

    return-void
.end method

.method public pop()V
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubFragment;->mDelegate:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    invoke-virtual {v0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->m()V

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

    .line 353
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubFragment;->mDelegate:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    invoke-virtual {v0, p1, p2}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->a(Ljava/lang/Class;Z)V

    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubFragment;->mDelegate:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    invoke-virtual {v0, p1}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public putNewBundle(Landroid/os/Bundle;)V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubFragment;->mDelegate:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    invoke-virtual {v0, p1}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->g(Landroid/os/Bundle;)V

    return-void
.end method

.method public replaceFragment(Lme/yokeyword/fragmentation/d;Z)V
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubFragment;->mDelegate:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    invoke-virtual {v0, p1, p2}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->a(Lme/yokeyword/fragmentation/d;Z)V

    return-void
.end method

.method public setFragmentAnimator(Lme/yokeyword/fragmentation/anim/FragmentAnimator;)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubFragment;->mDelegate:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    invoke-virtual {v0, p1}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->a(Lme/yokeyword/fragmentation/anim/FragmentAnimator;)V

    return-void
.end method

.method public setFragmentResult(ILandroid/os/Bundle;)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubFragment;->mDelegate:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    invoke-virtual {v0, p1, p2}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->a(ILandroid/os/Bundle;)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 104
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->setUserVisibleHint(Z)V

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubFragment;->mDelegate:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    invoke-virtual {v0, p1}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->b(Z)V

    return-void
.end method

.method protected showSoftInput(Landroid/view/View;)V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubFragment;->mDelegate:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    invoke-virtual {v0, p1}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->a(Landroid/view/View;)V

    return-void
.end method

.method public start(Lme/yokeyword/fragmentation/d;)V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubFragment;->mDelegate:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    invoke-virtual {v0, p1}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->b(Lme/yokeyword/fragmentation/d;)V

    return-void
.end method

.method public start(Lme/yokeyword/fragmentation/d;I)V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubFragment;->mDelegate:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    invoke-virtual {v0, p1, p2}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->a(Lme/yokeyword/fragmentation/d;I)V

    return-void
.end method

.method public startForResult(Lme/yokeyword/fragmentation/d;I)V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubFragment;->mDelegate:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    invoke-virtual {v0, p1, p2}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->b(Lme/yokeyword/fragmentation/d;I)V

    return-void
.end method

.method public startWithPop(Lme/yokeyword/fragmentation/d;)V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubFragment;->mDelegate:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    invoke-virtual {v0, p1}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->c(Lme/yokeyword/fragmentation/d;)V

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

    .line 332
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubFragment;->mDelegate:Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    invoke-virtual {v0, p1, p2, p3}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->a(Lme/yokeyword/fragmentation/d;Ljava/lang/Class;Z)V

    return-void
.end method
