.class public Landroid/support/rastermill/cache/DiskCacheAdapter;
.super Ljava/lang/Object;
.source "DiskCacheAdapter.java"

# interfaces
.implements Landroid/support/rastermill/cache/DiskCache;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public put(Ljava/lang/String;Landroid/support/rastermill/cache/DiskCache$Writer;)V
    .locals 0

    return-void
.end method
