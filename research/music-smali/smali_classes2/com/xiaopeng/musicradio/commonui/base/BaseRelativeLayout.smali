.class public abstract Lcom/xiaopeng/musicradio/commonui/base/BaseRelativeLayout;
.super Lcom/xiaopeng/xui/widget/XRelativeLayout;
.source "BaseRelativeLayout.java"

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
        "Lcom/xiaopeng/xui/widget/XRelativeLayout;",
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/a;"
    }
.end annotation


# instance fields
.field protected a:Z

.field protected b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TPresenter;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseRelativeLayout;->a:Z

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseRelativeLayout;->e()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseRelativeLayout;->a:Z

    .line 30
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseRelativeLayout;->e()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseRelativeLayout;->a:Z

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseRelativeLayout;->e()V

    return-void
.end method

.method private final e()V
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseRelativeLayout;->a()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseRelativeLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseRelativeLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->a(Ljava/lang/Object;)V

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 44
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/commonui/base/BaseRelativeLayout;->a(Landroid/view/LayoutInflater;)V

    return-void
.end method

.method private f()V
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseRelativeLayout;->a:Z

    if-nez v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseRelativeLayout;->b()V

    .line 60
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseRelativeLayout;->c()V

    .line 61
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseRelativeLayout;->d()V

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseRelativeLayout;->a:Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPresenter;"
        }
    .end annotation
.end method

.method protected a(Landroid/view/LayoutInflater;)V
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseRelativeLayout;->getContentViewId()I

    move-result v0

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method protected abstract b()V
.end method

.method protected abstract c()V
.end method

.method protected abstract d()V
.end method

.method public getActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 1

    .line 127
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaopeng/musicradio/commonui/base/b;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/commonui/base/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/base/b;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    return-object v0

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    return-object v0
.end method

.method public abstract getContentViewId()I
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 68
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onAttachedToWindow()V

    .line 69
    invoke-static {p0}, Lcom/xiaopeng/musicradio/commonui/base/c;->a(Landroid/view/View;)V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1
    .annotation runtime Landroidx/lifecycle/t;
        a = .enum Landroidx/lifecycle/j$a;->ON_CREATE:Landroidx/lifecycle/j$a;
    .end annotation

    .line 81
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseRelativeLayout;->f()V

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseRelativeLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 1
    .annotation runtime Landroidx/lifecycle/t;
        a = .enum Landroidx/lifecycle/j$a;->ON_DESTROY:Landroidx/lifecycle/j$a;
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseRelativeLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 74
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onDetachedFromWindow()V

    .line 75
    invoke-static {p0}, Lcom/xiaopeng/musicradio/commonui/base/c;->b(Landroid/view/View;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 53
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onFinishInflate()V

    .line 54
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseRelativeLayout;->f()V

    return-void
.end method

.method public onPause(Landroidx/lifecycle/n;)V
    .locals 1
    .annotation runtime Landroidx/lifecycle/t;
        a = .enum Landroidx/lifecycle/j$a;->ON_PAUSE:Landroidx/lifecycle/j$a;
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseRelativeLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onPause(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 1
    .annotation runtime Landroidx/lifecycle/t;
        a = .enum Landroidx/lifecycle/j$a;->ON_RESUME:Landroidx/lifecycle/j$a;
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseRelativeLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onResume(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public onStart(Landroidx/lifecycle/n;)V
    .locals 1
    .annotation runtime Landroidx/lifecycle/t;
        a = .enum Landroidx/lifecycle/j$a;->ON_START:Landroidx/lifecycle/j$a;
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseRelativeLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onStart(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public onStop(Landroidx/lifecycle/n;)V
    .locals 1
    .annotation runtime Landroidx/lifecycle/t;
        a = .enum Landroidx/lifecycle/j$a;->ON_STOP:Landroidx/lifecycle/j$a;
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseRelativeLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onStop(Landroidx/lifecycle/n;)V

    return-void
.end method
