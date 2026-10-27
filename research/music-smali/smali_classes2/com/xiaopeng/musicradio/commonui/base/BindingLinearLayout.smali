.class public abstract Lcom/xiaopeng/musicradio/commonui/base/BindingLinearLayout;
.super Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseLinearLayout;
.source "BindingLinearLayout.java"


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
        "Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseLinearLayout<",
        "TUIInterface;TPresenter;>;"
    }
.end annotation


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BindingLinearLayout;->a:Z

    .line 50
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseLinearLayout;->onFinishInflate()V

    return-void
.end method
