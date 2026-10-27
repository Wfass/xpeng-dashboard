.class public abstract Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;
.super Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;
.source "BindingFragment.java"


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
        "Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment<",
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
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected findView()V
    .locals 0

    return-void
.end method

.method protected handleInflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 19
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->handleInflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 20
    invoke-static {p1}, Landroidx/databinding/f;->a(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-object p1
.end method

.method protected final preCacheLayout()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method protected setView()V
    .locals 0

    return-void
.end method
