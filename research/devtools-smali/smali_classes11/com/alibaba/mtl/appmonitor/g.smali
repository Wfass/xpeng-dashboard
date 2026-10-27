.class Lcom/alibaba/mtl/appmonitor/g;
.super Ljava/lang/Object;
.source "CleanTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static a:J

.field private static aW:Lcom/alibaba/mtl/appmonitor/g;

.field private static j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/mtl/appmonitor/g;->j:Z

    .line 23
    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/alibaba/mtl/appmonitor/g;->a:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method static destroy()V
    .locals 2

    .line 39
    invoke-static {}, Lcom/alibaba/mtl/log/d/s;->aW()Lcom/alibaba/mtl/log/d/s;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/log/d/s;->E(I)V

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/mtl/appmonitor/g;->j:Z

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/mtl/appmonitor/g;->aW:Lcom/alibaba/mtl/appmonitor/g;

    .line 42
    return-void
.end method

.method static init()V
    .locals 6

    .line 30
    sget-boolean v0, Lcom/alibaba/mtl/appmonitor/g;->j:Z

    if-nez v0, :cond_0

    .line 31
    const-string v0, "CleanTask"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "init TimeoutEventManager"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    new-instance v0, Lcom/alibaba/mtl/appmonitor/g;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/g;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/g;->aW:Lcom/alibaba/mtl/appmonitor/g;

    .line 33
    invoke-static {}, Lcom/alibaba/mtl/log/d/s;->aW()Lcom/alibaba/mtl/log/d/s;

    move-result-object v0

    const/4 v2, 0x5

    sget-object v3, Lcom/alibaba/mtl/appmonitor/g;->aW:Lcom/alibaba/mtl/appmonitor/g;

    sget-wide v4, Lcom/alibaba/mtl/appmonitor/g;->a:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/alibaba/mtl/log/d/s;->a(ILjava/lang/Runnable;J)V

    .line 34
    sput-boolean v1, Lcom/alibaba/mtl/appmonitor/g;->j:Z

    .line 36
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 46
    const-string v0, "CleanTask"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "clean TimeoutEvent"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a/e;->u()Lcom/alibaba/mtl/appmonitor/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/a/e;->g()V

    .line 48
    invoke-static {}, Lcom/alibaba/mtl/log/d/s;->aW()Lcom/alibaba/mtl/log/d/s;

    move-result-object v0

    sget-object v1, Lcom/alibaba/mtl/appmonitor/g;->aW:Lcom/alibaba/mtl/appmonitor/g;

    sget-wide v2, Lcom/alibaba/mtl/appmonitor/g;->a:J

    const/4 v4, 0x5

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/alibaba/mtl/log/d/s;->a(ILjava/lang/Runnable;J)V

    .line 49
    return-void
.end method
