.class public Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;
.super Lcom/xiaopeng/musicradio/view/MusicVuiFragment;
.source "MsMusicDetailActivity.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/music/main/view/b;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/music/activity/music_detail"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiFragment<",
        "Lcom/xiaopeng/musicradio/music/main/view/b;",
        "Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/music/main/view/b;"
    }
.end annotation


# instance fields
.field public mAdapter:Lbii;

.field public mCurrentState:I

.field public mIcAddCollect:Lcom/xiaopeng/xui/widget/XImageView;

.field public mId:Ljava/lang/String;

.field public mIsLove:Z

.field public mLeftContent:Landroid/view/View;

.field public mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

.field public mLogo:Ljava/lang/String;

.field public mMsCollectLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

.field public mMsCollectText:Lcom/xiaopeng/xui/widget/XTextView;

.field public mMsDetailRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

.field public mMsLogo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field public mMsTopLayout:Lcom/xiaopeng/musicradio/widget/DialogTopLayout;

.field public mPlayAllLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

.field private mPlayClickText:Ljava/lang/String;

.field public mPlayIc:Lcom/xiaopeng/xui/widget/XImageView;

.field public mPlayText:Lcom/xiaopeng/xui/widget/XTextView;

.field public mTitle:Ljava/lang/String;

.field public vuilabels:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 66
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;-><init>()V

    const-string v0, "0"

    .line 80
    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mIsLove:Z

    const/4 v1, 0x3

    .line 87
    new-array v1, v1, [Ljava/lang/String;

    sget v2, Lbez$g;->bt_play_all:I

    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    sget v0, Lbez$g;->bt_continue_all:I

    .line 88
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sget v0, Lbez$g;->vui_label_stop:I

    .line 89
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->vuilabels:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mPlayClickText:Ljava/lang/String;

    .line 396
    iput v2, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mCurrentState:I

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->setLoveSate()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->refreshLoadMoreState(I)V

    return-void
.end method

.method private delayUpdateState()V
    .locals 3

    .line 448
    new-instance v0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$8;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$8;-><init>(Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lbql;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private refreshLoadMoreState(I)V
    .locals 2

    .line 506
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mMsDetailRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mMsDetailRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$9;-><init>(Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mAdapter:Lbii;

    invoke-virtual {v0, p1}, Lbii;->b(I)V

    :goto_0
    return-void
.end method

.method private resetPlayState()V
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mAdapter:Lbii;

    invoke-virtual {v0}, Lbii;->g()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 392
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mAdapter:Lbii;

    invoke-virtual {v1, v0}, Lbii;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method private setLoveSate()V
    .locals 4

    .line 458
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 461
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mIsLove:Z

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mIcAddCollect:Lcom/xiaopeng/xui/widget/XImageView;

    sget v3, Lbez$c;->ic_32_cloudlike_hl:I

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_1

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mIcAddCollect:Lcom/xiaopeng/xui/widget/XImageView;

    sget v3, Lbez$c;->ic_32_cloudlike_nor:I

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_1

    .line 467
    :cond_2
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mIsLove:Z

    if-eqz v0, :cond_3

    .line 468
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mIcAddCollect:Lcom/xiaopeng/xui/widget/XImageView;

    sget v3, Lbez$c;->ic_32_list_like_hl:I

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_1

    .line 470
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mIcAddCollect:Lcom/xiaopeng/xui/widget/XImageView;

    sget v3, Lbez$c;->ic_32_list_like_nor_musicdetail:I

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 474
    :goto_1
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mIsLove:Z

    if-eqz v0, :cond_4

    .line 475
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mMsCollectText:Lcom/xiaopeng/xui/widget/XTextView;

    sget v2, Lbez$g;->has_collect:I

    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mMsCollectLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setSelected(Z)V

    goto :goto_2

    .line 478
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mMsCollectText:Lcom/xiaopeng/xui/widget/XTextView;

    sget v1, Lbez$g;->collect_music:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mMsCollectLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setSelected(Z)V

    .line 481
    :goto_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->getSceneId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mMsCollectLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public addData(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 334
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->refreshLoadMoreState(I)V

    .line 335
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mAdapter:Lbii;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lbii;->b(Ljava/util/List;Z)V

    .line 336
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->createPresenter()Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    move-result-object v0

    return-object v0
.end method

.method public createPresenter()Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;
    .locals 1

    .line 95
    new-instance v0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;-><init>()V

    return-object v0
.end method

.method public findView()V
    .locals 1

    .line 105
    sget v0, Lbez$d;->ms_top_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mMsTopLayout:Lcom/xiaopeng/musicradio/widget/DialogTopLayout;

    .line 106
    sget v0, Lbez$d;->loadingview:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    .line 107
    sget v0, Lbez$d;->ms_logo:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mMsLogo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    .line 108
    sget v0, Lbez$d;->ms_collect_text:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mMsCollectText:Lcom/xiaopeng/xui/widget/XTextView;

    .line 109
    sget v0, Lbez$d;->ms_collect_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mMsCollectLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    .line 110
    sget v0, Lbez$d;->left_content:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mLeftContent:Landroid/view/View;

    .line 111
    sget v0, Lbez$d;->ms_detail_rv:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mMsDetailRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    .line 112
    sget v0, Lbez$d;->ic_add_collect:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mIcAddCollect:Lcom/xiaopeng/xui/widget/XImageView;

    .line 113
    sget v0, Lbez$d;->play_all_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mPlayAllLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    .line 114
    sget v0, Lbez$d;->play_ic:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mPlayIc:Lcom/xiaopeng/xui/widget/XImageView;

    .line 115
    sget v0, Lbez$d;->play_tv:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mPlayText:Lcom/xiaopeng/xui/widget/XTextView;

    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 100
    sget v0, Lbez$f;->music_activity_music_detail:I

    return v0
.end method

.method public getData()V
    .locals 4

    .line 154
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "detail_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mId:Ljava/lang/String;

    .line 156
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "detail_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mTitle:Ljava/lang/String;

    .line 157
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "detail_LOGO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mLogo:Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->d()V

    .line 160
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->showLoadingView()V

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mMsTopLayout:Lcom/xiaopeng/musicradio/widget/DialogTopLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 162
    invoke-static {}, Lazz;->a()Lazz;

    move-result-object v0

    invoke-virtual {v0}, Lazz;->b()Lazy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lazy;->b(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mIsLove:Z

    .line 163
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->setLoveSate()V

    .line 164
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mLogo:Ljava/lang/String;

    sget v2, Lbez$c;->pic_covers_music_220:I

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mMsLogo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method public getData(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mLeftContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mMsDetailRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    .line 319
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->showLoadingTip(I)V

    .line 320
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mAdapter:Lbii;

    invoke-virtual {v0}, Lbii;->getItemCount()I

    move-result v0

    .line 321
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 322
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mAdapter:Lbii;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lbii;->a(Ljava/util/List;Z)V

    goto :goto_0

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mAdapter:Lbii;

    invoke-virtual {v0, p1, v1}, Lbii;->a(Ljava/util/List;Z)V

    .line 325
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mAdapter:Lbii;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lbii;->notifyItemRangeChanged(II)V

    .line 327
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 328
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->delayUpdateState()V

    const/4 p1, 0x2

    .line 329
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->refreshLoadMoreState(I)V

    return-void
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 2

    .line 583
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arguments"

    .line 584
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public getListSignBean()Lcom/xiaopeng/musicradio/bean/ListSignBean;
    .locals 2

    .line 496
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mId:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bd;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v0

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 502
    iget v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->e(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initPlayAll()V
    .locals 2

    .line 432
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    .line 433
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->isPlayCurrentCollect()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 434
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->q()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mPlayIc:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lbez$c;->ic_btn_playall:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 440
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mPlayText:Lcom/xiaopeng/xui/widget/XTextView;

    sget v1, Lbez$g;->bt_continue_all:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 436
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mPlayIc:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lbez$c;->ic_btn_stop:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 437
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mPlayText:Lcom/xiaopeng/xui/widget/XTextView;

    sget v1, Lbez$g;->bt_pause:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 443
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->resetPlayAll()V

    :goto_1
    return-void
.end method

.method public isPlayCurrentCollect()Z
    .locals 3

    .line 519
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->g()Ljava/lang/String;

    move-result-object v0

    .line 520
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"collectId\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadEnd()V
    .locals 1

    const/4 v0, 0x1

    .line 538
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->refreshLoadMoreState(I)V

    .line 539
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mAdapter:Lbii;

    invoke-virtual {v0}, Lbii;->d()V

    return-void
.end method

.method public loadMoreListener()V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mMsDetailRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$7;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$7;-><init>(Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public notifySpeechChange()V
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mAdapter:Lbii;

    invoke-virtual {v0}, Lbii;->notifyDataSetChanged()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 311
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 312
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mAdapter:Lbii;

    invoke-virtual {p1}, Lbii;->notifyDataSetChanged()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 544
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onResume()V

    .line 545
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mAdapter:Lbii;

    invoke-virtual {v0}, Lbii;->notifyDataSetChanged()V

    return-void
.end method

.method public onVuiEvent(Landroid/view/View;Lbyf;)V
    .locals 2

    if-eqz p1, :cond_4

    .line 551
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mPlayAllLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->getId()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 552
    invoke-virtual {p2, p2}, Lbyf;->getEventValue(Lbyf;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 553
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->vuilabels:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz p2, :cond_4

    .line 554
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 555
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 565
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mPlayText:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/XTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    sget v1, Lbez$g;->bt_pause:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 566
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    .line 567
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mPlayAllLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->performClick()Z

    goto :goto_1

    .line 569
    :cond_1
    new-instance p2, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    invoke-direct {p2}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;-><init>()V

    invoke-virtual {p2, v0}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->state(I)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object p2

    sget v0, Lbez$g;->vui_feed_back_pause:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->content(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->build()Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    move-result-object p2

    .line 570
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->vuiFeedback(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V

    goto :goto_1

    .line 557
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mPlayText:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/XTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    sget v1, Lbez$g;->bt_pause:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 558
    new-instance p2, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    invoke-direct {p2}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;-><init>()V

    invoke-virtual {p2, v0}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->state(I)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object p2

    sget v0, Lbez$g;->vui_feed_back_play:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->content(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->build()Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    move-result-object p2

    .line 559
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->vuiFeedback(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V

    goto :goto_1

    .line 561
    :cond_3
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    .line 562
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mPlayAllLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->performClick()Z

    :cond_4
    :goto_1
    return-void
.end method

.method public recordItem()V
    .locals 2

    .line 485
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;-><init>()V

    const-string v1, "listsign_recommend_music"

    .line 486
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setType(Ljava/lang/String;)V

    .line 487
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setTitle(Ljava/lang/String;)V

    .line 488
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setName(Ljava/lang/String;)V

    .line 489
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mLogo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogoUrl(Ljava/lang/String;)V

    .line 490
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mLogo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogo(Ljava/lang/String;)V

    .line 491
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setId(Ljava/lang/String;)V

    .line 492
    invoke-static {}, Lbak;->a()Lbak;

    move-result-object v1

    invoke-virtual {v1}, Lbak;->b()Lbaj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbaj;->b(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    return-void
.end method

.method public refreshLove(Z)V
    .locals 0

    .line 341
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mIsLove:Z

    .line 342
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->setLoveSate()V

    return-void
.end method

.method public resetPlayAll()V
    .locals 2

    .line 427
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mPlayIc:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lbez$c;->ic_btn_playall:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 428
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mPlayText:Lcom/xiaopeng/xui/widget/XTextView;

    sget v1, Lbez$g;->bt_play_all:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setAdapter()V
    .locals 5

    .line 143
    new-instance v0, Lbii;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lbez$f;->music_item_music_detail_list:I

    new-instance v3, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$1;

    invoke-direct {v3, p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$1;-><init>(Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;)V

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v4, v3}, Lbii;-><init>(Landroid/content/Context;IILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mAdapter:Lbii;

    return-void
.end method

.method public setListener()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    new-instance v1, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$2;-><init>(Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mMsTopLayout:Lcom/xiaopeng/musicradio/widget/DialogTopLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$3;-><init>(Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->setCloseListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mMsCollectLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$4;-><init>(Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mPlayAllLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$5;-><init>(Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mAdapter:Lbii;

    new-instance v1, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$6;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$6;-><init>(Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;)V

    invoke-virtual {v0, v1}, Lbii;->a(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;)V

    .line 242
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->loadMoreListener()V

    return-void
.end method

.method public setTotalSong(I)V
    .locals 0

    return-void
.end method

.method public setView()V
    .locals 6

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setAutoClickLoadingEnable(Z)V

    .line 121
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->setAdapter()V

    .line 122
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->getData()V

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mMsTopLayout:Lcom/xiaopeng/musicradio/widget/DialogTopLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->showRtLayout(Z)V

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mMsDetailRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setHasFixedSize(Z)V

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mMsDetailRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v3, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mMsDetailRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mMsDetailRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v3, Lcom/xiaopeng/musicradio/widget/recyclerview/j;

    const/16 v4, 0xc

    invoke-direct {v3, v4, v1, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/j;-><init>(III)V

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mMsDetailRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mMsDetailRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mAdapter:Lbii;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mId:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mAdapter:Lbii;

    invoke-virtual {v1, v0}, Lbii;->a(Ljava/lang/String;)V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mPlayAllLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->vuilabels:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lbxx;->SETVALUE:Lbxx;

    invoke-virtual {v5}, Lbxx;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lbxx;->CLICK:Lbxx;

    invoke-virtual {v5}, Lbxx;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v3, v4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mMsDetailRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->initVuiAttr(Ljava/lang/String;Lbxu;)V

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mMsDetailRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->enableVuiInvisibleFeature(I)V

    .line 136
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->initPlayAll()V

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    sget v1, Lbez$g;->copyright_restrict_hint:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setNoResultText(I)V

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mPlayAllLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->b(Lcom/xiaopeng/xui/vui/VuiView;)V

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mPlayAllLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    sget-object v1, Lbyb;->LEVEL2:Lbyb;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVuiPriority(Lbyb;)V

    return-void
.end method

.method public showErrorView(Ljava/lang/String;)V
    .locals 2

    .line 284
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->i()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 285
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mLeftContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 286
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mMsDetailRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    .line 287
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->showLoadingTip(I)V

    .line 289
    :cond_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->refreshLoadMoreState(I)V

    return-void
.end method

.method public showLoadingTip(I)V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    goto :goto_1

    .line 303
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    :goto_1
    return-void
.end method

.method public showLoadingView()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mLeftContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mMsDetailRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 279
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->showLoadingTip(I)V

    return-void
.end method

.method public showNoDataView(Ljava/lang/String;)V
    .locals 1

    .line 294
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mLeftContent:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 295
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mMsDetailRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    const/4 p1, 0x3

    .line 296
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->showLoadingTip(I)V

    const/4 p1, 0x2

    .line 297
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->refreshLoadMoreState(I)V

    return-void
.end method

.method public updateEstimateLoadingTime(D)V
    .locals 0

    return-void
.end method

.method public updateLove(Ljava/lang/String;Z)V
    .locals 3

    .line 377
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mAdapter:Lbii;

    invoke-virtual {v0}, Lbii;->j()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 378
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 380
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 381
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 382
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mAdapter:Lbii;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lbii;->notifyItemChanged(ILjava/lang/Object;)V

    .line 383
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mMsDetailRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 p2, 0x320

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->updateVuiScene(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public updatePlayAll()V
    .locals 5

    .line 399
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_3

    .line 401
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->isPlayCurrentCollect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 402
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->q()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mPlayIc:Lcom/xiaopeng/xui/widget/XImageView;

    sget v2, Lbez$c;->ic_btn_playall:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 409
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mPlayText:Lcom/xiaopeng/xui/widget/XTextView;

    sget v2, Lbez$g;->bt_continue_all:I

    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 404
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mPlayIc:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lbez$c;->ic_btn_stop:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 405
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mPlayText:Lcom/xiaopeng/xui/widget/XTextView;

    sget v1, Lbez$g;->bt_pause:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    move v1, v2

    goto :goto_1

    .line 413
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->resetPlayAll()V

    goto :goto_1

    .line 416
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->resetPlayAll()V

    .line 418
    :goto_1
    iget v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mCurrentState:I

    if-eq v1, v0, :cond_4

    .line 419
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mPlayAllLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->vuilabels:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lbxx;->SETVALUE:Lbxx;

    invoke-virtual {v4}, Lbxx;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lbxx;->CLICK:Lbxx;

    invoke-virtual {v4}, Lbxx;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->getSceneId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mPlayAllLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 421
    iput v1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mCurrentState:I

    :cond_4
    return-void
.end method

.method public updatePlayState()V
    .locals 4

    .line 348
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mAdapter:Lbii;

    invoke-virtual {v0}, Lbii;->g()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mAdapter:Lbii;

    invoke-virtual {v1, v0}, Lbii;->notifyItemChanged(I)V

    .line 352
    :cond_0
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    if-nez v0, :cond_3

    .line 354
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->d()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 356
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mAdapter:Lbii;

    invoke-virtual {v1}, Lbii;->j()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 357
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 359
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 360
    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 361
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mAdapter:Lbii;

    invoke-virtual {v0, v2}, Lbii;->notifyItemChanged(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 366
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->resetPlayState()V

    goto :goto_1

    .line 369
    :cond_3
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->resetPlayState()V

    .line 371
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->updatePlayAll()V

    .line 372
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mMsDetailRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->updateVuiScene()V

    return-void
.end method
