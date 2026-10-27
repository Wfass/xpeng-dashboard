.class public Lcom/xiaopeng/aar/utils/ThreadUtils$MULTI;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/aar/utils/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MULTI"
.end annotation


# static fields
.field private static volatile sExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static post(Ljava/lang/Runnable;)V
    .locals 2

    .line 91
    sget-object v0, Lcom/xiaopeng/aar/utils/ThreadUtils$MULTI;->sExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    .line 92
    const-class v0, Lcom/xiaopeng/aar/utils/ThreadUtils$MULTI;

    monitor-enter v0

    .line 93
    :try_start_0
    sget-object v1, Lcom/xiaopeng/aar/utils/ThreadUtils$MULTI;->sExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    const/4 v1, 0x3

    .line 94
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/xiaopeng/aar/utils/ThreadUtils$MULTI;->sExecutor:Ljava/util/concurrent/ExecutorService;

    .line 96
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 98
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/aar/utils/ThreadUtils$MULTI;->sExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
