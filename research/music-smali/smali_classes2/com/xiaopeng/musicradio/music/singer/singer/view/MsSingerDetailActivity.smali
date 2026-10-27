.class public Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;
.super Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;
.source "MsSingerDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/music/activity/singer_detail"
.end annotation


# instance fields
.field private mCollectContent:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;

.field private mCollectHasInit:Z

.field private mCollectLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private mCollectName:Lcom/xiaopeng/xui/widget/XTextView;

.field private mCollectRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

.field private mSingleContent:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private mSingleLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private mSingleName:Lcom/xiaopeng/xui/widget/XTextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mCollectHasInit:Z

    return-void
.end method

.method private setContentState(Z)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 97
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mSingleLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setSelected(Z)V

    .line 98
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mSingleName:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setSelected(Z)V

    .line 99
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mCollectLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setSelected(Z)V

    .line 100
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mCollectName:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setSelected(Z)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mSingleLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setSelected(Z)V

    .line 103
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mSingleName:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setSelected(Z)V

    .line 104
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mCollectLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setSelected(Z)V

    .line 105
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mCollectName:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setSelected(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->createPresenter()Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerDetailPresenter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->createPresenter()Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerDetailPresenter;

    move-result-object v0

    return-object v0
.end method

.method public createPresenter()Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerDetailPresenter;
    .locals 1

    .line 82
    new-instance v0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerDetailPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerDetailPresenter;-><init>()V

    return-object v0
.end method

.method public findView()V
    .locals 1

    .line 39
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->findView()V

    .line 40
    sget v0, Lbez$d;->single_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mSingleLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 41
    sget v0, Lbez$d;->single_name:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mSingleName:Lcom/xiaopeng/xui/widget/XTextView;

    .line 42
    sget v0, Lbez$d;->collect_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mCollectLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 43
    sget v0, Lbez$d;->collect_name:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mCollectName:Lcom/xiaopeng/xui/widget/XTextView;

    .line 44
    sget v0, Lbez$d;->single_content:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mSingleContent:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 45
    sget v0, Lbez$d;->collect_content:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mCollectContent:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;

    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 76
    sget v0, Lbez$f;->music_activity_singer_detail:I

    return v0
.end method

.method public getData()V
    .locals 4

    .line 61
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "detail_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mId:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "detail_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mTitle:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "detail_LOGO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mLogo:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->d()V

    .line 67
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->showLoadingView()V

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mMsTopLayout:Lcom/xiaopeng/musicradio/widget/DialogTopLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    invoke-static {}, Lazz;->a()Lazz;

    move-result-object v0

    invoke-virtual {v0}, Lazz;->b()Lazy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lazy;->b(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mIsLove:Z

    .line 70
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mLogo:Ljava/lang/String;

    sget v2, Lbez$c;->pic_covers_music_220:I

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mMsLogo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method public getListSignBean()Lcom/xiaopeng/musicradio/bean/ListSignBean;
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mId:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bd;->k(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v0

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 142
    iget v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->k(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 112
    sget v0, Lbez$d;->single_layout:I

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v0, :cond_0

    .line 113
    invoke-direct {p0, v3}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->setContentState(Z)V

    .line 114
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mSingleContent:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {p1, v4}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVisibility(I)V

    .line 115
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mFrom:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v4}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 118
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mCollectContent:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->setVisibility(I)V

    .line 119
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->getSceneId()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Landroid/view/View;

    iget-object v5, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mSingleContent:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    aput-object v5, v1, v4

    iget-object v5, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mCollectContent:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;

    aput-object v5, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateElementAttribute(Ljava/lang/String;Ljava/util/List;)V

    .line 120
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->getSceneId()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Landroid/view/View;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mSingleContent:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mCollectContent:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 121
    :cond_0
    sget v0, Lbez$d;->collect_layout:I

    if-ne p1, v0, :cond_2

    .line 122
    invoke-direct {p0, v4}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->setContentState(Z)V

    .line 123
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mSingleContent:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVisibility(I)V

    .line 124
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mFrom:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 125
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mCollectContent:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;

    invoke-virtual {p1, v4}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->setVisibility(I)V

    .line 126
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->getSceneId()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Landroid/view/View;

    iget-object v5, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mSingleContent:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    aput-object v5, v1, v4

    iget-object v5, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mCollectContent:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;

    aput-object v5, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateElementAttribute(Ljava/lang/String;Ljava/util/List;)V

    .line 127
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->getSceneId()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Landroid/view/View;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mSingleContent:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mCollectContent:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Ljava/util/List;)V

    .line 130
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mCollectHasInit:Z

    if-eqz p1, :cond_1

    return-void

    .line 133
    :cond_1
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mCollectHasInit:Z

    .line 134
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mCollectContent:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->setmId(Ljava/lang/String;)V

    .line 135
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mCollectContent:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->loadData()V

    :cond_2
    :goto_0
    return-void
.end method

.method public recordItem()V
    .locals 0

    return-void
.end method

.method public setView()V
    .locals 2

    .line 51
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/main/view/FavMsMusicDetailActivity;->setView()V

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mMsCollectLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    const/4 v0, 0x1

    .line 54
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->setContentState(Z)V

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mSingleLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerDetailActivity;->mCollectLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
