.class public interface abstract Lcom/xiaopeng/musicradio/music/singer/main/view/b;
.super Ljava/lang/Object;
.source "ISingerMainView.java"


# virtual methods
.method public abstract addHotData(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loadEnd()V
.end method

.method public abstract notifySpeechChange()V
.end method

.method public abstract onMusicAuthCheck(I)V
.end method

.method public abstract setAreaDatas(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setHotData(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setTypeDatas(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setTypeListDatas(Ljava/util/List;Ljava/util/List;)V
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
.end method

.method public abstract showErrorView(Ljava/lang/String;)V
.end method

.method public abstract showLoadingView()V
.end method

.method public abstract showNoDataView(Ljava/lang/String;)V
.end method

.method public abstract updatePlayState(Z)V
.end method
