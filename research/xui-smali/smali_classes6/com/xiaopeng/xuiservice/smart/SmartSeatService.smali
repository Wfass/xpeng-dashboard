.class public Lcom/xiaopeng/xuiservice/smart/SmartSeatService;
.super Lcom/xiaopeng/xuiservice/smart/BaseSmartService;
.source "SmartSeatService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/smart/SmartSeatService$InstanceHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartSeatService"

.field private static hasIgOn:Z


# instance fields
.field private mMcuCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

.field private mProxy:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartSeatService;->hasIgOn:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 112
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartSeatService;->mMcuCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    .line 41
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->getInstance()Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartSeatService;->mProxy:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;

    .line 113
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 35
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartSeatService;->hasIgOn:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 35
    sput-boolean p0, Lcom/xiaopeng/xuiservice/smart/SmartSeatService;->hasIgOn:Z

    return p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/smart/SmartSeatService;)Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartSeatService;

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartSeatService;->mProxy:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;

    return-object v0
.end method

.method private addMcuManagerCallback()V
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartSeatService;->mProxy:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->getSeatMassagerNumbers()I

    move-result v0

    .line 45
    .local v0, "nr":I
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartSeatService$SimUVDM0kEt4Y8t0nO442JEPwJs;->INSTANCE:Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartSeatService$SimUVDM0kEt4Y8t0nO442JEPwJs;

    invoke-static {v1, v2}, Ljava/util/stream/Stream;->iterate(Ljava/lang/Object;Ljava/util/function/UnaryOperator;)Ljava/util/stream/Stream;

    move-result-object v1

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 46
    .local v1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartSeatService$znfQj8LqOvyui6ncUHU4komPIHY;->INSTANCE:Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartSeatService$znfQj8LqOvyui6ncUHU4komPIHY;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 48
    .local v2, "strIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Lcom/xiaopeng/xuiservice/smart/SmartSeatService$1;

    invoke-direct {v3, p0, v2}, Lcom/xiaopeng/xuiservice/smart/SmartSeatService$1;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartSeatService;Ljava/util/List;)V

    iput-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartSeatService;->mMcuCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    .line 70
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartSeatService;->mMcuCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuiservice/smart/SmartSeatService;->addMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 71
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/smart/SmartSeatService;
    .locals 1

    .line 126
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartSeatService$InstanceHolder;->access$200()Lcom/xiaopeng/xuiservice/smart/SmartSeatService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$addMcuManagerCallback$0(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1
    .param p0, "n"    # Ljava/lang/Integer;

    .line 45
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$znfQj8LqOvyui6ncUHU4komPIHY(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private removeCarListener()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartSeatService;->mMcuCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartSeatService;->removeMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 75
    return-void
.end method


# virtual methods
.method public bridge synthetic debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 117
    const-string v0, "SmartSeatService"

    return-object v0
.end method

.method protected initCarListener()V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartSeatService;->addMcuManagerCallback()V

    .line 92
    return-void
.end method

.method protected initXUIManager()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 96
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->initXUIManager()V

    .line 97
    return-void
.end method

.method protected onCarManagerInited()V
    .locals 4

    .line 80
    :try_start_0
    const-string/jumbo v0, "xp_mcu"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartSeatService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/mcu/CarMcuManager;

    .line 81
    .local v0, "mcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    invoke-virtual {v0}, Landroid/car/hardware/mcu/CarMcuManager;->getIgStatusFromMcu()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sput-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartSeatService;->hasIgOn:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v0    # "mcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    goto :goto_1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmartSeatService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIgStatusFromMcu failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const-string v0, "SmartSeatService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCarManagerInited, hasIgOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartSeatService;->hasIgOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method protected onInit()V
    .locals 2

    .line 101
    const-string v0, "SmartSeatService"

    const-string v1, "onInit"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method protected onRelease()V
    .locals 2

    .line 106
    const-string v0, "SmartSeatService"

    const-string v1, "onRelease"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartSeatService;->removeCarListener()V

    .line 109
    return-void
.end method
