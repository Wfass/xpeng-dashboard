.class public interface abstract Landroid/support/rastermill/cache/DiskCache;
.super Ljava/lang/Object;
.source "DiskCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/rastermill/cache/DiskCache$Writer;,
        Landroid/support/rastermill/cache/DiskCache$Factory;
    }
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract delete(Ljava/lang/String;)V
.end method

.method public abstract get(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract put(Ljava/lang/String;Landroid/support/rastermill/cache/DiskCache$Writer;)V
.end method
