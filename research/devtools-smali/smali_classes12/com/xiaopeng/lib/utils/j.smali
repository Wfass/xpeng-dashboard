.class public Lcom/xiaopeng/lib/utils/j;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/utils/j$b;,
        Lcom/xiaopeng/lib/utils/j$a;
    }
.end annotation


# static fields
.field private static WA:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Object;",
            "Lcom/xiaopeng/lib/utils/j$a;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile WB:Landroid/os/HandlerThread;

.field private static WC:Landroid/os/Handler;

.field private static volatile WD:Landroid/os/HandlerThread;

.field private static WE:Landroid/os/Handler;

.field private static final Wz:Ljava/util/concurrent/ExecutorService;

.field private static sMainThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/xiaopeng/lib/utils/j$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/utils/j$b;-><init>(Lcom/xiaopeng/lib/utils/j$1;)V

    const-string v1, "order-%d"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/utils/j$b;->dL(Ljava/lang/String;)Lcom/xiaopeng/lib/utils/j$b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/utils/j$b;->aQ(Z)Lcom/xiaopeng/lib/utils/j$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/lib/utils/j$b;->oX()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/utils/j;->Wz:Ljava/util/concurrent/ExecutorService;

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/utils/j;->WA:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static a(ILjava/lang/Runnable;)V
    .locals 7

    .line 164
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/lib/utils/j;->a(ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;ZJ)V

    .line 165
    return-void
.end method

.method private static a(ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;ZJ)V
    .locals 8

    .line 248
    if-nez p2, :cond_0

    .line 249
    return-void

    .line 251
    :cond_0
    sget-object v0, Lcom/xiaopeng/lib/utils/j;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 252
    invoke-static {}, Lcom/xiaopeng/lib/utils/j;->oS()V

    .line 254
    :cond_1
    nop

    .line 255
    packed-switch p0, :pswitch_data_0

    .line 272
    sget-object v0, Lcom/xiaopeng/lib/utils/j;->sMainThreadHandler:Landroid/os/Handler;

    goto :goto_0

    .line 263
    :pswitch_0
    sget-object v0, Lcom/xiaopeng/lib/utils/j;->WD:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    .line 264
    invoke-static {}, Lcom/xiaopeng/lib/utils/j;->oU()V

    .line 266
    :cond_2
    sget-object v0, Lcom/xiaopeng/lib/utils/j;->WE:Landroid/os/Handler;

    .line 267
    goto :goto_0

    .line 269
    :pswitch_1
    sget-object v0, Lcom/xiaopeng/lib/utils/j;->sMainThreadHandler:Landroid/os/Handler;

    .line 270
    goto :goto_0

    .line 257
    :pswitch_2
    sget-object v0, Lcom/xiaopeng/lib/utils/j;->WB:Landroid/os/HandlerThread;

    if-nez v0, :cond_3

    .line 258
    invoke-static {}, Lcom/xiaopeng/lib/utils/j;->oT()V

    .line 260
    :cond_3
    sget-object v0, Lcom/xiaopeng/lib/utils/j;->WC:Landroid/os/Handler;

    .line 261
    nop

    .line 277
    :goto_0
    if-nez v0, :cond_4

    .line 278
    sget-object v0, Lcom/xiaopeng/lib/utils/j;->sMainThreadHandler:Landroid/os/Handler;

    .line 280
    :cond_4
    nop

    .line 282
    const/4 v1, 0x0

    .line 283
    if-nez p4, :cond_5

    .line 284
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 285
    if-nez v1, :cond_5

    .line 286
    sget-object v1, Lcom/xiaopeng/lib/utils/j;->sMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 289
    :cond_5
    move-object v4, v1

    .line 290
    new-instance v7, Lcom/xiaopeng/lib/utils/j$2;

    invoke-direct {v7, p2, p3, p4, v4}, Lcom/xiaopeng/lib/utils/j$2;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;ZLandroid/os/Looper;)V

    .line 310
    new-instance p3, Lcom/xiaopeng/lib/utils/j$3;

    move-object v1, p3

    move-object v2, p1

    move v3, p4

    move-object v5, v0

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/lib/utils/j$3;-><init>(Ljava/lang/Runnable;ZLandroid/os/Looper;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 337
    invoke-virtual {v0, p3, p5, p6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 339
    if-nez p1, :cond_6

    .line 340
    sget-object p1, Lcom/xiaopeng/lib/utils/j;->WA:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p4, Lcom/xiaopeng/lib/utils/j$a;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p4, p3, p0}, Lcom/xiaopeng/lib/utils/j$a;-><init>(Ljava/lang/Runnable;Ljava/lang/Integer;)V

    invoke-virtual {p1, p2, p4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 342
    :cond_6
    sget-object p1, Lcom/xiaopeng/lib/utils/j;->WA:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p3, Lcom/xiaopeng/lib/utils/j$a;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p3, v7, p0}, Lcom/xiaopeng/lib/utils/j$a;-><init>(Ljava/lang/Runnable;Ljava/lang/Integer;)V

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/Runnable;J)V
    .locals 1

    .line 79
    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2}, Lcom/xiaopeng/lib/utils/j;->b(ILjava/lang/Runnable;J)V

    .line 80
    return-void
.end method

.method public static b(ILjava/lang/Runnable;J)V
    .locals 7

    .line 175
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v0, p0

    move-object v2, p1

    move-wide v5, p2

    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/lib/utils/j;->a(ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;ZJ)V

    .line 176
    return-void
.end method

.method public static b(Ljava/lang/Runnable;J)V
    .locals 7

    .line 195
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-wide v5, p1

    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/lib/utils/j;->a(ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;ZJ)V

    .line 196
    return-void
