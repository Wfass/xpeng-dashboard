.class public interface abstract Lcom/xiaopeng/musicradio/program/history/view/a;
.super Ljava/lang/Object;
.source "IReadHistoryView.java"


# virtual methods
.method public abstract refreshAllItems()V
.end method

.method public abstract refreshItem(I)V
.end method

.method public abstract refreshList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showLoading()V
.end method
