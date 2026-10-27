.class Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout$2;
.super Ljava/lang/Object;
.source "SearchResultMixQQLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout$2;->a:Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 135
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout$2;->a:Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->getTipsState()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout$2;->a:Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->getTipsState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 136
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout$2;->a:Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->a(Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout$2;->a:Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->getAccountType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;->c(I)V

    :cond_1
    return-void
.end method
