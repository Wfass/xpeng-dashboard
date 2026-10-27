.class public Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerMainFragment;
.super Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;
.source "KugooSingerMainFragment.java"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    extras = 0x1
    path = "/music/fragment/kugoo_singer"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;",
            ">;)V"
        }
    .end annotation

    .line 26
    new-instance v6, Lbje;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerMainFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerMainFragment;->getAccountType()I

    move-result v3

    sget v4, Lbez$f;->kugoo_singer_list_music_layout:I

    iget-object v5, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerMainFragment;->mPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lbje;-><init>(Landroid/content/Context;Ljava/util/List;IILandroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    iput-object v6, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerMainFragment;->mAdapter:Lbje;

    return-void
.end method

.method public getAccountType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public onMusicAuthCheck(I)V
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 40
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object p1

    invoke-virtual {p1, v0}, Lbdm;->a(I)Lbeg;

    move-result-object p1

    invoke-interface {p1}, Lbeg;->g()Z

    move-result p1

    if-nez p1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerMainFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "/music/fragment/kugoo_singer"

    invoke-static {p1, v0}, Lbni;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected setSingerType()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerMainFragment;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerMainFragment;->mCurrentView:Landroid/view/View;

    sget v1, Lbez$d;->singer_list_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;

    .line 33
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerMainFragment;->mSingerType:Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;->getTypeCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;->selectType(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
