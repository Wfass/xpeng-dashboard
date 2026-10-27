.class public Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;
.super Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;
.source "SingerDetailFragment.java"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/app/music/detail/singer_detail"
.end annotation


# instance fields
.field private mCollectContent:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;

.field private mCollectHasInit:Z

.field private mIndex:I

.field private mMusicScrollLayout:Lcom/xiaopeng/musicradio/widget/ProgramScrollLayout;

.field private mPageAdapter:Lcom/xiaopeng/musicradio/widget/e;

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

    .line 55
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mViews:Ljava/util/List;

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mCollectHasInit:Z

    .line 63
    iput v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;)Lcom/xiaopeng/xui/widget/XTabLayout_V5;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->loadAlbum()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;)Ljava/util/List;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mViews:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mIndex:I

    return p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method private addAlbum()V
    .locals 3

    .line 143
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lbez$f;->singer_album_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 144
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 147
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v1, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;-><init>()V

    const/4 v2, 0x1

    .line 150
    iput v2, v1, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;->type:I

    .line 151
    iput-object v0, v1, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;->view:Landroid/view/View;

    .line 152
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mPageAdapter:Lcom/xiaopeng/musicradio/widget/e;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/musicradio/widget/e;->a(Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;)V

    .line 153
    sget v1, Lbez$d;->collect_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mCollectContent:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mCollectContent:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mMusicScrollLayout:Lcom/xiaopeng/musicradio/widget/ProgramScrollLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->setMusicScrollLayout(Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;)V

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mCollectContent:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mAccountType:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->setAccountType(I)V

    return-void
.end method

