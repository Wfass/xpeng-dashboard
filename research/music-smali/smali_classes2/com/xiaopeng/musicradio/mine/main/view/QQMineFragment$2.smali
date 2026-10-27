.class Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment$2;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "QQMineFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment$2;->a:Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment$2;->a:Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->access$300(Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;I)V

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment$2;->a:Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->access$102(Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;I)I

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment$2;->a:Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->access$400(Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;)Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment$2;->a:Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->access$400(Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;)Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->selectTab(Lcom/google/android/material/tabs/TabLayout$f;)V

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment$2;->a:Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->access$500(Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;I)V

    if-nez p1, :cond_1

    .line 245
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment$2;->a:Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->access$600(Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;)Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment$2;->a:Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->access$600(Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;)Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->getMusicCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 247
    invoke-static {v0}, Laxu;->e(I)V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment$2;->a:Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->access$600(Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;)Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->getAlbumCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 250
    invoke-static {}, Laxu;->f()V

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 255
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment$2;->a:Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->access$700(Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;)Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 256
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment$2;->a:Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->access$700(Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;)Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->getPlayListCount()I

    move-result p1

    if-nez p1, :cond_2

    .line 257
    invoke-static {}, Laxu;->g()V

    :cond_2
    return-void
.end method
