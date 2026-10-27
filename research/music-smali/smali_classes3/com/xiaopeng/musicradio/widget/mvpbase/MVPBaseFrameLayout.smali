.class public abstract Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;
.super Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;
.source "MVPBaseFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UIInterface:",
        "Ljava/lang/Object;",
        "Presenter:",
        "Lcom/xiaopeng/musicradio/widget/lifecycle/a<",
        "TUIInterface;>;>",
        "Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;"
    }
.end annotation


# instance fields
.field private isInit:Z

.field protected mBundle:Landroid/os/Bundle;

.field protected mHasDestroyView:Z

.field protected mPresenter:Lcom/xiaopeng/musicradio/widget/lifecycle/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TPresenter;"
        }
    .end annotation
.end field

.field protected mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->isInit:Z

    .line 25
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->mTheme:I

    .line 30
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->isInit:Z

    .line 25
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->mTheme:I

    .line 35
    iput-object p2, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->mBundle:Landroid/os/Bundle;

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->isInit:Z

    .line 25
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->mTheme:I

    .line 41
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->isInit:Z

    .line 25
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->mTheme:I

    .line 46
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->init()V

    return-void
.end method

.method private final init()V
    .locals 2

    .line 50
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->createPresenter()Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->mPresenter:Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->mPresenter:Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/a;->a(Ljava/lang/Object;)V

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->getContentViewId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method private initView()V
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->isInit:Z

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->findView()V

    .line 66
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->setView()V

    .line 67
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->setListener()V

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->isInit:Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected checkLayoutStatus()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->isInit:Z

    return v0
.end method

.method protected abstract createPresenter()Lcom/xiaopeng/musicradio/widget/lifecycle/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPresenter;"
        }
    .end annotation
.end method

.method protected abstract findView()V
.end method

.method public abstract getContentViewId()I
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 74
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 84
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->onCreate()V

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->mPresenter:Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/a;->g()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->mPresenter:Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/a;->a(Ljava/lang/Object;)V

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->initView()V

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->mPresenter:Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/a;->h()V

    :cond_1
    return-void
.end method

.method public onCreateView()V
    .locals 1

    .line 96
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->onCreateView()V

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->mHasDestroyView:Z

    .line 98
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->initView()V

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->mPresenter:Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/a;->i_()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 147
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->onDestroy()V

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->mPresenter:Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/a;->m()V

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->mPresenter:Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/a;->a()V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 138
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->onDestroyView()V

    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->mHasDestroyView:Z

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->mPresenter:Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/a;->r_()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 79
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 59
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->onFinishInflate()V

    .line 60
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->initView()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 122
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->onPause()V

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->mPresenter:Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/a;->k()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 114
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->onResume()V

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->mPresenter:Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/a;->j()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 106
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->onStart()V

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->mPresenter:Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/a;->i()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 130
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->onStart()V

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->mPresenter:Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/a;->l()V

    :cond_0
    return-void
.end method

.method public onSupportInvisible()V
    .locals 1

    .line 164
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->onSupportInvisible()V

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->mPresenter:Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/a;->j_()V

    :cond_0
    return-void
.end method

.method public onSupportVisible()V
    .locals 1

    .line 156
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->onSupportVisible()V

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->mPresenter:Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/a;->h_()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 193
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;->onWindowFocusChanged(Z)V

    return-void
.end method

.method protected abstract setListener()V
.end method

.method protected abstract setView()V
.end method
