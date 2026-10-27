.class public Lcom/alibaba/sdk/android/httpdns/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/concurrent/ExecutorService;

.field private static final a:Ljava/util/concurrent/ThreadFactory;

.field private static final a:Ljava/util/concurrent/TimeUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/c;->a:Ljava/util/concurrent/TimeUnit;

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/c$1;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/httpdns/c$1;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/c;->a:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Lcom/alibaba/sdk/android/httpdns/c;->a:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    sget-object v8, Lcom/alibaba/sdk/android/httpdns/c;->a:Ljava/util/concurrent/ThreadFactory;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/c;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/c;->a:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
