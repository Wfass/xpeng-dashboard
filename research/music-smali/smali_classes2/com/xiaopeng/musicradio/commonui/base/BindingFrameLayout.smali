.class public abstract Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout;
.super Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;
.source "BindingFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VDB:",
        "Landroidx/databinding/ViewDataBinding;",
        "UIInterface:",
        "Ljava/lang/Object;",
        "Presenter:",
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "TUIInterface;>;>",
        "Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout<",
        "TUIInterface;TPresenter;>;"
    }
.end annotation


# instance fields
.field protected mBinding:Landroidx/databinding/ViewDataBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVDB;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected findView()V
    .locals 0

    return-void
.end method

.method protected handleInflate(Landroid/view/LayoutInflater;)V
    .locals 1

    .line 34
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;->handleInflate(Landroid/view/LayoutInflater;)V

    const/4 p1, 0x0

    .line 35
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 36
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout$1;-><init>(Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout;Landroid/view/View;)V

    invoke-static {v0}, Lbql;->j(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout;->mIsInit:Z

    .line 50
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;->onFinishInflate()V

    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method protected setView()V
    .locals 0

    return-void
.end method
