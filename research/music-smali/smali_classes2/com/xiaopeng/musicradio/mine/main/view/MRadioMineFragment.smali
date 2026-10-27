.class public Lcom/xiaopeng/musicradio/mine/main/view/MRadioMineFragment;
.super Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;
.source "MRadioMineFragment.java"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    extras = 0x1
    path = "/mine/radio_mine"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MRadioMineFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMenuIndex()I
    .locals 1

    .line 124
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->g()I

    move-result v0

    return v0
.end method

.method protected getPageNameInner()Ljava/lang/String;
    .locals 1

    const-string v0, "Music_NetRadio_Mine"

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    const-string v0, "/mine/radio_mine"

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 85
    iget v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MRadioMineFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->p(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSubPageNameInner()Ljava/lang/String;
    .locals 2

    .line 132
    iget v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MRadioMineFragment;->mCurrentIndex:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "Music_NetRadio_SubPage_Mine_History"

    return-object v0

    :cond_0
    const-string v0, "Music_NetRadio_SubPage_Mine_Subscribe"

    return-object v0
.end method

.method public getSubSceneList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 90
    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/musicradio/mine/main/view/MRadioMineFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/mine/main/view/MRadioMineFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->ak(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected initView()V
    .locals 6

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MRadioMineFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 45
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MRadioMineFragment;->reviewOnScreenChange()V

    .line 46
    invoke-static {}, Lawv;->a()Lawv;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MRadioMineFragment;->getMenuIndex()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lawv;->a(IZ)V

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MRadioMineFragment;->mAccountInfoLayout:Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MRadioMineFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->setSceneId(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MRadioMineFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->mine_radio_collect_title:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/mine/main/view/MRadioMineFragment;->inflaterTab(Ljava/lang/String;)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->addTab(Lcom/google/android/material/tabs/TabLayout$f;I)V

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MRadioMineFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->mine_radio_history_title:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/mine/main/view/MRadioMineFragment;->inflaterTab(Ljava/lang/String;)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->addTab(Lcom/google/android/material/tabs/TabLayout$f;I)V

    .line 51
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MRadioMineFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/mine/a$d;->radio_collect_mine_layout:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MRadioMineFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v5, Lcom/xiaopeng/musicradio/mine/a$d;->radio_history_mine_layout:I

    invoke-virtual {v1, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 53
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 57
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    instance-of v4, v0, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;

    if-eqz v4, :cond_0

    .line 60
    move-object v4, v0

    check-cast v4, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;

    invoke-virtual {v4, v3}, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->setPosition(I)V

    .line 62
    :cond_0
    instance-of v4, v1, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;

    if-eqz v4, :cond_1

    .line 63
    move-object v4, v1

    check-cast v4, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;

    invoke-virtual {v4, v2}, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;->setPosition(I)V

    .line 65
    :cond_1
    iget-object v4, p0, Lcom/xiaopeng/musicradio/mine/main/view/MRadioMineFragment;->mViews:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v4, p0, Lcom/xiaopeng/musicradio/mine/main/view/MRadioMineFragment;->mViews:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 69
    new-instance v5, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;

    invoke-direct {v5}, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;-><init>()V

    .line 70
    iput v3, v5, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;->type:I

    .line 71
    iput-object v0, v5, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;->view:Landroid/view/View;

    .line 72
    new-instance v0, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;-><init>()V

    .line 73
    iput v2, v0, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;->type:I

    .line 74
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;->view:Landroid/view/View;

    .line 75
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v0, Lcom/xiaopeng/musicradio/widget/e;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MRadioMineFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/xiaopeng/musicradio/widget/e;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MRadioMineFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/e;

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MRadioMineFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/main/view/MRadioMineFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/e;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 79
    invoke-virtual {p0, v3}, Lcom/xiaopeng/musicradio/mine/main/view/MRadioMineFragment;->setViewPageState(I)V

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MRadioMineFragment;->mVipSaleBanner:Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->setVipSaleType(I)V

    return-void
.end method

.method protected setView()V
    .locals 0

    .line 39
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->setView()V

    return-void
.end method

.method protected setViewPageState(I)V
    .locals 5

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateView: start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MRadioMineFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 96
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/main/view/MRadioMineFragment;->mViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 97
    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/main/view/MRadioMineFragment;->mViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_3

    if-ne v0, p1, :cond_1

    .line 100
    instance-of v3, v2, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;

    if-eqz v3, :cond_0

    .line 101
    move-object v3, v2

    check-cast v3, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;

    sget-object v4, Lbya;->NORMAL:Lbya;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->setRecyclerState(Lbya;)V

    .line 102
    iget-object v4, p0, Lcom/xiaopeng/musicradio/mine/main/view/MRadioMineFragment;->mMusicScrollLayout:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->setMusicScrollLayout(Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;)V

    .line 104
    :cond_0
    instance-of v3, v2, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;

    if-eqz v3, :cond_3

    .line 105
    check-cast v2, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;

    sget-object v3, Lbya;->NORMAL:Lbya;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;->setRecyclerState(Lbya;)V

    .line 106
    iget-object v3, p0, Lcom/xiaopeng/musicradio/mine/main/view/MRadioMineFragment;->mMusicScrollLayout:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;->setMusicScrollLayout(Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;)V

    goto :goto_1

    .line 109
    :cond_1
    instance-of v3, v2, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;

    if-eqz v3, :cond_2

    .line 110
    move-object v3, v2

    check-cast v3, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;

    sget-object v4, Lbya;->DISABLED:Lbya;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/mine/radio/RadioCollectLayout;->setRecyclerState(Lbya;)V

    .line 112
    :cond_2
    instance-of v3, v2, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;

    if-eqz v3, :cond_3

    .line 113
    check-cast v2, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;

    sget-object v3, Lbya;->DISABLED:Lbya;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;->setRecyclerState(Lbya;)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_4
    invoke-static {p1}, Latu;->b(I)V

    .line 119
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MRadioMineFragment;->BuildFragmentScene()V

    const-string p1, "updateView: tab update viewpager update"

    .line 120
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
