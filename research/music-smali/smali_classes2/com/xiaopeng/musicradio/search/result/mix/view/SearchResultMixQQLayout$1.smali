.class Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SearchResultMixQQLayout.java"


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

    .line 121
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout$1;->a:Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 124
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 126
    new-instance p2, Lcom/xiaopeng/musicradio/event/common/b$d;

    invoke-direct {p2, p1}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-ne p2, p1, :cond_1

    .line 128
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/b$d;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
