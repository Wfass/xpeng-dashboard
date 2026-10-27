.class public Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig;
.super Ljava/lang/Object;
.source "TimingLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/utils/TimingLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimeConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig$Builder;
    }
.end annotation


# instance fields
.field private mLogEnable:Z

.field private mLogTimeoutEnable:Z

.field private mMaxTime:J

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/utils/TimingLog;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/utils/TimingLog;)V
    .locals 3
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/utils/TimingLog;

    .line 76
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig;->this$0:Lcom/xiaopeng/xuiservice/utils/TimingLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig;->mLogEnable:Z

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig;->mLogTimeoutEnable:Z

    .line 75
    const-string v0, "persist.data.timinglog.maxtime"

    const-wide/16 v1, 0x320

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig;->mMaxTime:J

    .line 76
    return-void
.end method

.method private constructor <init>(Lcom/xiaopeng/xuiservice/utils/TimingLog;Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig$Builder;)V
    .locals 3
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/utils/TimingLog;
    .param p2, "builder"    # Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig$Builder;

    .line 77
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig;->this$0:Lcom/xiaopeng/xuiservice/utils/TimingLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig;->mLogEnable:Z

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig;->mLogTimeoutEnable:Z

    .line 75
    const-string v0, "persist.data.timinglog.maxtime"

    const-wide/16 v1, 0x320

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig;->mMaxTime:J

    .line 78
    invoke-static {p2}, Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig$Builder;->access$000(Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig;->mLogEnable:Z

    .line 79
    invoke-static {p2}, Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig$Builder;->access$100(Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig;->mLogTimeoutEnable:Z

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/utils/TimingLog;Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig$Builder;Lcom/xiaopeng/xuiservice/utils/TimingLog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/utils/TimingLog;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig$Builder;
    .param p3, "x2"    # Lcom/xiaopeng/xuiservice/utils/TimingLog$1;

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig;-><init>(Lcom/xiaopeng/xuiservice/utils/TimingLog;Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig$Builder;)V

    return-void
.end method


# virtual methods
.method public getMaxTime()J
    .locals 2

    .line 91
    iget-wide v0, p0, Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig;->mMaxTime:J

    return-wide v0
.end method

.method public isLogEnable()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig;->mLogEnable:Z

    return v0
.end method

.method public isTimeoutLogEnable()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig;->mLogTimeoutEnable:Z

    return v0
.end method
