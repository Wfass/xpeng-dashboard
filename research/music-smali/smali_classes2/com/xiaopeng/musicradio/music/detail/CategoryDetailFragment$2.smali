.class Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment$2;
.super Ljava/lang/Object;
.source "CategoryDetailFragment.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment$2;->a:Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;

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

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment$2;->a:Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment$2;->a:Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->selectTab(Lcom/google/android/material/tabs/TabLayout$f;)V

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment$2;->a:Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->access$200(Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;I)V

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment$2;->a:Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->access$000(Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;)Lbgn;

    move-result-object v1

    invoke-virtual {v1, p1}, Lbgn;->d(I)Landroid/view/View;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->access$302(Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;Landroid/view/View;)Landroid/view/View;

    .line 154
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment$2;->a:Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->access$400(Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;)V

    return-void
.end method
