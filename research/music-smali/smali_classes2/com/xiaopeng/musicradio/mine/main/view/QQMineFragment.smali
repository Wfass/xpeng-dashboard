.class public Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;
.super Lcom/xiaopeng/musicradio/view/MusicVuiFragment;
.source "QQMineFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/mine/main/view/a;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    extras = 0x1
    path = "/mine/qq_mine"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiFragment<",
        "Lcom/xiaopeng/musicradio/mine/main/view/a;",
        "Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/mine/main/view/a;"
    }
.end annotation


# static fields
.field private static final INDEX_COLLECT:I = 0x0

.field private static final INDEX_HISTORY:I = 0x2

.field private static final INDEX_PLAY_LIST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "QQMineFragment"


# instance fields
.field private isFirstCreate:Z

.field protected mAccountInfoLayout:Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;

.field private mAdapter:Lcom/xiaopeng/musicradio/widget/e;

.field protected mContinuePlaySettingDialog:Lcom/xiaopeng/musicradio/mine/main/setting/a;

.field private mIndex:I

.field protected mLogoutDialog:Lcom/xiaopeng/musicradio/widget/f;

.field private mMusicCollectLayout:Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;

.field private mMusicHistoryLayout:Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;

.field private mMusicPlayListLayout:Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;

.field private mMusicScrollLayout:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

.field private mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

.field private mViewPager:Landroidx/viewpager2/widget/ViewPager2;

.field private mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;-><init>()V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mViews:Ljava/util/List;

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mIndex:I

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->isFirstCreate:Z

    return-void
.end method

.method private BuildFragmentScene()V
    .locals 5

    .line 386
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->getBuildViewList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->getSubSceneList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->isMainScene()Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;)Ljava/util/List;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mViews:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mIndex:I

    return p0
.end method

.method static synthetic access$102(Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;I)I
    .locals 0

    .line 77
    iput p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->refreshSpeechArrive(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;)Lcom/xiaopeng/xui/widget/XTabLayout_V5;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->setViewPageState(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;)Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mMusicCollectLayout:Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;)Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mMusicPlayListLayout:Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;

    return-object p0
.end method

