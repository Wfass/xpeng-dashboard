.class public interface abstract Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$MultiDownloadCallback;
.super Ljava/lang/Object;
.source "SimpleHttpDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MultiDownloadCallback"
.end annotation


# virtual methods
.method public abstract onDownloadFinish(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$Item;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$Item;",
            ">;)V"
        }
    .end annotation
.end method
