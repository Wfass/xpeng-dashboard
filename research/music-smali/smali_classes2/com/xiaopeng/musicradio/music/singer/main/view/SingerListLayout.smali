.class public Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;
.source "SingerListLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/music/singer/main/view/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/music/singer/main/view/b;",
        "Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/music/singer/main/view/b;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SingerListLayout"


# instance fields
.field protected mAreaCode:Ljava/lang/String;

.field private mHasLoadData:Z

.field private mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

.field protected mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private mMenuIndex:I

.field protected mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

.field protected mSceneId:Ljava/lang/String;

.field protected mSingerAdapter:Lbjh;

.field protected mTypeCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mHasLoadData:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mHasLoadData:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mHasLoadData:Z

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;)Lcom/xiaopeng/musicradio/widget/LoadingTipsView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method private showLoadingTip(I)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 201
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    goto :goto_0

    .line 203
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addHotData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public clear()V
    .locals 3

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clear: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mAreaCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mTypeCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SingerListLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mSingerAdapter:Lbjh;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lbjh;->a(Ljava/util/List;Z)V

    return-void
.end method

.method protected createAdapter()V
    .locals 3

    .line 117
    new-instance v0, Lbjh;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-direct {v0, v1, v2}, Lbjh;-><init>(Landroid/content/Context;Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mSingerAdapter:Lbjh;

    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->createPresenter()Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;
    .locals 1

    .line 87
    new-instance v0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;-><init>()V

    return-object v0
.end method

.method public enterScene()V
    .locals 2

    .line 316
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laqy;->a(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->isMainScene()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->enterScene(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public exitScene()V
    .locals 2

    .line 323
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laqy;->b(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->isMainScene()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->exitScene(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected findView()V
    .locals 2

    .line 92
    sget v0, Lbez$d;->hot_recycleview:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    .line 93
    sget v0, Lbez$d;->loading_item:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 95
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setAutoClickLoadingEnable(Z)V

    :cond_0
    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 172
    sget v0, Lbez$f;->singer_list_layout:I

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mSceneId:Ljava/lang/String;

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

    const/4 v0, 0x3

    .line 342
    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->W(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->j(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isMainScene()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPlayIng(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 299
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "listsign_artist_radio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\"collectId\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\","

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public loadEnd()V
    .locals 0

    return-void
.end method

.method protected loadSingerData(Ljava/lang/String;)V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mAreaCode:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public notifySpeechChange()V
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mSingerAdapter:Lbjh;

    invoke-virtual {v0}, Lbjh;->notifyDataSetChanged()V

    return-void
.end method

.method public onBuildScene()V
    .locals 5

    .line 336
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->getSceneId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->getSubSceneList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->isMainScene()Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 122
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 123
    invoke-static {p1}, Lapo;->b(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "SingerListLayout"

    const-string v0, "onConfigurationChanged: "

    .line 124
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mSingerAdapter:Lbjh;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lbjh;->getItemCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 126
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mSingerAdapter:Lbjh;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lbjh;->getItemCount()I

    move-result v1

    const-string v2, "payload"

    invoke-virtual {p1, v0, v1, v2}, Lbjh;->notifyItemRangeChanged(IILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onCreateVuiScene()V
    .locals 4

    .line 330
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->getSceneId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/xiaopeng/speech/vui/VuiEngine;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lbxv;Z)V

    :cond_0
    return-void
.end method

.method public onDestroyVuiScene(Z)V
    .locals 2

    .line 346
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->removeVuiSceneListener(Ljava/lang/String;Lbxv;Z)V

    :cond_0
    return-void
.end method

.method public onMusicAuthCheck(I)V
    .locals 0

    return-void
.end method

.method public selectArea(Ljava/lang/String;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mAreaCode:Ljava/lang/String;

    return-void
.end method

.method public selectType(Ljava/lang/String;)V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mTypeCode:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mSingerAdapter:Lbjh;

    invoke-virtual {v0}, Lbjh;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 232
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mTypeCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mTypeCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mSingerAdapter.getData().size(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mSingerAdapter:Lbjh;

    invoke-virtual {v1}, Lbjh;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SingerListLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mTypeCode:Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->c(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mAreaCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->loadSingerData(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setAreaDatas(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setDefault(I)V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->p()V

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->b(I)V

    return-void
.end method

.method public setHotData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;",
            ">;)V"
        }
    .end annotation

    .line 209
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    .line 210
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->showNoDataView(Ljava/lang/String;)V

    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mSingerAdapter:Lbjh;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lbjh;->a(Ljava/util/List;Z)V

    const/4 p1, 0x0

    .line 214
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->showLoadingTip(I)V

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    .line 216
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mHasLoadData:Z

    .line 217
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mSceneId:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mSingerAdapter:Lbjh;

    new-instance v1, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout$1;-><init>(Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;)V

    invoke-virtual {v0, v1}, Lbjh;->a(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;)V

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    new-instance v1, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout$2;-><init>(Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    return-void
.end method

.method public setRecyclerViewVuiAttr(Ljava/lang/String;Ljava/lang/String;Lbyb;)V
    .locals 6

    .line 360
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->initVuiAttr(Ljava/lang/String;Lbxu;ZZZ)V

    .line 361
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVuiLabel(Ljava/lang/String;)V

    .line 362
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p1, p3}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVuiPriority(Lbyb;)V

    return-void
.end method

.method public setSceneId(Ljava/lang/String;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mSceneId:Ljava/lang/String;

    return-void
.end method

.method public setTypeDatas(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setTypeListDatas(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;",
            ">;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected setView()V
    .locals 5

    .line 101
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->m()I

    move-result v0

    const-string v1, "SELECT_MENU_SCENE"

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mMenuIndex:I

    .line 102
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->createAdapter()V

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 104
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/h;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42100000    # 36.0f

    invoke-static {v1, v2}, Lapf;->a(Landroid/content/Context;F)I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;-><init>(IIZ)V

    .line 105
    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->a(I)V

    .line 106
    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->b(I)V

    .line 107
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/widget/recyclerview/j;

    const/16 v4, 0x64

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/musicradio/widget/recyclerview/j;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 109
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setHasFixedSize(Z)V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mSingerAdapter:Lbjh;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setVuiElementId(I)V
    .locals 4

    .line 367
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVuiPosition(I)V

    .line 368
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVuiElementId(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public showErrorView(Ljava/lang/String;)V
    .locals 1

    const/4 p1, 0x0

    .line 186
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mHasLoadData:Z

    .line 187
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    const/4 p1, 0x2

    .line 188
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->showLoadingTip(I)V

    return-void
.end method

.method public showLoadingView()V
    .locals 2

    const/4 v0, 0x0

    .line 178
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mHasLoadData:Z

    .line 179
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->scrollToPosition(I)V

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 181
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->showLoadingTip(I)V

    return-void
.end method

.method public showNoDataView(Ljava/lang/String;)V
    .locals 1

    const/4 p1, 0x0

    .line 193
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mHasLoadData:Z

    .line 194
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    const/4 p1, 0x3

    .line 195
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->showLoadingTip(I)V

    return-void
.end method

.method public updatePlayState(Z)V
    .locals 3

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    .line 276
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mSingerAdapter:Lbjh;

    invoke-virtual {p1}, Lbjh;->j()I

    move-result p1

    if-eq p1, v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mSingerAdapter:Lbjh;

    invoke-virtual {v0, p1}, Lbjh;->notifyItemChanged(I)V

    .line 280
    :cond_0
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->g()Ljava/lang/String;

    move-result-object p1

    .line 281
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mSingerAdapter:Lbjh;

    invoke-virtual {v0}, Lbjh;->k()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 283
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 284
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->isPlayIng(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 285
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mSingerAdapter:Lbjh;

    invoke-virtual {v2, v1}, Lbjh;->notifyItemChanged(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mSingerAdapter:Lbjh;

    invoke-virtual {p1}, Lbjh;->j()I

    move-result p1

    if-eq p1, v0, :cond_3

    .line 292
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mSingerAdapter:Lbjh;

    invoke-virtual {v1, p1}, Lbjh;->notifyItemChanged(I)V

    .line 293
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->mSingerAdapter:Lbjh;

    invoke-virtual {p1, v0}, Lbjh;->d(I)V

    :cond_3
    return-void
.end method
