.class Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout$3;
.super Ljava/lang/Object;
.source "SearchResultBaseListLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 155
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout$3;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 158
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout$3;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->a(Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->c(I)V

    return-void
.end method
