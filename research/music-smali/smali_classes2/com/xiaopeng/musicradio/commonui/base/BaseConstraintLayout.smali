.class public abstract Lcom/xiaopeng/musicradio/commonui/base/BaseConstraintLayout;
.super Lcom/xiaopeng/xui/widget/XConstraintLayout;
.source "BaseConstraintLayout.java"

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
        "Lcom/xiaopeng/xui/widget/XConstraintLayout;",
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/a;"
    }
.end annotation


# instance fields
.field protected a:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TPresenter;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseConstraintLayout;->b:Z

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseConstraintLayout;->e()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseConstraintLayout;->b:Z

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseConstraintLayout;->e()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseConstraintLayout;->b:Z

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseConstraintLayout;->e()V

    return-void
.end method

.method private final e()V
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseConstraintLayout;->a()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseConstraintLayout;->a:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseConstraintLayout;->a:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->a(Ljava/lang/Object;)V

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 43
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/commonui/base/BaseConstraintLayout;->a(Landroid/view/LayoutInflater;)V

    return-void
.end method

.method private f()V
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseConstraintLayout;->b:Z

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseConstraintLayout;->b()V

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseConstraintLayout;->c()V

    .line 60
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseConstraintLayout;->d()V

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseConstraintLayout;->b:Z

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

    .line 47
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseConstraintLayout;->getContentViewId()I

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

    .line 126
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    return-object v0
.end method

.method public abstract getContentViewId()I
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 67
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->onAttachedToWindow()V

    .line 68
    invoke-static {p0}, Lcom/xiaopeng/musicradio/commonui/base/c;->a(Landroid/view/View;)V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1
    .annotation runtime Landroidx/lifecycle/t;
        a = .enum Landroidx/lifecycle/j$a;->ON_CREATE:Landroidx/lifecycle/j$a;
    .end annotation

    .line 80
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseConstraintLayout;->f()V

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseConstraintLayout;->a:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 1
    .annotation runtime Landroidx/lifecycle/t;
        a = .enum Landroidx/lifecycle/j$a;->ON_DESTROY:Landroidx/lifecycle/j$a;
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseConstraintLayout;->a:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 73
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->onDetachedFromWindow()V

    .line 74
    invoke-static {p0}, Lcom/xiaopeng/musicradio/commonui/base/c;->b(Landroid/view/View;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 52
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->onFinishInflate()V

    .line 53
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseConstraintLayout;->f()V

    return-void
.end method

.method public onPause(Landroidx/lifecycle/n;)V
    .locals 1
    .annotation runtime Landroidx/lifecycle/t;
        a = .enum Landroidx/lifecycle/j$a;->ON_PAUSE:Landroidx/lifecycle/j$a;
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseConstraintLayout;->a:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onPause(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 1
    .annotation runtime Landroidx/lifecycle/t;
        a = .enum Landroidx/lifecycle/j$a;->ON_RESUME:Landroidx/lifecycle/j$a;
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseConstraintLayout;->a:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onResume(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public onStart(Landroidx/lifecycle/n;)V
    .locals 1
    .annotation runtime Landroidx/lifecycle/t;
        a = .enum Landroidx/lifecycle/j$a;->ON_START:Landroidx/lifecycle/j$a;
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseConstraintLayout;->a:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onStart(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public onStop(Landroidx/lifecycle/n;)V
    .locals 1
    .annotation runtime Landroidx/lifecycle/t;
        a = .enum Landroidx/lifecycle/j$a;->ON_STOP:Landroidx/lifecycle/j$a;
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseConstraintLayout;->a:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onStop(Landroidx/lifecycle/n;)V

    return-void
.end method
