.class public final Landroid/os/PowerManager$WakeLock;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WakeLock"
.end annotation


# instance fields
.field private final mDisplayId:I

.field private mExternalCount:I

.field private mFlags:I

.field private mHeld:Z

.field private mHistoryTag:Ljava/lang/String;

.field private mInternalCount:I

.field private final mPackageName:Ljava/lang/String;

.field private mRefCounted:Z

.field private final mReleaser:Ljava/lang/Runnable;

.field private mTag:Ljava/lang/String;

.field private final mToken:Landroid/os/IBinder;

.field private final mTraceName:Ljava/lang/String;

.field private mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Landroid/os/PowerManager;


# direct methods
.method constructor <init>(Landroid/os/PowerManager;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 3130
    iput-object p1, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 3121
    iput-boolean p1, p0, Landroid/os/PowerManager$WakeLock;->mRefCounted:Z

    .line 3128
    new-instance p1, Landroid/os/-$$Lambda$PowerManager$WakeLock$1kj2cLZ8Elk4oMUoKdlvTGNJ2WE;

    invoke-direct {p1, p0}, Landroid/os/-$$Lambda$PowerManager$WakeLock$1kj2cLZ8Elk4oMUoKdlvTGNJ2WE;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object p1, p0, Landroid/os/PowerManager$WakeLock;->mReleaser:Ljava/lang/Runnable;

    .line 3131
    iput p2, p0, Landroid/os/PowerManager$WakeLock;->mFlags:I

    .line 3132
    iput-object p3, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    .line 3133
    iput-object p4, p0, Landroid/os/PowerManager$WakeLock;->mPackageName:Ljava/lang/String;

    .line 3134
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    .line 3135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "WakeLock ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/os/PowerManager$WakeLock;->mTraceName:Ljava/lang/String;

    .line 3136
    iput p5, p0, Landroid/os/PowerManager$WakeLock;->mDisplayId:I

    return-void
.end method

.method private acquireLocked()V
    .locals 10

    .line 3204
    iget v0, p0, Landroid/os/PowerManager$WakeLock;->mInternalCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/os/PowerManager$WakeLock;->mInternalCount:I

    .line 3205
    iget v2, p0, Landroid/os/PowerManager$WakeLock;->mExternalCount:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/os/PowerManager$WakeLock;->mExternalCount:I

    .line 3206
    iget-boolean v2, p0, Landroid/os/PowerManager$WakeLock;->mRefCounted:Z

    if-eqz v2, :cond_0

    if-ne v0, v1, :cond_1

    .line 3213
    :cond_0
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object v0, v0, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mReleaser:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/32 v2, 0x20000

    .line 3214
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mTraceName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 3216
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object v2, v0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v3, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    iget v4, p0, Landroid/os/PowerManager$WakeLock;->mFlags:I

    iget-object v5, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    iget-object v6, p0, Landroid/os/PowerManager$WakeLock;->mPackageName:Ljava/lang/String;

    iget-object v7, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v8, p0, Landroid/os/PowerManager$WakeLock;->mHistoryTag:Ljava/lang/String;

    iget v9, p0, Landroid/os/PowerManager$WakeLock;->mDisplayId:I

    invoke-interface/range {v2 .. v9}, Landroid/os/IPowerManager;->acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3221
    iput-boolean v1, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 3219
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public acquire()V
    .locals 2

    .line 3181
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 3182
    :try_start_0
    invoke-direct {p0}, Landroid/os/PowerManager$WakeLock;->acquireLocked()V

    .line 3183
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public acquire(J)V
    .locals 3

    .line 3197
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 3198
    :try_start_0
    invoke-direct {p0}, Landroid/os/PowerManager$WakeLock;->acquireLocked()V

    .line 3199
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object v1, v1, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mReleaser:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3200
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 4

    .line 3368
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 3369
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v1, 0x10900000001L

    .line 3370
    iget-object v3, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v1, 0x10900000002L

    .line 3371
    iget-object v3, p0, Landroid/os/PowerManager$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v1, 0x10800000003L

    .line 3372
    iget-boolean v3, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10500000004L

    .line 3373
    iget v3, p0, Landroid/os/PowerManager$WakeLock;->mInternalCount:I

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3374
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v1, :cond_0

    const-wide v2, 0x10b00000005L

    .line 3375
    invoke-virtual {v1, p1, v2, v3}, Landroid/os/WorkSource;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3377
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3378
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 3141
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 3142
    :try_start_0
    iget-boolean v1, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    if-eqz v1, :cond_0

    const-string v1, "PowerManager"

    .line 3143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WakeLock finalized while still held: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v1, 0x20000

    .line 3144
    iget-object v3, p0, Landroid/os/PowerManager$WakeLock;->mTraceName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3146
    :try_start_1
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object v1, v1, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, v4}, Landroid/os/IPowerManager;->releaseWakeLock(Landroid/os/IBinder;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3148
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3151
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 3343
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public isHeld()Z
    .locals 2

    .line 3283
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 3284
    :try_start_0
    iget-boolean v1, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3285
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$new$0$PowerManager$WakeLock()V
    .locals 1

    const/high16 v0, 0x10000

    .line 3128
    invoke-virtual {p0, v0}, Landroid/os/PowerManager$WakeLock;->release(I)V

    return-void
.end method

.method public synthetic lambda$wrap$1$PowerManager$WakeLock(Ljava/lang/Runnable;)V
    .locals 0

    .line 3403
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3405
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3406
    throw p1
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 3234
    invoke-virtual {p0, v0}, Landroid/os/PowerManager$WakeLock;->release(I)V

    return-void
.end method

.method public release(I)V
    .locals 5

    .line 3250
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 3251
    :try_start_0
    iget v1, p0, Landroid/os/PowerManager$WakeLock;->mInternalCount:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 3254
    iput v1, p0, Landroid/os/PowerManager$WakeLock;->mInternalCount:I

    :cond_0
    const/high16 v1, 0x10000

    and-int/2addr v1, p1

    if-nez v1, :cond_1

    .line 3257
    iget v1, p0, Landroid/os/PowerManager$WakeLock;->mExternalCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/os/PowerManager$WakeLock;->mExternalCount:I

    .line 3259
    :cond_1
    iget-boolean v1, p0, Landroid/os/PowerManager$WakeLock;->mRefCounted:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/os/PowerManager$WakeLock;->mInternalCount:I

    if-nez v1, :cond_3

    .line 3260
    :cond_2
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object v1, v1, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mReleaser:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3261
    iget-boolean v1, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    if-eqz v1, :cond_3

    const-wide/32 v1, 0x20000

    .line 3262
    iget-object v3, p0, Landroid/os/PowerManager$WakeLock;->mTraceName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3264
    :try_start_1
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object v1, v1, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, p1}, Landroid/os/IPowerManager;->releaseWakeLock(Landroid/os/IBinder;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3268
    :try_start_2
    iput-boolean v4, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3266
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 3271
    :cond_3
    :goto_0
    iget-boolean p1, p0, Landroid/os/PowerManager$WakeLock;->mRefCounted:Z

    if-eqz p1, :cond_5

    iget p1, p0, Landroid/os/PowerManager$WakeLock;->mExternalCount:I

    if-ltz p1, :cond_4

    goto :goto_1

    .line 3272
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WakeLock under-locked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3274
    :cond_5
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public setHistoryTag(Ljava/lang/String;)V
    .locals 0

    .line 3348
    iput-object p1, p0, Landroid/os/PowerManager$WakeLock;->mHistoryTag:Ljava/lang/String;

    return-void
.end method

.method public setReferenceCounted(Z)V
    .locals 1

    .line 3168
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 3169
    :try_start_0
    iput-boolean p1, p0, Landroid/os/PowerManager$WakeLock;->mRefCounted:Z

    .line 3170
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 3338
    iput-object p1, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    return-void
.end method

.method public setUnimportantForLogging(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3353
    iget p1, p0, Landroid/os/PowerManager$WakeLock;->mFlags:I

    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr p1, v0

    iput p1, p0, Landroid/os/PowerManager$WakeLock;->mFlags:I

    goto :goto_0

    .line 3354
    :cond_0
    iget p1, p0, Landroid/os/PowerManager$WakeLock;->mFlags:I

    const v0, -0x40000001    # -1.9999999f

    and-int/2addr p1, v0

    iput p1, p0, Landroid/os/PowerManager$WakeLock;->mFlags:I

    :goto_0
    return-void
.end method

.method public setWorkSource(Landroid/os/WorkSource;)V
    .locals 4

    .line 3307
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 3308
    :try_start_0
    invoke-virtual {p1}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object p1, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_0
    :goto_0
    const/4 v2, 0x1

    if-nez p1, :cond_2

    .line 3314
    iget-object p1, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    move v2, p1

    .line 3315
    :goto_1
    iput-object v1, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    goto :goto_2

    .line 3316
    :cond_2
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-nez v1, :cond_3

    .line 3318
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    iput-object v1, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    goto :goto_2

    .line 3320
    :cond_3
    invoke-virtual {v1, p1}, Landroid/os/WorkSource;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v2, v1

    if-eqz v2, :cond_4

    .line 3322
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, p1}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    .line 3326
    iget-boolean p1, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_5

    .line 3328
    :try_start_1
    iget-object p1, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object p1, p1, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v3, p0, Landroid/os/PowerManager$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-interface {p1, v1, v2, v3}, Landroid/os/IPowerManager;->updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 3330
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 3333
    :cond_5
    :goto_3
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 3359
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 3360
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WakeLock{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3361
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " held="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", refCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/PowerManager$WakeLock;->mInternalCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3363
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    .line 3400
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3401
    new-instance v0, Landroid/os/-$$Lambda$PowerManager$WakeLock$xTPVse83loOQM3kxYPQHU5krrVs;

    invoke-direct {v0, p0, p1}, Landroid/os/-$$Lambda$PowerManager$WakeLock$xTPVse83loOQM3kxYPQHU5krrVs;-><init>(Landroid/os/PowerManager$WakeLock;Ljava/lang/Runnable;)V

    return-object v0
.end method
