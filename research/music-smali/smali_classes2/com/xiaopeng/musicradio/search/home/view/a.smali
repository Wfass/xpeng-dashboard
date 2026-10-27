.class public interface abstract Lcom/xiaopeng/musicradio/search/home/view/a;
.super Ljava/lang/Object;
.source "IHomeMainSearchFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/search/result/view/c;
.implements Lcom/xiaopeng/musicradio/search/result/view/d;


# virtual methods
.method public abstract refreshData()V
.end method

.method public abstract updatePlayState(II)V
.end method

.method public abstract updateSearchHistory(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
