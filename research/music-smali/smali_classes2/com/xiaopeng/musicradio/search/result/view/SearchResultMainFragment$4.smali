.class Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$4;
.super Ljava/lang/Object;
.source "SearchResultMainFragment.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$f;


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

    .line 402
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$4;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$4;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->access$200(Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;)Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$4;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->access$200(Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;)Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->selectTab(Lcom/google/android/material/tabs/TabLayout$f;)V

    .line 411
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$4;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->access$500(Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;I)V

    return-void
.end method
