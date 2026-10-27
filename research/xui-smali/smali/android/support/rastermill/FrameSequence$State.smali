.class Landroid/support/rastermill/FrameSequence$State;
.super Ljava/lang/Object;
.source "FrameSequence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/rastermill/FrameSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "State"
.end annotation


# instance fields
.field private mNativeState:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "nativeState"    # J

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Landroid/support/rastermill/FrameSequence$State;->mNativeState:Ljava/util/concurrent/atomic/AtomicLong;

    .line 164
    return-void
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .locals 5

    monitor-enter p0

    .line 167
    :try_start_0
    iget-object v0, p0, Landroid/support/rastermill/FrameSequence$State;->mNativeState:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    .line 168
    .local v3, "nativeState":J
    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 169
    invoke-static {}, Landroid/support/rastermill/LogUtil;->isLogEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const-string v0, "FrameSequence.State.destroy"

    invoke-static {v0}, Landroid/support/rastermill/LogUtil;->e(Ljava/lang/String;)V

    .line 172
    :cond_0
    invoke-static {v3, v4}, Landroid/support/rastermill/util/NativeResourcesUtil;->removeNativeState(J)V

    .line 173
    invoke-static {v3, v4}, Landroid/support/rastermill/FrameSequence;->access$000(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :cond_1
    monitor-exit p0

    return-void

    .line 166
    .end local v3    # "nativeState":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/support/rastermill/FrameSequence$State;
    throw v0
.end method

.method public declared-synchronized getFrame(ILandroid/graphics/Bitmap;I)J
    .locals 4
    .param p1, "frameNr"    # I
    .param p2, "output"    # Landroid/graphics/Bitmap;
    .param p3, "previousFrameNr"    # I

    monitor-enter p0

    .line 179
    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_1

    .line 182
    iget-object v0, p0, Landroid/support/rastermill/FrameSequence$State;->mNativeState:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 183
    .local v0, "nativeState":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 186
    invoke-static {v0, v1, p1, p2, p3}, Landroid/support/rastermill/FrameSequence;->access$100(JILandroid/graphics/Bitmap;I)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v2

    .line 184
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "attempted to draw destroyed FrameSequenceState"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 178
    .end local v0    # "nativeState":J
    .end local p1    # "frameNr":I
    .end local p2    # "output":Landroid/graphics/Bitmap;
    .end local p3    # "previousFrameNr":I
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 180
    .restart local p1    # "frameNr":I
    .restart local p2    # "output":Landroid/graphics/Bitmap;
    .restart local p3    # "previousFrameNr":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bitmap passed must be non-null and ARGB_8888"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    .end local p1    # "frameNr":I
    .end local p2    # "output":Landroid/graphics/Bitmap;
    .end local p3    # "previousFrameNr":I
    :goto_0
    monitor-exit p0

    .end local p0    # "this":Landroid/support/rastermill/FrameSequence$State;
    throw p1
.end method
