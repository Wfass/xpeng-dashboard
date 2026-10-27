.class public interface abstract Lcom/google/android/exoplayer2/offline/Downloader;
.super Ljava/lang/Object;
.source "Downloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;
    }
.end annotation


# virtual methods
.method public abstract download(Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;)V
.end method

.method public abstract getDownloadPercentage()F
.end method

.method public abstract getDownloadedBytes()J
.end method

.method public abstract init()V
.end method

.method public abstract remove()V
.end method
