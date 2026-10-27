.class public abstract Lcom/xiaopeng/musicradio/commonui/base/BindingActivity;
.super Lcom/xiaopeng/musicradio/commonui/vui/VuiActivity;
.source "BindingActivity.java"


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
        "Lcom/xiaopeng/musicradio/commonui/vui/VuiActivity<",
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

    .line 10
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public findView()V
    .locals 0

    return-void
.end method

.method protected handleSetContentView()V
    .locals 3

    .line 16
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingActivity;->getContentViewId()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/databinding/f;->a(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BindingActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BindingActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->f()Landroid/view/View;

    move-result-object v0

    .line 18
    sget v1, Laqv$d;->tag_lifecycle_owner:I

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingActivity;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public setListener()V
    .locals 0

    return-void
.end method

.method public setView()V
    .locals 0

    return-void
.end method
