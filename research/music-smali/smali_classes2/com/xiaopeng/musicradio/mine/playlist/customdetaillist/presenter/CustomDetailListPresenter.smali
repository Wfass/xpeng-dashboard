.class public Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;
.super Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter;
.source "CustomDetailListPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter<",
        "Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/a;",
        ">;"
    }
.end annotation


# instance fields
.field public q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/lang/String;

.field private t:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x32

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter;-><init>(ILjava/lang/String;)V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;->q:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;->t:I

    return p1
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;Lcom/xiaopeng/musicradio/datalist/g;)V
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;->a(Lcom/xiaopeng/musicradio/datalist/g;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/datalist/f;)V
    .locals 2

    const-string v0, "CustomDetailListPresenter"

    const-string v1, "getDataListPosted"

    .line 71
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;->r:Ljava/lang/String;

    invoke-static {v0, p1}, Laxu;->a(Ljava/lang/String;Lcom/xiaopeng/musicradio/datalist/f;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 73
    new-instance v1, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter$1;-><init>(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;Lcom/xiaopeng/musicradio/datalist/f;Landroidx/lifecycle/LiveData;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/s;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3

    .line 166
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    invoke-static {}, Laxu;->c()Z

    move-result v0

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePlayingStatus:playing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",from="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CustomDetailListPresenter"

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 174
    invoke-static {}, Laxu;->a()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p1

    .line 175
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/a;

    const/4 v1, 0x1

    new-instance v2, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter$a;

    invoke-direct {v2, p0, p1}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter$a;-><init>(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/a;->updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/a;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/a;->updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected a(ZLjava/lang/Throwable;)V
    .locals 0

    .line 114
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter;->a(ZLjava/lang/Throwable;)V

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 116
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;->a(I)V

    :cond_0
    return-void
.end method

.method public b(Lcom/xiaopeng/musicradio/datalist/g;)V
    .locals 2

    .line 101
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/a;

    if-eqz v0, :cond_1

    .line 103
    iget-boolean v1, p1, Lcom/xiaopeng/musicradio/datalist/g;->l:Z

    if-nez v1, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;->v()V

    const/4 p1, 0x0

    .line 105
    iget v1, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;->t:I

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/a;->onDataListLoaded(Ljava/util/List;I)V

    goto :goto_0

    .line 107
    :cond_0
    iget v1, p1, Lcom/xiaopeng/musicradio/datalist/g;->g:I

    iget p1, p1, Lcom/xiaopeng/musicradio/datalist/g;->e:I

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/a;->onUpdatePage(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;->r:Ljava/lang/String;

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 59
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    const-string p1, "CustomDetailListPresenter"

    const-string v0, "onDestroy"

    .line 65
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lasj$r;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 140
    invoke-virtual {p1}, Lasj$r;->a()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-virtual {p1}, Lasj$r;->c()Z

    move-result v1

    .line 142
    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;->q:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;->g()Ljava/util/List;

    move-result-object v2

    .line 144
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 145
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 146
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 147
    invoke-virtual {v3, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHot(Z)V

    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dealMusicLove:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lasj$r;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lasj$r;->c()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",musicInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isHttpCache()Z

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CustomDetailListPresenter"

    invoke-static {v4, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_1
    new-instance v1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;-><init>()V

    .line 153
    invoke-virtual {p1}, Lasj$r;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setAlbumId(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHash(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;->p()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 156
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/a;

    new-instance v0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter$a;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter$a;-><init>(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/a;->updateCollectedStatus(Lcom/xiaopeng/musicradio/datalist/d$a;)V

    :cond_2
    return-void
.end method

.method public onEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "Info"

    .line 122
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "PlayState"

    .line 127
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onSpeechShow(Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 132
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;->v()V

    .line 134
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public r()Lcom/xiaopeng/musicradio/datalist/b;
    .locals 2

    .line 162
    new-instance v0, Laxg;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Laxg;-><init>(Z)V

    return-object v0
.end method

.method public y()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;->t:I

    return v0
.end method
