.class public Lcom/xiaopeng/xuiservice/theme/utils/ThemeWorker;
.super Ljava/lang/Object;
.source "ThemeWorker.java"


# static fields
.field private static final worker:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    sget-object v0, Lcom/xiaopeng/xuiservice/theme/utils/-$$Lambda$ThemeWorker$IgbZMgNiomMvQPfvs14TvfdP0ek;->INSTANCE:Lcom/xiaopeng/xuiservice/theme/utils/-$$Lambda$ThemeWorker$IgbZMgNiomMvQPfvs14TvfdP0ek;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/theme/utils/ThemeWorker;->worker:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 11
    sget-object v0, Lcom/xiaopeng/xuiservice/theme/utils/ThemeWorker;->worker:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 8
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "XUI-Theme-Worker"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
