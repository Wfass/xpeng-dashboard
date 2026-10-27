.class Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment$1;
.super Ljava/lang/Object;
.source "CategoryDetailFragment.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$c;


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

    .line 123
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment$1;->a:Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;

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

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment$1;->a:Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->access$000(Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;)Lbgn;

    move-result-object v0

    invoke-virtual {v0}, Lbgn;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 127
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$f;->c()I

    move-result p1

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment$1;->a:Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->access$100(Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;)Lcom/xiaopeng/xui/widget/XViewPager;

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
