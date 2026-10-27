.class public interface abstract Lcom/xiaopeng/musicradio/program/choice/view/b;
.super Ljava/lang/Object;
.source "IProgramChoiceView.java"


# virtual methods
.method public abstract onDone()V
.end method

.method public abstract onFail()V
.end method

.method public abstract onLoading()V
.end method

.method public abstract selectElement(I)V
.end method

.method public abstract updateHotRanks(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean$RankBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updatePlayState()V
.end method
