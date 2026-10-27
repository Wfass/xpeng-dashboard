.class Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment$3;
.super Ljava/lang/Object;
.source "SingerDetailFragment.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$c;


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

    .line 182
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment$3;->a:Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;

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

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment$3;->a:Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->access$200(Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 187
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$f;->c()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment$3;->a:Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->access$100(Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;)V

    .line 191
    :cond_0
    invoke-static {p1}, Lbjl;->l(I)V

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment$3;->a:Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->access$300(Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment$3;->a:Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->setViewPageState(I)V

    :cond_1
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 0

    return-void
.end method
