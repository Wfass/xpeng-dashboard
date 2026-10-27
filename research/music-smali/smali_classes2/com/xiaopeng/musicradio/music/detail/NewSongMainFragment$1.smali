.class Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment$1;
.super Ljava/lang/Object;
.source "NewSongMainFragment.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$c;


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

    .line 87
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment$1;->a:Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment$1;->a:Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->access$000(Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 91
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$f;->c()I

    move-result p1

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment$1;->a:Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->access$100(Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;)Lcom/xiaopeng/xui/widget/XViewPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XViewPager;->setCurrentItem(I)V

    :cond_0
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 0

    return-void
.end method