.end method

.method public static c(Ljava/lang/Runnable;)V
    .locals 1

    .line 69
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/xiaopeng/lib/utils/j;->a(ILjava/lang/Runnable;)V

    .line 70
    return-void
.end method

.method public static c(Ljava/lang/Runnable;J)V
    .locals 7

    .line 233
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-wide v5, p1

    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/lib/utils/j;->a(ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;ZJ)V

    .line 234
    return-void
.end method

.method public static d(Ljava/lang/Runnable;)V
    .locals 7

    .line 223
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v2, p0

    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/lib/utils/j;->a(ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;ZJ)V

    .line 224
    return-void
.end method

.method public static dR(I)Landroid/os/Looper;
    .locals 3

    .line 48
    packed-switch p0, :pswitch_data_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid threadType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :pswitch_0
    invoke-static {}, Lcom/xiaopeng/lib/utils/j;->oU()V

    .line 57
    sget-object p0, Lcom/xiaopeng/lib/utils/j;->WE:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0

    .line 53
    :pswitch_1
    invoke-static {}, Lcom/xiaopeng/lib/utils/j;->oS()V

    .line 54
    sget-object p0, Lcom/xiaopeng/lib/utils/j;->sMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0

    .line 50
    :pswitch_2
    invoke-static {}, Lcom/xiaopeng/lib/utils/j;->oT()V

    .line 51
    sget-object p0, Lcom/xiaopeng/lib/utils/j;->WB:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static e(Ljava/lang/Runnable;)V
    .locals 1

    .line 352
    if-nez p0, :cond_0

    .line 353
    return-void

    .line 356
    :cond_0
    sget-object v0, Lcom/xiaopeng/lib/utils/j;->WA:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/lib/utils/j$a;

    .line 357
    if-nez p0, :cond_1

    .line 358
    return-void

    .line 361
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/lib/utils/j$a;->getRunnable()Ljava/lang/Runnable;

    move-result-object v0

    .line 362
    if-eqz v0, :cond_2

    .line 363
    invoke-virtual {p0}, Lcom/xiaopeng/lib/utils/j$a;->getType()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 375
    :pswitch_0
    sget-object p0, Lcom/xiaopeng/lib/utils/j;->WE:Landroid/os/Handler;

    if-eqz p0, :cond_2

    .line 376
    sget-object p0, Lcom/xiaopeng/lib/utils/j;->WE:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 370
    :pswitch_1
    sget-object p0, Lcom/xiaopeng/lib/utils/j;->sMainThreadHandler:Landroid/os/Handler;

    if-eqz p0, :cond_2

    .line 371
    sget-object p0, Lcom/xiaopeng/lib/utils/j;->sMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 365
    :pswitch_2
    sget-object p0, Lcom/xiaopeng/lib/utils/j;->WC:Landroid/os/Handler;

    if-eqz p0, :cond_2

    .line 366
    sget-object p0, Lcom/xiaopeng/lib/utils/j;->WC:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 383
    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 2

    .line 88
    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-static {p0, v0, v1}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    .line 89
    return-void
.end method

.method public static execute(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V
    .locals 3

    .line 110
    :try_start_0
    sget-object v0, Lcom/xiaopeng/lib/utils/j;->Wz:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    const/4 v0, 0x0

    .line 112
    if-eqz p1, :cond_0

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 115
    :cond_0
    nop

    .line 116
    sget-object v1, Lcom/xiaopeng/lib/utils/j;->Wz:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/xiaopeng/lib/utils/j$1;

    invoke-direct {v2, p2, p0, v0, p1}, Lcom/xiaopeng/lib/utils/j$1;-><init>(ILjava/lang/Runnable;Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_1
    goto :goto_0

    .line 127
    :catch_0
    move-exception p0

    .line 128
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    :goto_0
    return-void
.end method

.method private static declared-synchronized oS()V
    .locals 3

    const-class v0, Lcom/xiaopeng/lib/utils/j;

    monitor-enter v0

    .line 404
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/j;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 405
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/xiaopeng/lib/utils/j;->sMainThreadHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    :cond_0
    monitor-exit v0

    return-void

    .line 403
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized oT()V
    .locals 4

    const-class v0, Lcom/xiaopeng/lib/utils/j;

    monitor-enter v0

    .line 410
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/j;->WB:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 411
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "BackgroundHandler"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/lib/utils/j;->WB:Landroid/os/HandlerThread;

    .line 412
    sget-object v1, Lcom/xiaopeng/lib/utils/j;->WB:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 413
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/xiaopeng/lib/utils/j;->WB:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/xiaopeng/lib/utils/j;->WC:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    :cond_0
    monitor-exit v0

    return-void

    .line 409
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized oU()V
    .locals 4

    const-class v0, Lcom/xiaopeng/lib/utils/j;

    monitor-enter v0

    .line 418
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/j;->WD:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 419
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "NormalHandler"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/lib/utils/j;->WD:Landroid/os/HandlerThread;

    .line 420
    sget-object v1, Lcom/xiaopeng/lib/utils/j;->WD:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 421
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/xiaopeng/lib/utils/j;->WD:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/xiaopeng/lib/utils/j;->WE:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    :cond_0
    monitor-exit v0

    return-void

    .line 417
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic oV()Landroid/os/Handler;
    .locals 1

    .line 20
    sget-object v0, Lcom/xiaopeng/lib/utils/j;->sMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic oW()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 20
    sget-object v0, Lcom/xiaopeng/lib/utils/j;->WA:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method
