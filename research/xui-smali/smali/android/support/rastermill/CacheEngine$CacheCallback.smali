.class public interface abstract Landroid/support/rastermill/CacheEngine$CacheCallback;
.super Ljava/lang/Object;
.source "CacheEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/rastermill/CacheEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CacheCallback"
.end annotation


# virtual methods
.method public abstract cacheData(Ljava/lang/String;Ljava/io/InputStream;)V
.end method

.method public abstract onCacheFailure(Ljava/lang/String;)V
.end method

.method public abstract onCacheFinished(Ljava/lang/String;)V
.end method
