.class public interface abstract Lcom/xiaopeng/musicradio/mine/main/view/a;
.super Ljava/lang/Object;
.source "ILoginManagerView.java"


# virtual methods
.method public abstract onAccountInfoUpdated(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)V
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
.end method

.method public abstract onKugouAccountInfoUpdated(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)V
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
.end method

.method public abstract onMusicDataLoad(I)V
.end method

.method public abstract onNeteaaseAccountInfoUpdated(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)V
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
.end method

.method public abstract onNeteaseAuthChanged(Z)V
.end method

.method public abstract onProgramDataLoad(I)V
.end method

.method public abstract onQqAuthChanged(Z)V
.end method

.method public abstract onRadioDataLoad(I)V
.end method

.method public abstract onSyncEnd()V
.end method

.method public abstract onSyncLoading()V
.end method

.method public abstract onSyncStart()V
.end method

.method public abstract onSyncState(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/mine/ResultState;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onXmlyAccountInfoUpdated(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
.end method

.method public abstract onXmlyAuthChanged(Z)V
.end method

.method public selectTab(I)V
    .locals 0

    return-void
.end method

.method public abstract updateData()V
.end method
