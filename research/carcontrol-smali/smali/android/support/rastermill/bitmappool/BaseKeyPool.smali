.class abstract Landroid/support/rastermill/bitmappool/BaseKeyPool;
.super Ljava/lang/Object;
.source "BaseKeyPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/rastermill/bitmappool/Poolable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final MAX_SIZE:I = 0x14


# instance fields
.field private final keyPool:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    .line 10
    invoke-static {v0}, Landroid/support/rastermill/util/Util;->createQueue(I)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Landroid/support/rastermill/bitmappool/BaseKeyPool;->keyPool:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method protected abstract create()Landroid/support/rastermill/bitmappool/Poolable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected get()Landroid/support/rastermill/bitmappool/Poolable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Landroid/support/rastermill/bitmappool/BaseKeyPool;->keyPool:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/rastermill/bitmappool/Poolable;

    if-nez v0, :cond_0

    .line 15
    invoke-virtual {p0}, Landroid/support/rastermill/bitmappool/BaseKeyPool;->create()Landroid/support/rastermill/bitmappool/Poolable;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public offer(Landroid/support/rastermill/bitmappool/Poolable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Landroid/support/rastermill/bitmappool/BaseKeyPool;->keyPool:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 22
    iget-object v0, p0, Landroid/support/rastermill/bitmappool/BaseKeyPool;->keyPool:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
