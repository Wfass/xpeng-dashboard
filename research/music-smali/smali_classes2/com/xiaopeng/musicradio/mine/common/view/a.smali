.class public interface abstract Lcom/xiaopeng/musicradio/mine/common/view/a;
.super Ljava/lang/Object;
.source "IDataListView.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/datalist/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/musicradio/datalist/n;"
    }
.end annotation


# virtual methods
.method public abstract notifyDataSetChanged()V
.end method

.method public abstract onDataListLoaded(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TD;>;I)V"
        }
    .end annotation
.end method

.method public abstract updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V
.end method