.method private loadAlbum()V
    .locals 2

    .line 211
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mCollectHasInit:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 214
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mCollectHasInit:Z

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mCollectContent:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;

    if-nez v0, :cond_1

    .line 216
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->addAlbum()V

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mCollectContent:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->setmId(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mCollectContent:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->loadData()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->createPresenter()Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerDetailPresenter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->createPresenter()Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerDetailPresenter;

    move-result-object v0

    return-object v0
.end method

.method public createPresenter()Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerDetailPresenter;
    .locals 1

    .line 71
    new-instance v0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerDetailPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerDetailPresenter;-><init>()V

    return-object v0
.end method

.method public findView()V
    .locals 5

    .line 81
    sget v0, Lbez$d;->audio_logo:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mAudioLogo:Lcom/xiaopeng/xui/widget/XImageView;

    .line 82
    sget v0, Lbez$d;->common_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mCommonTitle:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    .line 83
    sget v0, Lbez$d;->music_scroll_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/ProgramScrollLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mMusicScrollLayout:Lcom/xiaopeng/musicradio/widget/ProgramScrollLayout;

    .line 84
    sget v0, Lbez$d;->music_top_Layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->setRoundRadius(F)V

    .line 87
    sget v0, Lbez$d;->layout_tab:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    .line 88
    sget v0, Lbez$d;->viewpager:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    sget v1, Lbez$g;->music_singer_song:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bu;->a(Lcom/xiaopeng/xui/widget/XTabLayout_V5;Ljava/lang/String;)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->addTab(Lcom/google/android/material/tabs/TabLayout$f;I)V

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    sget v1, Lbez$g;->music_singer_album:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bu;->a(Lcom/xiaopeng/xui/widget/XTabLayout_V5;Ljava/lang/String;)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->addTab(Lcom/google/android/material/tabs/TabLayout$f;I)V

    .line 93
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lbez$f;->singer_music_layout:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 94
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    new-instance v3, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;

    invoke-direct {v3}, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;-><init>()V

    .line 102
    iput v2, v3, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;->type:I

    .line 103
    iput-object v0, v3, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;->view:Landroid/view/View;

    .line 105
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    move-object v3, v0

    check-cast v3, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerMusicLayout;

    .line 108
    iget-object v4, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mMusicScrollLayout:Lcom/xiaopeng/musicradio/widget/ProgramScrollLayout;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerMusicLayout;->setMusicScrollLayout(Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;)V

    .line 109
    sget v3, Lbez$d;->loading_item:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    iput-object v3, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    .line 110
    sget v3, Lbez$d;->song_rv:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    .line 112
    new-instance v0, Lcom/xiaopeng/musicradio/widget/e;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lcom/xiaopeng/musicradio/widget/e;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mPageAdapter:Lcom/xiaopeng/musicradio/widget/e;

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mPageAdapter:Lcom/xiaopeng/musicradio/widget/e;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 114
    invoke-virtual {p0, v2}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->setType(I)V

    .line 115
    invoke-static {v2}, Lbjl;->l(I)V

    .line 117
    sget v0, Lbez$d;->music_scroll_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/ProgramScrollLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mMusicScrollLayout:Lcom/xiaopeng/musicradio/widget/ProgramScrollLayout;

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mMusicScrollLayout:Lcom/xiaopeng/musicradio/widget/ProgramScrollLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->setMusicScrollLayout(Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;)V

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mMusicScrollLayout:Lcom/xiaopeng/musicradio/widget/ProgramScrollLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment$1;-><init>(Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/ProgramScrollLayout;->setOnTopListener(Lcom/xiaopeng/musicradio/widget/MusicScrollLayout$a;)V

    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 76
    sget v0, Lbez$f;->fragment_singer_detail:I

    return v0
.end method

.method public getData()V
    .locals 3

    .line 239
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "SINGER_FROM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mSingerFrom:I

    .line 241
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mAccountType:I

    .line 242
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "detail_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mId:Ljava/lang/String;

    .line 243
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "detail_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mTitle:Ljava/lang/String;

    .line 244
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "detail_LOGO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mLogo:Ljava/lang/String;

    .line 245
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "detail_account_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mAccountType:I

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mAccountType:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->b(I)V

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->d()V

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mSingerFrom:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->setSingerFrom(I)V

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->setTitle(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mCommonTitle:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mLogo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->setLogo(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->showLoadingView()V

    .line 256
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->setLogo()V

    :cond_1
    return-void
.end method

.method public getData(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 225
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->getData(Ljava/util/ArrayList;)V

    .line 226
    new-instance p1, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment$4;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment$4;-><init>(Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;)V

    const-wide/16 v0, 0x1f4

    invoke-static {p1, v0, v1}, Lbql;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public getListSignBean()Lcom/xiaopeng/musicradio/bean/ListSignBean;
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mId:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bd;->k(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v0

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 301
    iget v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->k(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSubPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Music_Singer_SubPage_Detail"

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

    .line 306
    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->W(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadMoreListener()V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment$5;-><init>(Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public recordItem()V
    .locals 0

    return-void
.end method

.method public setListener()V
    .locals 2

    .line 168
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->setListener()V

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v1, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment$2;-><init>(Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    new-instance v1, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment$3;-><init>(Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$c;)V

    return-void
.end method

.method public setTotalSong(I)V
    .locals 0

    .line 262
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->setTotalSong(I)V

    return-void
.end method

.method public setView()V
    .locals 2

    .line 160
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->setView()V

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mCommonTitle:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setBackVisible(Z)V

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mCommonTitle:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitleVisible(Z)V

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mCommonTitle:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method protected setViewPageState(I)V
    .locals 2

    .line 276
    iput p1, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mIndex:I

    const/16 v0, 0x12c

    if-nez p1, :cond_1

    .line 278
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/common/a;->i()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    .line 279
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    .line 280
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->updateVuiScene(I)V

    .line 282
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mCollectContent:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;

    if-eqz p1, :cond_3

    .line 283
    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->setIsVisible(Z)V

    goto :goto_0

    .line 287
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/common/a;->i()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 288
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    .line 289
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->updateVuiScene(I)V

    .line 291
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mCollectContent:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    .line 292
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->setIsVisible(Z)V

    .line 295
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->getSceneId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
