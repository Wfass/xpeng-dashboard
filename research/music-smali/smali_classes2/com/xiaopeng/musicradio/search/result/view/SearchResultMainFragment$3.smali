.class Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$3;
.super Ljava/lang/Object;
.source "SearchResultMainFragment.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$3;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$3;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 386
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$f;->c()I

    move-result p1

    .line 387
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$3;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->access$300(Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;)Lcom/xiaopeng/xui/widget/XViewPager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/xui/widget/XViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 0

    return-void
.end method
