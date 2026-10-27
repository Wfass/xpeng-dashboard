.class public final Landroid/support/rastermill/cache/ExternalCacheDiskCacheFactory;
.super Landroid/support/rastermill/cache/DiskLruCacheFactory;
.source "ExternalCacheDiskCacheFactory.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "image_manager_disk_cache"

    const/high16 v1, 0xfa00000

    .line 16
    invoke-direct {p0, p1, v0, v1}, Landroid/support/rastermill/cache/ExternalCacheDiskCacheFactory;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "image_manager_disk_cache"

    .line 20
    invoke-direct {p0, p1, v0, p2}, Landroid/support/rastermill/cache/ExternalCacheDiskCacheFactory;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 24
    new-instance v0, Landroid/support/rastermill/cache/ExternalCacheDiskCacheFactory$1;

    invoke-direct {v0, p1, p2}, Landroid/support/rastermill/cache/ExternalCacheDiskCacheFactory$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Landroid/support/rastermill/cache/DiskLruCacheFactory;-><init>(Landroid/support/rastermill/cache/DiskLruCacheFactory$CacheDirectoryGetter;I)V

    return-void
.end method
