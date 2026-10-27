.class public interface abstract Lcom/xiaopeng/xuimanager/sr/XuiSrManager;
.super Ljava/lang/Object;
.source "XuiSrManager.java"


# virtual methods
.method public abstract getIcons()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/sr/SrIcon;",
            ">;"
        }
    .end annotation
.end method

.method public abstract registerIconListener(Lcom/xiaopeng/xuimanager/sr/XuiSrIconListener;)V
.end method

.method public abstract reportIconClick(Ljava/lang/String;)V
.end method

.method public abstract unregisterIconListener(Lcom/xiaopeng/xuimanager/sr/XuiSrIconListener;)V
.end method
