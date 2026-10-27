.class Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment$1;
.super Ljava/lang/Object;
.source "BaseSubListFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment$1;->a:Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment$1;->a:Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment$1;->a:Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->loadNextPageData()V

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment$1;->a:Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/program/b$g;->net_error_tip:I

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;I)V

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment$1;->a:Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->getAdapter()Lbll;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment$1;->a:Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->getAdapter()Lbll;

    move-result-object v0

    invoke-virtual {v0}, Lbll;->g()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment$1;->a:Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->getAdapter()Lbll;

    move-result-object v0

    invoke-virtual {v0}, Lbll;->g()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment$1;->a:Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->c()V

    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment$1;->a:Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->getAdapter()Lbll;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment$1;->a:Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->getAdapter()Lbll;

    move-result-object v0

    invoke-virtual {v0}, Lbll;->g()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 95
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment$1;->a:Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->getAdapter()Lbll;

    move-result-object p1

    invoke-virtual {p1}, Lbll;->g()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment$1;->a:Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->getAdapter()Lbll;

    move-result-object p1

    invoke-virtual {p1}, Lbll;->g()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
