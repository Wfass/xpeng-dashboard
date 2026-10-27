.class public Lcom/xiaopeng/speech/vui/task/ThreadPoolProxyFactory;
.super Ljava/lang/Object;
.source "ThreadPoolProxyFactory.java"


# static fields
.field static mThreadPool:Lcom/xiaopeng/speech/vui/task/ThreadPoolProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getThreadPool()Lcom/xiaopeng/speech/vui/task/ThreadPoolProxy;
    .locals 3

    .line 16
    sget-object v0, Lcom/xiaopeng/speech/vui/task/ThreadPoolProxyFactory;->mThreadPool:Lcom/xiaopeng/speech/vui/task/ThreadPoolProxy;

    if-nez v0, :cond_1

    .line 17
    const-class v0, Lcom/xiaopeng/speech/vui/task/ThreadPoolProxyFactory;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Lcom/xiaopeng/speech/vui/task/ThreadPoolProxyFactory;->mThreadPool:Lcom/xiaopeng/speech/vui/task/ThreadPoolProxy;

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Lcom/xiaopeng/speech/vui/task/ThreadPoolProxy;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v2}, Lcom/xiaopeng/speech/vui/task/ThreadPoolProxy;-><init>(II)V

    sput-object v1, Lcom/xiaopeng/speech/vui/task/ThreadPoolProxyFactory;->mThreadPool:Lcom/xiaopeng/speech/vui/task/ThreadPoolProxy;

    .line 21
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 23
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/speech/vui/task/ThreadPoolProxyFactory;->mThreadPool:Lcom/xiaopeng/speech/vui/task/ThreadPoolProxy;

    return-object v0
.end method
