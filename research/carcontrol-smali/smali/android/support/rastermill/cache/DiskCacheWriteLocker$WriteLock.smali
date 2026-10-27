.class Landroid/support/rastermill/cache/DiskCacheWriteLocker$WriteLock;
.super Ljava/lang/Object;
.source "DiskCacheWriteLocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/rastermill/cache/DiskCacheWriteLocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WriteLock"
.end annotation


# instance fields
.field interestedThreads:I

.field final lock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/support/rastermill/cache/DiskCacheWriteLocker$WriteLock;->lock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/rastermill/cache/DiskCacheWriteLocker$1;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Landroid/support/rastermill/cache/DiskCacheWriteLocker$WriteLock;-><init>()V

    return-void
.end method
