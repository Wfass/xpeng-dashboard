.class public final Landroid/support/rastermill/cache/InternalCacheDiskCacheFactory;
.super Landroid/support/rastermill/cache/DiskLruCacheFactory;
.source "InternalCacheDiskCacheFactory.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 14
    const-string v0, "image_manager_disk_cache"

    const/high16 v1, 0xfa00000

    invoke-direct {p0, p1, v0, v1}, Landroid/support/rastermill/cache/InternalCacheDiskCacheFactory;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "diskCacheSize"    # I

    .line 18
    const-string v0, "image_manager_disk_cache"

    invoke-direct {p0, p1, v0, p2}, Landroid/support/rastermill/cache/InternalCacheDiskCacheFactory;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "diskCacheName"    # Ljava/lang/String;
    .param p3, "diskCacheSize"    # I

    .line 22
    new-instance v0, Landroid/support/rastermill/cache/InternalCacheDiskCacheFactory$1;

    invoke-direct {v0, p1, p2}, Landroid/support/rastermill/cache/InternalCacheDiskCacheFactory$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Landroid/support/rastermill/cache/DiskLruCacheFactory;-><init>(Landroid/support/rastermill/cache/DiskLruCacheFactory$CacheDirectoryGetter;I)V

    .line 35
    return-void
.end method
