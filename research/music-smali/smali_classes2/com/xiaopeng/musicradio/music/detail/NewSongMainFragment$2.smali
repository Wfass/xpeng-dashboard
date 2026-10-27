.class Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment$2;
.super Ljava/lang/Object;
.source "NewSongMainFragment.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment$2;->a:Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;

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

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment$2;->a:Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment$2;->a:Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->selectTab(Lcom/google/android/material/tabs/TabLayout$f;)V

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment$2;->a:Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->access$000(Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->access$202(Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;Landroid/view/View;)Landroid/view/View;

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment$2;->a:Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->access$302(Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;I)I

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment$2;->a:Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->access$400(Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;I)V

    .line 119
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment$2;->a:Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->access$500(Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;)V

    return-void
.end method