.method private inflaterTab(Ljava/lang/String;)Lcom/google/android/material/tabs/TabLayout$f;
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->newTab()Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v0

    .line 181
    sget v1, Lcom/xiaopeng/musicradio/mine/a$d;->x_tab_item_v5:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$f;->a(I)Lcom/google/android/material/tabs/TabLayout$f;

    .line 182
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$f;->a()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/mine/a$c;->x_tab_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XTextView;

    const/16 v2, 0x11

    .line 184
    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setGravity(I)V

    .line 185
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 186
    invoke-virtual {v1, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 187
    invoke-virtual {v1, p1}, Lcom/xiaopeng/xui/widget/XTextView;->enableViewVuiMode(Z)V

    return-object v0
.end method

.method private refreshSpeechArrive(I)V
    .locals 4

    .line 331
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object v0

    const-string v1, "VIEW_COLLECT"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/common/n;->b(Ljava/lang/String;)V

    .line 332
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object v0

    const-string v2, "VIEW_SHEET"

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/common/n;->b(Ljava/lang/String;)V

    .line 333
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object v0

    const-string v3, "VIEW_HISTORY"

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/common/n;->b(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 335
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/common/n;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 337
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/xiaopeng/musicradio/common/n;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 339
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/xiaopeng/musicradio/common/n;->a(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setViewPageState(I)V
    .locals 5

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateView: start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QQMineFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 353
    :cond_0
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v2

    invoke-virtual {v2}, Lbdu;->d()I

    move-result v2

    invoke-static {v2}, Latt;->a(I)V

    goto :goto_0

    .line 350
    :cond_1
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v2

    invoke-virtual {v2}, Lbdu;->d()I

    move-result v2

    invoke-static {v2}, Latv;->a(I)V

    goto :goto_0

    .line 347
    :cond_2
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v2

    invoke-virtual {v2}, Lbdu;->d()I

    move-result v2

    invoke-static {v2}, Latr;->a(I)V

    :goto_0
    const/4 v2, 0x0

    .line 356
    :goto_1
    iget-object v3, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 357
    iget-object v3, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mViews:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_8

    if-ne v2, p1, :cond_5

    if-ne v2, v0, :cond_3

    .line 361
    iget-object v3, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mMusicPlayListLayout:Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;

    sget-object v4, Lbya;->NORMAL:Lbya;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->setRecyclerState(Lbya;)V

    .line 362
    iget-object v3, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mMusicPlayListLayout:Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mMusicScrollLayout:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->setMusicScrollLayout(Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;)V

    goto :goto_2

    :cond_3
    if-nez v2, :cond_4

    .line 364
    iget-object v3, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mMusicCollectLayout:Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;

    sget-object v4, Lbya;->NORMAL:Lbya;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->setRecyclerState(Lbya;)V

    .line 365
    iget-object v3, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mMusicCollectLayout:Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mMusicScrollLayout:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->setMusicScrollLayout(Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;)V

    goto :goto_2

    .line 367
    :cond_4
    iget-object v3, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mMusicHistoryLayout:Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;

    sget-object v4, Lbya;->NORMAL:Lbya;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->setRecyclerState(Lbya;)V

    .line 368
    iget-object v3, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mMusicHistoryLayout:Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mMusicScrollLayout:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->setMusicScrollLayout(Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;)V

    goto :goto_2

    :cond_5
    if-ne v2, v0, :cond_6

    .line 372
    iget-object v3, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mMusicPlayListLayout:Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;

    sget-object v4, Lbya;->DISABLED:Lbya;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->setRecyclerState(Lbya;)V

    goto :goto_2

    :cond_6
    if-nez v2, :cond_7

    .line 374
    iget-object v3, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mMusicCollectLayout:Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;

    sget-object v4, Lbya;->DISABLED:Lbya;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->setRecyclerState(Lbya;)V

    goto :goto_2

    .line 376
    :cond_7
    iget-object v3, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mMusicHistoryLayout:Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;

    sget-object v4, Lbya;->DISABLED:Lbya;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->setRecyclerState(Lbya;)V

    :cond_8
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 381
    :cond_9
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->BuildFragmentScene()V

    const-string p1, "updateView: tab update viewpager update"

    .line 382
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->createPresenter()Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;
    .locals 1

    .line 471
    new-instance v0, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 117
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->music_scroll_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mMusicScrollLayout:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

    .line 118
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->account_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mAccountInfoLayout:Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;

    .line 119
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->layout_tab:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    .line 120
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->viewpager:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 121
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->configuration_changed_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mConfigurationChangedView:Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    return-void
.end method

.method public getAccountType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getBugRightMargin()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getBuildViewList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 393
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mAccountInfoLayout:Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    iget v1, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mIndex:I

    if-nez v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mMusicCollectLayout:Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 398
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mMusicPlayListLayout:Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 400
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mMusicHistoryLayout:Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-object v0
.end method

.method protected getContentViewId()I
    .locals 1

    .line 112
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->fragment_qq_mine:I

    return v0
.end method

.method public getMenuIndex()I
    .locals 1

    .line 574
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->e()I

    move-result v0

    return v0
.end method

.method protected getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Music_Mine_Page"

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    const-string v0, "/mine/qq_mine"

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 2

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QQ"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/musicradio/vui/c;->P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSubPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Music_Mine_SubPage_Favorite"

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

    .line 570
    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->W(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getVipSaleType()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public isMainScene()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isShowContinuePlay()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected logout()V
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->h()V

    return-void
.end method

.method protected needSetRootView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAccountInfoUpdated(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipDetail;",
            ">;)V"
        }
    .end annotation

    .line 492
    iget-object p3, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mAccountInfoLayout:Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;

    invoke-virtual {p3, p1, p2, p6}, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->setInfo(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onBuildScene()V
    .locals 0

    return-void
.end method

.method public onKugouAccountInfoUpdated(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipDetail;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onKugouAuthChanged(Z)V
    .locals 0

    return-void
.end method

.method public onMusicDataLoad(I)V
    .locals 3

    if-nez p1, :cond_0

    .line 527
    iget v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mIndex:I

    if-nez v0, :cond_0

    .line 528
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->setViewPageState(I)V

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 530
    iget v2, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mIndex:I

    if-ne v2, v0, :cond_1

    .line 531
    invoke-direct {p0, v2}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->setViewPageState(I)V

    :cond_1
    if-ne p1, v0, :cond_2

    .line 534
    iget p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mIndex:I

    if-ne p1, v1, :cond_2

    .line 535
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->setViewPageState(I)V

    :cond_2
    return-void
.end method

.method public onNeteaaseAccountInfoUpdated(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipDetail;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onNeteaseAuthChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 3

    const-string v0, "QQMineFragment"

    const-string v1, "onResume: ========="

    .line 550
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onPause()V

    .line 552
    invoke-static {}, Lawv;->a()Lawv;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->getMenuIndex()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lawv;->a(IZ)V

    .line 553
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object v0

    const-string v1, "VIEW_COLLECT"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/common/n;->b(Ljava/lang/String;)V

    .line 554
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object v0

    const-string v1, "VIEW_SHEET"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/common/n;->b(Ljava/lang/String;)V

    .line 555
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object v0

    const-string v1, "VIEW_HISTORY"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/common/n;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onProgramDataLoad(I)V
    .locals 0

    return-void
.end method

.method public onQqAuthChanged(Z)V
    .locals 0

    return-void
.end method

.method public onRadioDataLoad(I)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 3

    const-string v0, "QQMineFragment"

    const-string v1, "onResume: ========="

    .line 541
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onResume()V

    .line 543
    invoke-static {}, Lawv;->a()Lawv;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->getMenuIndex()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lawv;->a(IZ)V

    .line 544
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$u;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$u;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 545
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->refreshSpeechArrive(I)V

    return-void
.end method

.method public onSyncEnd()V
    .locals 0

    return-void
.end method

.method public onSyncLoading()V
    .locals 0

    return-void
.end method

.method public onSyncStart()V
    .locals 0

    return-void
.end method

.method public onSyncState(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/mine/ResultState;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onVuiEvent(Landroid/view/View;Lbyf;)V
    .locals 0

    .line 579
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    .line 580
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method public onXmlyAccountInfoUpdated(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onXmlyAuthChanged(Z)V
    .locals 0

    return-void
.end method

.method protected reportPageChanged(I)V
    .locals 3

    .line 614
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->getPageName()Ljava/lang/String;

    move-result-object v0

    .line 615
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->getSubPageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const-string v1, "Music_Mine_SubPage_Self_Edit"

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const-string v1, "Music_Mine_SubPage_History"

    .line 622
    :cond_1
    :goto_0
    invoke-static {}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->getInstance()Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->reportPageExposure(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected reviewOnScreenChange()V
    .locals 2

    .line 599
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->reviewOnScreenChange()V

    .line 600
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mMusicScrollLayout:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->setVisibility(I)V

    return-void
.end method

.method public selectTab(I)V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/e;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/e;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment$1;-><init>(Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$c;)V

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment$2;-><init>(Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 264
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mAccountInfoLayout:Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment$3;-><init>(Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->setLogOutClick(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mAccountInfoLayout:Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment$4;-><init>(Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->setBuyClick(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mAccountInfoLayout:Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment$5;-><init>(Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->setContinuePlayClick(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setView()V
    .locals 8

    .line 126
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->setView()V

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 128
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->reviewOnScreenChange()V

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mAccountInfoLayout:Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->setSceneId(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->mine_music_collect_title:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->inflaterTab(Ljava/lang/String;)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->addTab(Lcom/google/android/material/tabs/TabLayout$f;I)V

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->mine_music_self_title:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->inflaterTab(Ljava/lang/String;)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->addTab(Lcom/google/android/material/tabs/TabLayout$f;I)V

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->mine_music_history_title:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->inflaterTab(Ljava/lang/String;)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v4}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->addTab(Lcom/google/android/material/tabs/TabLayout$f;I)V

    .line 133
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/mine/a$d;->music_collect_mine_layout:I

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 134
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v6, Lcom/xiaopeng/musicradio/mine/a$d;->music_playlist_mine_layout:I

    invoke-virtual {v1, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 135
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lcom/xiaopeng/musicradio/mine/a$d;->music_history_mine_layout:I

    invoke-virtual {v6, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 136
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 140
    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    instance-of v6, v0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;

    if-eqz v6, :cond_0

    .line 145
    move-object v6, v0

    check-cast v6, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;

    iput-object v6, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mMusicCollectLayout:Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;

    .line 146
    iget-object v6, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mMusicCollectLayout:Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;

    invoke-virtual {v6, v2}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->setPosition(I)V

    .line 148
    :cond_0
    sget v6, Lcom/xiaopeng/musicradio/mine/a$c;->music_play_list_layout:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;

    iput-object v6, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mMusicPlayListLayout:Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;

    .line 149
    iget-object v6, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mMusicPlayListLayout:Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;

    invoke-virtual {v6, v3}, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->setPosition(I)V

    .line 150
    instance-of v6, v5, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;

    if-eqz v6, :cond_1

    .line 151
    move-object v6, v5

    check-cast v6, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;

    iput-object v6, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mMusicHistoryLayout:Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;

    .line 152
    iget-object v6, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mMusicHistoryLayout:Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;

    invoke-virtual {v6, v4}, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->setPosition(I)V

    .line 154
    :cond_1
    iget-object v6, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mViews:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v6, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mViews:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v6, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mViews:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 158
    new-instance v7, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;

    invoke-direct {v7}, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;-><init>()V

    .line 159
    iput v2, v7, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;->type:I

    .line 160
    iput-object v0, v7, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;->view:Landroid/view/View;

    .line 161
    new-instance v0, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;-><init>()V

    .line 162
    iput v3, v0, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;->type:I

    .line 163
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;->view:Landroid/view/View;

    .line 164
    new-instance v3, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;

    invoke-direct {v3}, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;-><init>()V

    .line 165
    iput v4, v3, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;->type:I

    .line 166
    iput-object v5, v3, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;->view:Landroid/view/View;

    .line 167
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v0, Lcom/xiaopeng/musicradio/widget/e;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, v6}, Lcom/xiaopeng/musicradio/widget/e;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/e;

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/e;

    invoke-virtual {v0, v3}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 172
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->music_play_list_layout:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;

    .line 173
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->getAccountType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->setTips(I)V

    .line 174
    invoke-direct {p0, v2}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->setViewPageState(I)V

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mAccountInfoLayout:Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->getVipSaleType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->setVipSaleType(I)V

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mAccountInfoLayout:Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->isShowContinuePlay()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->showContinuePlay(Z)V

    return-void
.end method

.method protected shouldHandleBackPress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected showBuyDialog()V
    .locals 3

    .line 410
    invoke-static {}, Latu;->b()V

    .line 411
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbtg;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbtg;

    .line 412
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lbtg;->startVipBuy(Landroid/content/Context;I)V

    .line 413
    invoke-static {}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->getInstance()Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->getPageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Music_Mine_SubPage_Buy"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->reportPageExposure(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected showContinuePlaySettingDialog()V
    .locals 3

    .line 462
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mContinuePlaySettingDialog:Lcom/xiaopeng/musicradio/mine/main/setting/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/main/setting/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 465
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/mine/main/setting/a;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->getAccountType()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/mine/main/setting/a;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mContinuePlaySettingDialog:Lcom/xiaopeng/musicradio/mine/main/setting/a;

    .line 466
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mContinuePlaySettingDialog:Lcom/xiaopeng/musicradio/mine/main/setting/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/main/setting/a;->a()V

    return-void
.end method

.method protected showLogoutDialog()V
    .locals 3

    .line 417
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mLogoutDialog:Lcom/xiaopeng/musicradio/widget/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/f;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 420
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->getAccountType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 425
    :cond_1
    invoke-static {}, Latu;->e()V

    goto :goto_0

    .line 428
    :cond_2
    invoke-static {}, Latu;->c()V

    goto :goto_0

    .line 422
    :cond_3
    invoke-static {}, Latu;->a()V

    .line 431
    :goto_0
    new-instance v0, Lcom/xiaopeng/musicradio/widget/f;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/widget/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mLogoutDialog:Lcom/xiaopeng/musicradio/widget/f;

    .line 432
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mLogoutDialog:Lcom/xiaopeng/musicradio/widget/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/f;->a(Z)V

    .line 433
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mLogoutDialog:Lcom/xiaopeng/musicradio/widget/f;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/f;->setScreenId(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 434
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mLogoutDialog:Lcom/xiaopeng/musicradio/widget/f;

    sget-object v1, Lcom/xiaopeng/musicradio/vui/c;->bk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/f;->setVuiSceneId(Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mLogoutDialog:Lcom/xiaopeng/musicradio/widget/f;

    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/f;->setVuiEngine(Lbxu;)V

    .line 436
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mLogoutDialog:Lcom/xiaopeng/musicradio/widget/f;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->text_dialog_logout:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/f;->setMessage(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    .line 437
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/mine/a$e;->user_logout:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment$7;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment$7;-><init>(Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    .line 446
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/mine/a$e;->cancel:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment$6;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment$6;-><init>(Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->user_logout:I

    .line 453
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 454
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mLogoutDialog:Lcom/xiaopeng/musicradio/widget/f;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/f;->show()V

    return-void
.end method

.method public updateData()V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mMusicCollectLayout:Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 322
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->updateMusicLove(Z)V

    .line 323
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mMusicCollectLayout:Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->updateAlbumLove(Z)V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->mMusicHistoryLayout:Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;

    if-eqz v0, :cond_1

    .line 326
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->updateHistoryInfo()V

    :cond_1
    return-void
.end method
