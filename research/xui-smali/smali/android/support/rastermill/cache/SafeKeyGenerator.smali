.class public Landroid/support/rastermill/cache/SafeKeyGenerator;
.super Ljava/lang/Object;
.source "SafeKeyGenerator.java"


# instance fields
.field private final loadIdToSafeHash:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Landroid/support/rastermill/cache/SafeKeyGenerator;->loadIdToSafeHash:Landroid/util/LruCache;

    return-void
.end method


# virtual methods
.method public getSafeKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 14
    if-nez p1, :cond_0

    .line 15
    const/4 v0, 0x0

    return-object v0

    .line 18
    :cond_0
    iget-object v0, p0, Landroid/support/rastermill/cache/SafeKeyGenerator;->loadIdToSafeHash:Landroid/util/LruCache;

    monitor-enter v0

    .line 19
    :try_start_0
    iget-object v1, p0, Landroid/support/rastermill/cache/SafeKeyGenerator;->loadIdToSafeHash:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 20
    .local v1, "safeKey":Ljava/lang/String;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    if-nez v1, :cond_1

    .line 22
    invoke-static {p1}, Landroid/support/rastermill/util/Util;->getSha265Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    iget-object v0, p0, Landroid/support/rastermill/cache/SafeKeyGenerator;->loadIdToSafeHash:Landroid/util/LruCache;

    monitor-enter v0

    .line 25
    :try_start_1
    iget-object v2, p0, Landroid/support/rastermill/cache/SafeKeyGenerator;->loadIdToSafeHash:Landroid/util/LruCache;

    invoke-virtual {v2, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 29
    :cond_1
    :goto_0
    return-object v1

    .line 20
    .end local v1    # "safeKey":Ljava/lang/String;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
