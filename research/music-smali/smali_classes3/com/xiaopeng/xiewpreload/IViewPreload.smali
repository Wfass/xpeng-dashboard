.class public interface abstract Lcom/xiaopeng/xiewpreload/IViewPreload;
.super Ljava/lang/Object;
.source "IViewPreload.java"


# virtual methods
.method public abstract addPreLoadXml(II)V
.end method

.method public abstract cachePreLoadBinding(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lip;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract clearPool()V
.end method

.method public abstract getBindingFromPool(I)Lip;
.end method

.method public abstract getLayoutInflater()Landroid/view/LayoutInflater;
.end method

.method public abstract getViewFromPool(I)Landroid/view/View;
.end method

.method public abstract getViewFromPool(IZ)Landroid/view/View;
.end method

.method public abstract isInPreloadPool(ILandroid/view/View;)Z
.end method

.method public abstract reloadByLanguageChange()V
.end method

.method public abstract resetViewTagForBinding(I)V
.end method

.method public abstract startPreLoad()V
.end method
