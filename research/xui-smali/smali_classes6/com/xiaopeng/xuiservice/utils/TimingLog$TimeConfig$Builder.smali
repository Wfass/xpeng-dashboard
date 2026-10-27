.class public final Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig$Builder;
.super Ljava/lang/Object;
.source "TimingLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation


# instance fields
.field private mLogEnable:Z

.field private mLogTimeoutEnable:Z

.field final synthetic this$1:Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig;)V
    .locals 0
    .param p1, "this$1"    # Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig;

    .line 98
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig$Builder;->this$1:Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig$Builder;

    .line 94
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig$Builder;->mLogEnable:Z

    return v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig$Builder;

    .line 94
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig$Builder;->mLogTimeoutEnable:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig;
    .locals 3

    .line 112
    new-instance v0, Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig$Builder;->this$1:Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig;->this$0:Lcom/xiaopeng/xuiservice/utils/TimingLog;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig;-><init>(Lcom/xiaopeng/xuiservice/utils/TimingLog;Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig$Builder;Lcom/xiaopeng/xuiservice/utils/TimingLog$1;)V

    return-object v0
.end method

.method public mLogEnable(Z)Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig$Builder;
    .locals 0
    .param p1, "val"    # Z

    .line 102
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig$Builder;->mLogEnable:Z

    .line 103
    return-object p0
.end method

.method public mLogTimeoutEnable(Z)Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig$Builder;
    .locals 0
    .param p1, "val"    # Z

    .line 107
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig$Builder;->mLogTimeoutEnable:Z

    .line 108
    return-object p0
.end method
