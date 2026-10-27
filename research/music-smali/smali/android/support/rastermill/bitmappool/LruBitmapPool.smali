.class public Landroid/support/rastermill/bitmappool/LruBitmapPool;
.super Ljava/lang/Object;
.source "LruBitmapPool.java"

# interfaces
.implements Landroid/support/rastermill/bitmappool/BitmapPool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/rastermill/bitmappool/LruBitmapPool$NullBitmapTracker;,
        Landroid/support/rastermill/bitmappool/LruBitmapPool$ThrowingBitmapTracker;,
        Landroid/support/rastermill/bitmappool/LruBitmapPool$BitmapTracker;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final TAG:Ljava/lang/String; = "LruBitmapPool"


# instance fields
.field private final allowedConfigs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/graphics/Bitmap$Config;",
            ">;"
        }
    .end annotation
.end field

.field private currentSize:I

.field private evictions:I

.field private hits:I

.field private final initialMaxSize:I

.field private maxSize:I

.field private misses:I

.field private puts:I

.field private final strategy:Landroid/support/rastermill/bitmappool/LruPoolStrategy;

.field private final tracker:Landroid/support/rastermill/bitmappool/LruBitmapPool$BitmapTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->DEFAULT_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 53
    invoke-static {}, Landroid/support/rastermill/bitmappool/LruBitmapPool;->getDefaultStrategy()Landroid/support/rastermill/bitmappool/LruPoolStrategy;

    move-result-object v0

    invoke-static {}, Landroid/support/rastermill/bitmappool/LruBitmapPool;->getDefaultAllowedConfigs()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroid/support/rastermill/bitmappool/LruBitmapPool;-><init>(ILandroid/support/rastermill/bitmappool/LruPoolStrategy;Ljava/util/Set;)V

    return-void
.end method

