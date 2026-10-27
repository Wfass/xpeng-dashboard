.class public Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;
.super Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter;
.source "CollectedMusicPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter<",
        "Lcom/xiaopeng/musicradio/mine/collect/music/view/a;",
        ">;"
    }
.end annotation


# instance fields
.field protected q:I

.field protected r:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x32

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0x32

    .line 51
    invoke-direct {p0, v0, p2}, Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter;-><init>(ILjava/lang/String;)V

    const/4 p2, 0x1

    .line 44
    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->r:Z

    .line 52
    iput p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->q:I

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;Lcom/xiaopeng/musicradio/datalist/g;)V
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->a(Lcom/xiaopeng/musicradio/datalist/g;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;)Z
    .locals 0

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->p()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;)V
    .locals 0

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->v()V

    return-void
.end method

.method private y()V
    .locals 1

    .line 129
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->r:Z

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->h()V

    :cond_0
    return-void
.end method

.method private z()V
    .locals 1

    .line 249
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/collect/music/view/a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/a;->resetDataList()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/datalist/f;)V
    .locals 2

    const-string v0, "CollectedMusicPresenter"

    const-string v1, "getDataListPosted"

    .line 75
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-static {p1}, Laxu;->a(Lcom/xiaopeng/musicradio/datalist/f;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    .line 77
    new-instance v0, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter$1;-><init>(Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;Landroidx/lifecycle/LiveData;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/s;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3

    .line 181
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    invoke-static {}, Laxu;->c()Z

    move-result v0

    .line 186
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

    const-string v1, "CollectedMusicPresenter"

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 189
    invoke-static {}, Laxu;->a()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p1

    .line 190
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/collect/music/view/a;

    const/4 v1, 0x1

    new-instance v2, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter$a;

    invoke-direct {v2, p0, p1}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter$a;-><init>(Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/musicradio/mine/collect/music/view/a;->updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/collect/music/view/a;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/a;->updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public varargs a([Ljava/lang/Object;)V
    .locals 5

    .line 198
    const-class v0, Lase$a;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->a([Ljava/lang/Object;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lase$a;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 199
    iget-boolean v3, v0, Lase$a;->b:Z

    if-eqz v3, :cond_0

    iget-object v0, v0, Lase$a;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 201
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter;->a([Ljava/lang/Object;)V

    goto :goto_1

    .line 203
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->p()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 204
    invoke-static {}, Laxu;->c()Z

    move-result p1

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePlayingStatus:playing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",from=onDataDirty"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CollectedMusicPresenter"

    invoke-static {v4, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 209
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/collect/music/view/a;

    const/4 v1, 0x1

    new-instance v2, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter$a;

    invoke-direct {v2, p0, v0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter$a;-><init>(Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    invoke-interface {p1, v1, v2}, Lcom/xiaopeng/musicradio/mine/collect/music/view/a;->updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    goto :goto_1

    .line 211
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/collect/music/view/a;

    invoke-interface {p1, v1, v2}, Lcom/xiaopeng/musicradio/mine/collect/music/view/a;->updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public b(Lcom/xiaopeng/musicradio/datalist/g;)V
    .locals 2

    .line 107
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/collect/music/view/a;

    if-eqz v0, :cond_1

    .line 109
    iget-boolean v1, p1, Lcom/xiaopeng/musicradio/datalist/g;->l:Z

    if-nez v1, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->v()V

    const/4 v1, 0x0

    .line 111
    iget p1, p1, Lcom/xiaopeng/musicradio/datalist/g;->e:I

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/a;->onDataListLoaded(Ljava/util/List;I)V

    goto :goto_0

    .line 113
    :cond_0
    iget v1, p1, Lcom/xiaopeng/musicradio/datalist/g;->g:I

    iget p1, p1, Lcom/xiaopeng/musicradio/datalist/g;->e:I

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/a;->onUpdatePage(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected e()V
    .locals 0

    .line 70
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter;->e()V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 58
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 1

    .line 63
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    const-string p1, "CollectedMusicPresenter"

    const-string v0, "onDestroy"

    .line 64
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lasj$k;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 162
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/collect/music/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/a;->onLoveTotalChanged()V

    :cond_0
    return-void
.end method

.method public onEvent(Lasj$q;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 125
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->y()V

    return-void
.end method

.method public onEvent(Lasy;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 146
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->v()V

    .line 148
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/collect/music/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onEvent(Lbfh$f;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 120
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->y()V

    return-void
.end method

.method public onEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "Info"

    .line 136
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "PlayState"

    .line 141
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onMusicBinded(Lasj$i;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "CollectedMusicPresenter"

    const-string v0, "onMusicBinded: "

    .line 244
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->z()V

    return-void
.end method

.method public onMusicBinded(Lasj$s;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "CollectedMusicPresenter"

    const-string v0, "onMusicBinded: "

    .line 231
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->z()V

    return-void
.end method

.method public onMusicBinded(Lasj$u;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "CollectedMusicPresenter"

    const-string v0, "onMusicBinded: "

    .line 237
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->z()V

    return-void
.end method

.method public onSpeechShow(Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 154
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->v()V

    .line 156
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/collect/music/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public r()Lcom/xiaopeng/musicradio/datalist/b;
    .locals 2

    .line 169
    invoke-static {}, Lata;->a()Lata;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lata;->b(Ljava/lang/String;)Lcom/xiaopeng/musicradio/datalist/b;

    move-result-object v0

    return-object v0
.end method

.method protected u()V
    .locals 1

    .line 174
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter;->u()V

    .line 175
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/collect/music/view/a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/a;->updateTitlePlayingState()V

    :cond_0
    return-void
.end method
