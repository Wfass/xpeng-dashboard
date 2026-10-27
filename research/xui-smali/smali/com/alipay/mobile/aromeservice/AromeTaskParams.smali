.class public Lcom/alipay/mobile/aromeservice/AromeTaskParams;
.super Ljava/lang/Object;
.source "AromeTaskParams.java"


# static fields
.field public static final CORE_POOL_SIZE:I = 0x5

.field public static final KEEP_ALIVE_TIME:J = 0xaL

.field public static final KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

.field public static final MAX_POOL_SIZE:I = 0x9

.field public static final POOL_WORK_QUEUE:I = 0x20

.field public static final TASK_TIME_OUT:I = 0x1e


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/alipay/mobile/aromeservice/AromeTaskParams;->KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
