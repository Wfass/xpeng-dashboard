.class Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment$4;
.super Ljava/lang/Object;
.source "QQSingerMainFragment.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment$4;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;

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

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment$4;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment$4;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->selectTab(Lcom/google/android/material/tabs/TabLayout$f;)V

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment$4;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;

    iget-object v1, v0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mAdapter:Lbje;

    invoke-virtual {v1, p1}, Lbje;->d(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mCurrentView:Landroid/view/View;

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment$4;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->setSingerType()V

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment$4;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->access$500(Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;I)V

    return-void
.end method
