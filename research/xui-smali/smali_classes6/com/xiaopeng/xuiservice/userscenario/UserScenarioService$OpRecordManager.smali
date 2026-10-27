.class Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecordManager;
.super Ljava/lang/Object;
.source "UserScenarioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpRecordManager"
.end annotation


# static fields
.field public static final MAX_RECORD_COUNT:I = 0x40

.field public static pointer:I

.field public static recordArray:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 501
    const/16 v0, 0x40

    new-array v0, v0, [Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;

    sput-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecordManager;->recordArray:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;

    .line 502
    const/4 v0, 0x0

    sput v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecordManager;->pointer:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized add(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;)V
    .locals 4
    .param p0, "record"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;

    const-class v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecordManager;

    monitor-enter v0

    .line 505
    :try_start_0
    sget v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecordManager;->pointer:I

    const/16 v2, 0x40

    if-lt v1, v2, :cond_0

    .line 506
    const/4 v1, 0x0

    sput v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecordManager;->pointer:I

    .line 508
    :cond_0
    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecordManager;->recordArray:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;

    sget v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecordManager;->pointer:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecordManager;->pointer:I

    aput-object p0, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    monitor-exit v0

    return-void

    .line 504
    .end local p0    # "record":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
