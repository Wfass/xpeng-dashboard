.class public abstract Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;
.super Lcom/xiaopeng/xui/widget/XFrameLayout;
.source "BaseFrameLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/commonui/lifecycle/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UIInterface:",
        "Ljava/lang/Object;",
        "Presenter:",
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "TUIInterface;>;>",
        "Lcom/xiaopeng/xui/widget/XFrameLayout;",
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/a;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseFrameLayout"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field protected mIsInit:Z

.field protected mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TPresenter;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->mIsInit:Z

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->mIsInit:Z

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->mIsInit:Z

    .line 41
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->init()V

    return-void
.end method

.method private final init()V
    .locals 2

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->mHandler:Landroid/os/Handler;

    .line 46
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->a(Ljava/lang/Object;)V

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 51
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->handleInflate(Landroid/view/LayoutInflater;)V

    return-void
.end method

.method private initView()V
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->mIsInit:Z

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->findView()V

    .line 67
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->setView()V

    .line 68
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->setListener()V

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->mIsInit:Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPresenter;"
        }
    .end annotation
.end method

.method protected abstract findView()V
.end method

.method public getActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 1

    .line 154
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaopeng/musicradio/commonui/base/b;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/commonui/base/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/base/b;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    return-object v0

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    return-object v0
.end method

.method public abstract getContentViewId()I
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected handleInflate(Landroid/view/LayoutInflater;)V
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->getContentViewId()I

    move-result v0

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 75
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onAttachedToWindow()V

    .line 76
    invoke-static {p0}, Lcom/xiaopeng/musicradio/commonui/base/c;->a(Landroid/view/View;)V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1
    .annotation runtime Landroidx/lifecycle/t;
        a = .enum Landroidx/lifecycle/j$a;->ON_CREATE:Landroidx/lifecycle/j$a;
    .end annotation

    .line 88
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->initView()V

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    :cond_0
    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 1
    .annotation runtime Landroidx/lifecycle/t;
        a = .enum Landroidx/lifecycle/j$a;->ON_DESTROY:Landroidx/lifecycle/j$a;
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 81
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onDetachedFromWindow()V

    .line 82
    invoke-static {p0}, Lcom/xiaopeng/musicradio/commonui/base/c;->b(Landroid/view/View;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 60
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onFinishInflate()V

    .line 61
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->initView()V

    return-void
.end method

.method public onPause(Landroidx/lifecycle/n;)V
    .locals 1
    .annotation runtime Landroidx/lifecycle/t;
        a = .enum Landroidx/lifecycle/j$a;->ON_PAUSE:Landroidx/lifecycle/j$a;
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onPause(Landroidx/lifecycle/n;)V

    :cond_0
    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 1
    .annotation runtime Landroidx/lifecycle/t;
        a = .enum Landroidx/lifecycle/j$a;->ON_RESUME:Landroidx/lifecycle/j$a;
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onResume(Landroidx/lifecycle/n;)V

    :cond_0
    return-void
.end method

.method public onStart(Landroidx/lifecycle/n;)V
    .locals 1
    .annotation runtime Landroidx/lifecycle/t;
        a = .enum Landroidx/lifecycle/j$a;->ON_START:Landroidx/lifecycle/j$a;
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onStart(Landroidx/lifecycle/n;)V

    :cond_0
    return-void
.end method

.method public onStop(Landroidx/lifecycle/n;)V
    .locals 1
    .annotation runtime Landroidx/lifecycle/t;
        a = .enum Landroidx/lifecycle/j$a;->ON_STOP:Landroidx/lifecycle/j$a;
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onStop(Landroidx/lifecycle/n;)V

    :cond_0
    return-void
.end method

.method protected abstract setListener()V
.end method

.method protected abstract setView()V
.end method
