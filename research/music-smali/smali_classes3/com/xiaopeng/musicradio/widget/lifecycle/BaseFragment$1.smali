.class Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment$1;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment$1;->a:Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment$1;->a:Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->setView()V

    return-void
.end method
