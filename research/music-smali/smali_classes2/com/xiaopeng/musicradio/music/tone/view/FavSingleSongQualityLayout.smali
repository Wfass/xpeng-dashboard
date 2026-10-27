.class public Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;
.super Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;
.source "FavSingleSongQualityLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/music/tone/view/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/music/tone/view/b;",
        "Lbjo;",
        ">;",
        "Lcom/xiaopeng/musicradio/music/tone/view/b;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FavSingleSongQualityLayout"


# instance fields
.field private mCurQuality:I

.field private mMusicInfo:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

.field private mNeedVipArr:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mQualityChooseCallback:Lcom/xiaopeng/musicradio/music/tone/view/a;

.field private mQualityLayoutArr:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mRootLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->mQualityLayoutArr:Landroid/util/SparseArray;

    const/4 p1, -0x1

    .line 47
    iput p1, p0, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->mCurQuality:I

    .line 49
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->mNeedVipArr:Landroid/util/SparseArray;

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->mMusicInfo:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 45
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->mQualityLayoutArr:Landroid/util/SparseArray;

    const/4 p1, -0x1

    .line 47
    iput p1, p0, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->mCurQuality:I

    .line 49
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->mNeedVipArr:Landroid/util/SparseArray;

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->mMusicInfo:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->mQualityLayoutArr:Landroid/util/SparseArray;

    const/4 p1, -0x1

    .line 47
    iput p1, p0, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->mCurQuality:I

    .line 49
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->mNeedVipArr:Landroid/util/SparseArray;

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->mMusicInfo:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    return-void
.end method

.method private setQualityCallback()V
    .locals 3

    const/4 v0, 0x0

    .line 104
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->mQualityLayoutArr:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->mQualityLayoutArr:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 106
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->mQualityLayoutArr:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;

    .line 107
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->mQualityChooseCallback:Lcom/xiaopeng/musicradio/music/tone/view/a;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->setQualityChooseListener(Lcom/xiaopeng/musicradio/music/tone/view/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected createPresenter()Lbjo;
    .locals 1

    .line 71
    new-instance v0, Lbjo;

    invoke-direct {v0}, Lbjo;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/widget/lifecycle/a;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->createPresenter()Lbjo;

    move-result-object v0

    return-object v0
.end method

.method protected findView()V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->mQualityLayoutArr:Landroid/util/SparseArray;

    sget v1, Lbez$d;->layout_standard:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->mQualityLayoutArr:Landroid/util/SparseArray;

    sget v1, Lbez$d;->layout_hight:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->mQualityLayoutArr:Landroid/util/SparseArray;

    sget v1, Lbez$d;->layout_perfect:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->mQualityLayoutArr:Landroid/util/SparseArray;

    sget v1, Lbez$d;->layout_hires:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->mQualityLayoutArr:Landroid/util/SparseArray;

    sget v1, Lbez$d;->layout_mq:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    sget v0, Lbez$d;->layout_dolby:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;

    .line 83
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->mQualityLayoutArr:Landroid/util/SparseArray;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    sget v0, Lbez$d;->root_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->mRootLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 113
    sget v0, Lbez$f;->layout_song_quality_single_fav:I

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 118
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 119
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->mMusicInfo:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->setStatus(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->mQualityChooseCallback:Lcom/xiaopeng/musicradio/music/tone/view/a;

    if-eqz v0, :cond_0

    .line 186
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/tone/view/a;->a()V

    :cond_0
    return-void
.end method

.method public onQualityDatasSucceed(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 1

    .line 146
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->setStatus(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 148
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lbqp;->b(I)Lbqn;

    move-result-object p1

    invoke-interface {p1}, Lbqn;->i()Lcom/xiaopeng/musicradio/bean/BaseInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 152
    :cond_0
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    if-eqz p1, :cond_2

    .line 154
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getQuality()I

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getQuality()I

    move-result p1

    .line 155
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->onRefreshSelected(I)V

    :cond_2
    return-void
.end method

.method public onRefreshCurMusicInfo(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 0

    .line 166
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->setMusicInfo(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    return-void
.end method

.method public onRefreshSelected(I)V
    .locals 4

    .line 131
    iput p1, p0, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->mCurQuality:I

    const/4 v0, 0x0

    move v1, v0

    .line 132
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->mQualityLayoutArr:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 133
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->mQualityLayoutArr:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 134
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->mQualityLayoutArr:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v0

    .line 135
    :goto_1
    invoke-virtual {v3, v2}, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onShowLoading(ZI)V
    .locals 0

    return-void
.end method

.method protected setListener()V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->setQualityCallback()V

    return-void
.end method

.method public setMusicInfo(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->mPresenter:Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    check-cast v0, Lbjo;

    invoke-virtual {v0, p1}, Lbjo;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 180
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->onQualityDatasSucceed(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    return-void
.end method

.method public setQualityChooseListener(Lcom/xiaopeng/musicradio/music/tone/view/a;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->mQualityChooseCallback:Lcom/xiaopeng/musicradio/music/tone/view/a;

    .line 94
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->setQualityCallback()V

    return-void
.end method

.method public setStatus(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 10

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FavSingleSongQualityLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->mMusicInfo:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->mNeedVipArr:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 199
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getFileList()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    .line 200
    :goto_0
    iget-object v4, p0, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->mQualityLayoutArr:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 201
    iget-object v4, p0, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->mQualityLayoutArr:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 202
    iget-object v5, p0, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->mQualityLayoutArr:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;

    const/4 v6, 0x0

    .line 203
    invoke-virtual {v5, v6}, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->refreshQuality(Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;)V

    .line 204
    invoke-virtual {v5, v2}, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->setVisibility(I)V

    const/4 v6, 0x4

    const/16 v7, 0x8

    if-ne v4, v6, :cond_0

    .line 205
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/j;->i()Z

    move-result v8

    if-nez v8, :cond_0

    .line 206
    invoke-virtual {v5, v7}, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->setVisibility(I)V

    :cond_0
    const/4 v8, 0x6

    if-ne v4, v8, :cond_1

    .line 208
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/j;->h()I

    move-result v9

    if-nez v9, :cond_1

    .line 209
    invoke-virtual {v5, v7}, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->setVisibility(I)V

    .line 211
    :cond_1
    iget-object v9, p0, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->mPresenter:Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    check-cast v9, Lbjo;

    invoke-virtual {v9}, Lbjo;->d()Z

    move-result v9

    if-nez v9, :cond_3

    const/4 v9, 0x5

    if-eq v4, v9, :cond_2

    if-ne v4, v8, :cond_3

    .line 213
    :cond_2
    invoke-virtual {v5, v7}, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->setVisibility(I)V

    .line 216
    :cond_3
    iget-object v8, p0, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->mPresenter:Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    check-cast v8, Lbjo;

    invoke-virtual {v8}, Lbjo;->e()Z

    move-result v8

    if-nez v8, :cond_4

    if-ne v4, v6, :cond_4

    .line 218
    invoke-virtual {v5, v7}, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->setVisibility(I)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 222
    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 223
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;

    .line 224
    iget-object v4, p0, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->mQualityLayoutArr:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->getQuality()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;

    .line 225
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshQuality: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "itemLayout "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_6

    .line 227
    invoke-virtual {v4, v3}, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->refreshQuality(Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 230
    :cond_7
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/musicradio/vui/c;->bE:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/tone/view/FavSingleSongQualityLayout;->mRootLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method protected setView()V
    .locals 0

    return-void
.end method
