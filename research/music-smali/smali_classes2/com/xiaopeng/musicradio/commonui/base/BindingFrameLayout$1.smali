.class Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout$1;
.super Ljava/lang/Object;
.source "BindingFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout;->handleInflate(Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout;Landroid/view/View;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout$1;->b:Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout$1;->b:Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout$1;->a:Landroid/view/View;

    invoke-static {v1}, Landroidx/databinding/f;->a(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout;->mBinding:Landroidx/databinding/ViewDataBinding;

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout$1;->b:Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout;->findView()V

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout$1;->b:Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout;->setView()V

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout$1;->b:Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout;->setListener()V

    return-void
.end method
