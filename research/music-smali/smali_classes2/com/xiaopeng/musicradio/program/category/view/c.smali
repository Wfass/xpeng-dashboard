.class public interface abstract Lcom/xiaopeng/musicradio/program/category/view/c;
.super Ljava/lang/Object;
.source "IReadingCategoriesViewNew.java"


# virtual methods
.method public abstract onNetworkValid()V
.end method

.method public abstract setLoadingState(I)V
.end method

.method public abstract showCategories(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean$ListBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateList()V
.end method
