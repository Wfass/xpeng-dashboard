.class public Landroid/support/rastermill/FrameSequence;
.super Ljava/lang/Object;
.source "FrameSequence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/rastermill/FrameSequence$State;
    }
.end annotation


# instance fields
.field private final isDestroyed:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mDefaultLoopCount:I

.field private final mFrameCount:I

.field private final mHeight:I

.field private final mNativeFrameSequence:J

.field private final mOpaque:Z

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "framesequence"

    .line 29
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(JIIZII)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-wide p1, p0, Landroid/support/rastermill/FrameSequence;->mNativeFrameSequence:J

    .line 60
    iput p3, p0, Landroid/support/rastermill/FrameSequence;->mWidth:I

    .line 61
    iput p4, p0, Landroid/support/rastermill/FrameSequence;->mHeight:I

    .line 62
    iput-boolean p5, p0, Landroid/support/rastermill/FrameSequence;->mOpaque:Z

    .line 63
    iput p6, p0, Landroid/support/rastermill/FrameSequence;->mFrameCount:I

    .line 64
    iput p7, p0, Landroid/support/rastermill/FrameSequence;->mDefaultLoopCount:I

    .line 65
    new-instance p5, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p7, 0x0

    invoke-direct {p5, p7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p5, p0, Landroid/support/rastermill/FrameSequence;->isDestroyed:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 66
    invoke-static {p1, p2, p3, p4, p6}, Landroid/support/rastermill/util/NativeResourcesUtil;->addNativeFrameSequence(JIII)V

    return-void
.end method

.method static synthetic access$000(J)V
    .locals 0

    .line 27
    invoke-static {p0, p1}, Landroid/support/rastermill/FrameSequence;->nativeDestroyState(J)V

    return-void
.end method

.method static synthetic access$100(JILandroid/graphics/Bitmap;I)J
    .locals 0

    .line 27
    invoke-static {p0, p1, p2, p3, p4}, Landroid/support/rastermill/FrameSequence;->nativeGetFrame(JILandroid/graphics/Bitmap;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static decodeByteArray([B)Landroid/support/rastermill/FrameSequence;
    .locals 2

    .line 70
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/support/rastermill/FrameSequence;->decodeByteArray([BII)Landroid/support/rastermill/FrameSequence;

    move-result-object p0

    return-object p0
.end method

.method public static decodeByteArray([BII)Landroid/support/rastermill/FrameSequence;
    .locals 2

    if-eqz p0, :cond_1

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    add-int v0, p1, p2

    .line 75
    array-length v1, p0

    if-gt v0, v1, :cond_0

    .line 78
    invoke-static {p0, p1, p2}, Landroid/support/rastermill/FrameSequence;->nativeDecodeByteArray([BII)Landroid/support/rastermill/FrameSequence;

    move-result-object p0

    return-object p0

    .line 76
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid offset/length parameters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 74
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static decodeByteBuffer(Ljava/nio/ByteBuffer;)Landroid/support/rastermill/FrameSequence;
    .locals 2

    if-eqz p0, :cond_2

    .line 83
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 86
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-static {v0, v1, p0}, Landroid/support/rastermill/FrameSequence;->decodeByteArray([BII)Landroid/support/rastermill/FrameSequence;

    move-result-object p0

    return-object p0

    .line 88
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot have non-direct ByteBuffer with no byte array"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 91
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/support/rastermill/FrameSequence;->nativeDecodeByteBuffer(Ljava/nio/ByteBuffer;II)Landroid/support/rastermill/FrameSequence;

    move-result-object p0

    return-object p0

    .line 82
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static decodeStream(Ljava/io/InputStream;)Landroid/support/rastermill/FrameSequence;
    .locals 1

    if-eqz p0, :cond_0

    const/16 v0, 0x4000

    new-array v0, v0, [B

    .line 97
    invoke-static {p0, v0}, Landroid/support/rastermill/FrameSequence;->nativeDecodeStream(Ljava/io/InputStream;[B)Landroid/support/rastermill/FrameSequence;

    move-result-object p0

    return-object p0

    .line 95
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static native nativeCreateState(J)J
.end method

.method private static native nativeDecodeByteArray([BII)Landroid/support/rastermill/FrameSequence;
.end method

.method private static native nativeDecodeByteBuffer(Ljava/nio/ByteBuffer;II)Landroid/support/rastermill/FrameSequence;
.end method

.method private static native nativeDecodeStream(Ljava/io/InputStream;[B)Landroid/support/rastermill/FrameSequence;
.end method

.method private static native nativeDestroyFrameSequence(J)V
.end method

.method private static native nativeDestroyState(J)V
.end method

.method private static native nativeGetFrame(JILandroid/graphics/Bitmap;I)J
.end method

.method private static native nativeIsSupport(Ljava/io/InputStream;[B)Z
.end method


# virtual methods
.method public addFrameSequenceKey(Ljava/lang/String;)V
    .locals 4

    .line 101
    iget-wide v0, p0, Landroid/support/rastermill/FrameSequence;->mNativeFrameSequence:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    .line 104
    :cond_0
    invoke-static {v0, v1, p1}, Landroid/support/rastermill/util/NativeResourcesUtil;->putFrameSequenceKey(JLjava/lang/String;)V

    return-void
.end method

.method createState()Landroid/support/rastermill/FrameSequence$State;
    .locals 12

    .line 108
    iget-wide v0, p0, Landroid/support/rastermill/FrameSequence;->mNativeFrameSequence:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 112
    invoke-static {v0, v1}, Landroid/support/rastermill/FrameSequence;->nativeCreateState(J)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 116
    :cond_0
    iget-wide v5, p0, Landroid/support/rastermill/FrameSequence;->mNativeFrameSequence:J

    iget v9, p0, Landroid/support/rastermill/FrameSequence;->mWidth:I

    iget v10, p0, Landroid/support/rastermill/FrameSequence;->mHeight:I

    iget v11, p0, Landroid/support/rastermill/FrameSequence;->mFrameCount:I

    move-wide v7, v0

    invoke-static/range {v5 .. v11}, Landroid/support/rastermill/util/NativeResourcesUtil;->addNativeState(JJIII)V

    .line 117
    new-instance v2, Landroid/support/rastermill/FrameSequence$State;

    invoke-direct {v2, v0, v1}, Landroid/support/rastermill/FrameSequence$State;-><init>(J)V

    return-object v2

    .line 109
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempted to use incorrectly built FrameSequence"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public destroy()V
    .locals 6

    .line 121
    iget-object v0, p0, Landroid/support/rastermill/FrameSequence;->isDestroyed:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 122
    :goto_0
    iget-wide v2, p0, Landroid/support/rastermill/FrameSequence;->mNativeFrameSequence:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 123
    invoke-static {v2, v3}, Landroid/support/rastermill/util/NativeResourcesUtil;->removeNativeFrameSequence(J)V

    .line 124
    iget-wide v2, p0, Landroid/support/rastermill/FrameSequence;->mNativeFrameSequence:J

    invoke-static {v2, v3}, Landroid/support/rastermill/FrameSequence;->nativeDestroyFrameSequence(J)V

    .line 126
    :cond_1
    invoke-static {}, Landroid/support/rastermill/LogUtil;->isLogEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FrameSequence.destroy : mFrameSequence = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", destroyable="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/rastermill/LogUtil;->e(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 138
    :try_start_0
    iget-wide v0, p0, Landroid/support/rastermill/FrameSequence;->mNativeFrameSequence:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/rastermill/FrameSequence;->isDestroyed:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-wide v0, p0, Landroid/support/rastermill/FrameSequence;->mNativeFrameSequence:J

    invoke-static {v0, v1}, Landroid/support/rastermill/util/NativeResourcesUtil;->removeNativeFrameSequence(J)V

    .line 140
    iget-wide v0, p0, Landroid/support/rastermill/FrameSequence;->mNativeFrameSequence:J

    invoke-static {v0, v1}, Landroid/support/rastermill/FrameSequence;->nativeDestroyFrameSequence(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 144
    throw v0
.end method

.method public getDefaultLoopCount()I
    .locals 1

    .line 44
    iget v0, p0, Landroid/support/rastermill/FrameSequence;->mDefaultLoopCount:I

    return v0
.end method

.method public getFrameCount()I
    .locals 1

    .line 43
    iget v0, p0, Landroid/support/rastermill/FrameSequence;->mFrameCount:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 41
    iget v0, p0, Landroid/support/rastermill/FrameSequence;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 40
    iget v0, p0, Landroid/support/rastermill/FrameSequence;->mWidth:I

    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    .line 132
    iget-object v0, p0, Landroid/support/rastermill/FrameSequence;->isDestroyed:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Landroid/support/rastermill/FrameSequence;->mOpaque:Z

    return v0
.end method
