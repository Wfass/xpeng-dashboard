.class Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$5;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "MProgramMineFragment.java"


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

    .line 210
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$5;->a:Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$5;->a:Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;

    iput p1, v0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mCurrentIndex:I

    .line 214
    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$5;->a:Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->selectTab(Lcom/google/android/material/tabs/TabLayout$f;)V

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$5;->a:Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->access$500(Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;I)V

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$5;->a:Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->setViewPageState(I)V

    return-void
.end method
