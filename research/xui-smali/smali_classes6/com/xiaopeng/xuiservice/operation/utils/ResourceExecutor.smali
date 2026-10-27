.class public Lcom/xiaopeng/xuiservice/operation/utils/ResourceExecutor;
.super Ljava/lang/Object;
.source "ResourceExecutor.java"


# static fields
.field private static final executorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/utils/ResourceExecutor$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/operation/utils/ResourceExecutor$1;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/operation/utils/ResourceExecutor;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 22
    sget-object v0, Lcom/xiaopeng/xuiservice/operation/utils/ResourceExecutor;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method
