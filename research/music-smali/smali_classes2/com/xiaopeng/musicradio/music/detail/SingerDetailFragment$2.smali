.class Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment$2;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SingerDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment$2;->a:Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment$2;->a:Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->access$000(Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;)Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment$2;->a:Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->access$000(Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;)Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->selectTab(Lcom/google/android/material/tabs/TabLayout$f;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment$2;->a:Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->access$100(Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment$2;->a:Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->setViewPageState(I)V

    return-void
.end method
