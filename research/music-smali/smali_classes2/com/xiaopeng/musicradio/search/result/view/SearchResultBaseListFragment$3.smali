.class Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment$3;
.super Ljava/lang/Object;
.source "SearchResultBaseListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment$3;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 147
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment$3;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->access$000(Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->c(I)V

    return-void
.end method
