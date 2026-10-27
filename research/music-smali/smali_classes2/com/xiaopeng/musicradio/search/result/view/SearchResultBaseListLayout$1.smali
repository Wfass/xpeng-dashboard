.class Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout$1;
.super Ljava/lang/Object;
.source "SearchResultBaseListLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout$1;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout$1;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout$1;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->f()V

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout$1;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->getAdapter()Lbnm;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout$1;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->getAdapter()Lbnm;

    move-result-object v0

    invoke-virtual {v0}, Lbnm;->g()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout$1;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->getAdapter()Lbnm;

    move-result-object v0

    invoke-virtual {v0}, Lbnm;->g()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout$1;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->c()V

    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout$1;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->getAdapter()Lbnm;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout$1;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->getAdapter()Lbnm;

    move-result-object v0

    invoke-virtual {v0}, Lbnm;->g()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout$1;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->getAdapter()Lbnm;

    move-result-object p1

    invoke-virtual {p1}, Lbnm;->g()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout$1;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->getAdapter()Lbnm;

    move-result-object p1

    invoke-virtual {p1}, Lbnm;->g()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
