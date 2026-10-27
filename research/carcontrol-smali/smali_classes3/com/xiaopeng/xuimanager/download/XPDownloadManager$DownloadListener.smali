.class public interface abstract Lcom/xiaopeng/xuimanager/download/XPDownloadManager$DownloadListener;
.super Ljava/lang/Object;
.source "XPDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/download/XPDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloadListener"
.end annotation


# virtual methods
.method public abstract onDownloadCancel(JLjava/lang/String;)V
.end method

.method public abstract onDownloadCompleted(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDownloadError(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDownloadInProgress(JLjava/lang/String;JFJ)V
.end method

.method public abstract onDownloadPause(JLjava/lang/String;)V
.end method

.method public abstract onDownloadStart(JLjava/lang/String;)V
.end method

.method public abstract onRegisterError(Lcom/xiaopeng/xuimanager/download/XPDownloadManager$DownloadListener;Ljava/lang/String;)V
.end method

.method public abstract onRegisterSuccess(Lcom/xiaopeng/xuimanager/download/XPDownloadManager$DownloadListener;)V
.end method

.method public abstract onUnRegisterError(Lcom/xiaopeng/xuimanager/download/XPDownloadManager$DownloadListener;Ljava/lang/String;)V
.end method

.method public abstract onUnRegisterSuccess(Lcom/xiaopeng/xuimanager/download/XPDownloadManager$DownloadListener;)V
.end method
