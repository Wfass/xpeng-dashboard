.class Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$4;
.super Ljava/lang/Object;
.source "MProgramMineFragment.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$4;->a:Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;

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

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$4;->a:Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 192
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$f;->c()I

    move-result p1

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$4;->a:Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;

    iput p1, v0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mCurrentIndex:I

    .line 194
    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->access$500(Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;I)V

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$4;->a:Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 0

    return-void
.end method