.method constructor <init>(ILandroid/support/rastermill/bitmappool/LruPoolStrategy;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/rastermill/bitmappool/LruPoolStrategy;",
            "Ljava/util/Set<",
            "Landroid/graphics/Bitmap$Config;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->initialMaxSize:I

    .line 41
    iput p1, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->maxSize:I

    .line 42
    iput-object p2, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->strategy:Landroid/support/rastermill/bitmappool/LruPoolStrategy;

    .line 43
    iput-object p3, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->allowedConfigs:Ljava/util/Set;

    .line 44
    new-instance p1, Landroid/support/rastermill/bitmappool/LruBitmapPool$NullBitmapTracker;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/support/rastermill/bitmappool/LruBitmapPool$NullBitmapTracker;-><init>(Landroid/support/rastermill/bitmappool/LruBitmapPool$1;)V

    iput-object p1, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->tracker:Landroid/support/rastermill/bitmappool/LruBitmapPool$BitmapTracker;

    return-void
.end method

.method public constructor <init>(ILjava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Landroid/graphics/Bitmap$Config;",
            ">;)V"
        }
    .end annotation

    .line 64
    invoke-static {}, Landroid/support/rastermill/bitmappool/LruBitmapPool;->getDefaultStrategy()Landroid/support/rastermill/bitmappool/LruPoolStrategy;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Landroid/support/rastermill/bitmappool/LruBitmapPool;-><init>(ILandroid/support/rastermill/bitmappool/LruPoolStrategy;Ljava/util/Set;)V

    return-void
.end method

.method private dump()V
    .locals 0

    .line 184
    invoke-direct {p0}, Landroid/support/rastermill/bitmappool/LruBitmapPool;->dumpUnchecked()V

    return-void
.end method

.method private dumpUnchecked()V
    .locals 2

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->hits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", misses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->misses:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", puts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->puts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", evictions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->evictions:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->currentSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->maxSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->strategy:Landroid/support/rastermill/bitmappool/LruPoolStrategy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LruBitmapPool"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private evict()V
    .locals 1

    .line 107
    iget v0, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->maxSize:I

    invoke-direct {p0, v0}, Landroid/support/rastermill/bitmappool/LruBitmapPool;->trimToSize(I)V

    return-void
.end method

.method public static get(Landroid/content/Context;)Landroid/support/rastermill/bitmappool/LruBitmapPool;
    .locals 2

    .line 217
    new-instance v0, Landroid/support/rastermill/bitmappool/LruBitmapPool;

    new-instance v1, Landroid/support/rastermill/bitmappool/MemorySizeCalculator;

    invoke-direct {v1, p0}, Landroid/support/rastermill/bitmappool/MemorySizeCalculator;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/support/rastermill/bitmappool/MemorySizeCalculator;->getBitmapPoolSize()I

    move-result p0

    invoke-direct {v0, p0}, Landroid/support/rastermill/bitmappool/LruBitmapPool;-><init>(I)V

    return-object v0
.end method

.method private static getDefaultAllowedConfigs()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/graphics/Bitmap$Config;",
            ">;"
        }
    .end annotation

    .line 208
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 209
    invoke-static {}, Landroid/graphics/Bitmap$Config;->values()[Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 210
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    .line 211
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultStrategy()Landroid/support/rastermill/bitmappool/LruPoolStrategy;
    .locals 2

    .line 199
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 200
    new-instance v0, Landroid/support/rastermill/bitmappool/SizeConfigStrategy;

    invoke-direct {v0}, Landroid/support/rastermill/bitmappool/SizeConfigStrategy;-><init>()V

    goto :goto_0

    .line 202
    :cond_0
    new-instance v0, Landroid/support/rastermill/bitmappool/AttributeStrategy;

    invoke-direct {v0}, Landroid/support/rastermill/bitmappool/AttributeStrategy;-><init>()V

    :goto_0
    return-object v0
.end method

.method private declared-synchronized trimToSize(I)V
    .locals 4

    monitor-enter p0

    .line 164
    :goto_0
    :try_start_0
    iget v0, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->currentSize:I

    if-le v0, p1, :cond_1

    .line 165
    iget-object v0, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->strategy:Landroid/support/rastermill/bitmappool/LruPoolStrategy;

    invoke-interface {v0}, Landroid/support/rastermill/bitmappool/LruPoolStrategy;->removeLast()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "LruBitmapPool"

    const-string v0, "Size mismatch, resetting"

    .line 168
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-direct {p0}, Landroid/support/rastermill/bitmappool/LruBitmapPool;->dumpUnchecked()V

    const/4 p1, 0x0

    .line 170
    iput p1, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->currentSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    monitor-exit p0

    return-void

    .line 174
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->tracker:Landroid/support/rastermill/bitmappool/LruBitmapPool$BitmapTracker;

    invoke-interface {v1, v0}, Landroid/support/rastermill/bitmappool/LruBitmapPool$BitmapTracker;->remove(Landroid/graphics/Bitmap;)V

    .line 175
    iget v1, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->currentSize:I

    iget-object v2, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->strategy:Landroid/support/rastermill/bitmappool/LruPoolStrategy;

    invoke-interface {v2, v0}, Landroid/support/rastermill/bitmappool/LruPoolStrategy;->getSize(Landroid/graphics/Bitmap;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->currentSize:I

    .line 176
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 177
    iget v1, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->evictions:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->evictions:I

    const-string v1, "LruBitmapPool"

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Evicting bitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->strategy:Landroid/support/rastermill/bitmappool/LruPoolStrategy;

    invoke-interface {v3, v0}, Landroid/support/rastermill/bitmappool/LruPoolStrategy;->logBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-direct {p0}, Landroid/support/rastermill/bitmappool/LruBitmapPool;->dump()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 181
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public clearMemory()V
    .locals 2

    const-string v0, "LruBitmapPool"

    const-string v1, "clearMemory"

    .line 148
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, v0}, Landroid/support/rastermill/bitmappool/LruBitmapPool;->trimToSize(I)V

    return-void
.end method

.method public declared-synchronized get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 0

    monitor-enter p0

    .line 112
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/rastermill/bitmappool/LruBitmapPool;->getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 117
    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    monitor-enter p0

    .line 128
    :try_start_0
    iget-object v0, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->strategy:Landroid/support/rastermill/bitmappool/LruPoolStrategy;

    if-eqz p3, :cond_0

    move-object v1, p3

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/support/rastermill/bitmappool/LruBitmapPool;->DEFAULT_CONFIG:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-interface {v0, p1, p2, v1}, Landroid/support/rastermill/bitmappool/LruPoolStrategy;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-string v2, "LruBitmapPool"

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing bitmap="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->strategy:Landroid/support/rastermill/bitmappool/LruPoolStrategy;

    invoke-interface {v4, p1, p2, p3}, Landroid/support/rastermill/bitmappool/LruPoolStrategy;->logBitmap(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget v2, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->misses:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->misses:I

    goto :goto_1

    .line 133
    :cond_1
    iget v2, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->hits:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->hits:I

    .line 134
    iget v2, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->currentSize:I

    iget-object v3, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->strategy:Landroid/support/rastermill/bitmappool/LruPoolStrategy;

    invoke-interface {v3, v0}, Landroid/support/rastermill/bitmappool/LruPoolStrategy;->getSize(Landroid/graphics/Bitmap;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->currentSize:I

    .line 135
    iget-object v2, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->tracker:Landroid/support/rastermill/bitmappool/LruBitmapPool$BitmapTracker;

    invoke-interface {v2, v0}, Landroid/support/rastermill/bitmappool/LruBitmapPool$BitmapTracker;->remove(Landroid/graphics/Bitmap;)V

    .line 136
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_2

    .line 137
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    :cond_2
    :goto_1
    const-string v1, "LruBitmapPool"

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get bitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->strategy:Landroid/support/rastermill/bitmappool/LruPoolStrategy;

    invoke-interface {v3, p1, p2, p3}, Landroid/support/rastermill/bitmappool/LruPoolStrategy;->logBitmap(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-direct {p0}, Landroid/support/rastermill/bitmappool/LruBitmapPool;->dump()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getMaxSize()I
    .locals 1

    .line 69
    iget v0, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->maxSize:I

    return v0
.end method

.method public declared-synchronized put(Landroid/graphics/Bitmap;)Z
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 83
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->strategy:Landroid/support/rastermill/bitmappool/LruPoolStrategy;

    invoke-interface {v0, p1}, Landroid/support/rastermill/bitmappool/LruPoolStrategy;->getSize(Landroid/graphics/Bitmap;)I

    move-result v0

    iget v1, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->maxSize:I

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->allowedConfigs:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->strategy:Landroid/support/rastermill/bitmappool/LruPoolStrategy;

    invoke-interface {v0, p1}, Landroid/support/rastermill/bitmappool/LruPoolStrategy;->getSize(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 92
    iget-object v1, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->strategy:Landroid/support/rastermill/bitmappool/LruPoolStrategy;

    invoke-interface {v1, p1}, Landroid/support/rastermill/bitmappool/LruPoolStrategy;->put(Landroid/graphics/Bitmap;)V

    .line 93
    iget-object v1, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->tracker:Landroid/support/rastermill/bitmappool/LruBitmapPool$BitmapTracker;

    invoke-interface {v1, p1}, Landroid/support/rastermill/bitmappool/LruBitmapPool$BitmapTracker;->add(Landroid/graphics/Bitmap;)V

    .line 95
    iget v1, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->puts:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->puts:I

    .line 96
    iget v1, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->currentSize:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->currentSize:I

    const-string v0, "LruBitmapPool"

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "put currentSize = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->currentSize:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LruBitmapPool"

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "put bitmap in pool="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->strategy:Landroid/support/rastermill/bitmappool/LruPoolStrategy;

    invoke-interface {v3, p1}, Landroid/support/rastermill/bitmappool/LruPoolStrategy;->logBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct {p0}, Landroid/support/rastermill/bitmappool/LruBitmapPool;->dump()V

    .line 102
    invoke-direct {p0}, Landroid/support/rastermill/bitmappool/LruBitmapPool;->evict()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return v2

    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "LruBitmapPool"

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reject bitmap from pool, bitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->strategy:Landroid/support/rastermill/bitmappool/LruPoolStrategy;

    .line 85
    invoke-interface {v2, p1}, Landroid/support/rastermill/bitmappool/LruPoolStrategy;->logBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", is mutable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", is allowed config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->allowedConfigs:Ljava/util/Set;

    .line 87
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 88
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 81
    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Bitmap must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSizeMultiplier(F)V
    .locals 1

    monitor-enter p0

    .line 74
    :try_start_0
    iget v0, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->initialMaxSize:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->maxSize:I

    .line 75
    invoke-direct {p0}, Landroid/support/rastermill/bitmappool/LruBitmapPool;->evict()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public trimMemory(I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trimMemory, level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LruBitmapPool"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    .line 157
    invoke-virtual {p0}, Landroid/support/rastermill/bitmappool/LruBitmapPool;->clearMemory()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x28

    if-lt p1, v0, :cond_1

    .line 159
    iget p1, p0, Landroid/support/rastermill/bitmappool/LruBitmapPool;->maxSize:I

    div-int/lit8 p1, p1, 0x2

    invoke-direct {p0, p1}, Landroid/support/rastermill/bitmappool/LruBitmapPool;->trimToSize(I)V

    :cond_1
    :goto_0
    return-void
.end method
