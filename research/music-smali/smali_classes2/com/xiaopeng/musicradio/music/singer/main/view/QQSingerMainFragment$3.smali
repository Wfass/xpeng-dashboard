.class Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment$3;
.super Ljava/lang/Object;
.source "QQSingerMainFragment.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$c;


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

    .line 145
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment$3;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;

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

    .line 148
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$f;->c()I

    move-result p1

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment$3;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mViewPager:Lcom/xiaopeng/xui/widget/XViewPager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XViewPager;->setCurrentItem(I)V

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment$3;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;

    iget-object v1, v0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mAdapter:Lbje;

    invoke-virtual {v1, p1}, Lbje;->d(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, v0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mCurrentView:Landroid/view/View;

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 0

    return-void
.end method
