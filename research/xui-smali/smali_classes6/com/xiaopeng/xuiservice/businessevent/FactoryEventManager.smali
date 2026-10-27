.class public Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager;
.super Ljava/lang/Object;
.source "FactoryEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager$FactoryEventManagerHolder;
    }
.end annotation


# static fields
.field private static final FACTORY_BINARY_VALUE:I = 0x6

.field private static final MSG_IM_READY:[B

.field private static final SYSTEM_PROPERTY_SPECIAL:Ljava/lang/String; = "ro.xiaopeng.special"

.field private static final TAG:Ljava/lang/String; = "FactoryEventManager"

.field private static final notifyPackageName:Ljava/lang/String; = "com.xiaopeng.factory"

.field private static final targetSignalBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager;->targetSignalBytes:[B

    .line 29
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager;->MSG_IM_READY:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x10t
        0x60t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x52t
        0x45t
        0x41t
        0x44t
        0x59t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager;->addCanSignalListener()V

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager$1;

    .line 21
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager;
    .param p1, "x1"    # Landroid/car/hardware/CarPropertyValue;

    .line 21
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager;->handlePropertyChange(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method private addCanSignalListener()V
    .locals 2

    .line 62
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager$1;-><init>(Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addXpDiagnosticManagerListener(Landroid/car/diagnostic/XpDiagnosticManager$XpDiagnosticEventCallback;)V

    .line 74
    return-void
.end method

.method private byte2hex([B)Ljava/lang/String;
    .locals 5
    .param p1, "b"    # [B

    .line 105
    if-nez p1, :cond_0

    .line 106
    const-string v0, "**"

    return-object v0

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 113
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "stmp":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 115
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 118
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v1    # "n":I
    .end local v2    # "stmp":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private checkSignal([B)Z
    .locals 4
    .param p1, "bytes"    # [B

    .line 88
    const/4 v0, 0x1

    .line 89
    .local v0, "result":Z
    if-eqz p1, :cond_1

    .line 90
    const-string v1, "FactoryEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ID_MCU_DIAG_REQUEST, value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager;->byte2hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager;->targetSignalBytes:[B

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 92
    aget-byte v2, p1, v1

    sget-object v3, Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager;->targetSignalBytes:[B

    aget-byte v3, v3, v1

    if-eq v2, v3, :cond_0

    .line 93
    const/4 v0, 0x0

    .line 94
    goto :goto_1

    .line 91
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    .line 101
    :cond_2
    :goto_1
    return v0
.end method

.method private static convert64Byte([B)[B
    .locals 5
    .param p0, "buf"    # [B

    .line 148
    const/16 v0, 0x40

    new-array v1, v0, [B

    .line 149
    .local v1, "bytes64":[B
    const/4 v2, 0x0

    move v3, v2

    .line 150
    .local v3, "index":I
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_1

    .line 151
    if-lt v3, v0, :cond_0

    .line 152
    goto :goto_1

    .line 154
    :cond_0
    aget-byte v4, p0, v3

    aput-byte v4, v1, v3

    .line 150
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 157
    :cond_1
    :goto_1
    if-ge v3, v0, :cond_2

    .line 158
    aput-byte v2, v1, v3

    .line 157
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 160
    :cond_2
    return-object v1
.end method

.method private factoryTryLaunch()V
    .locals 5

    .line 164
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string/jumbo v1, "xp_mcu"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/mcu/CarMcuManager;

    .line 166
    .local v0, "manager":Landroid/car/hardware/mcu/CarMcuManager;
    :try_start_0
    invoke-virtual {v0}, Landroid/car/hardware/mcu/CarMcuManager;->getFactoryModeSwitchStatus()I

    move-result v1

    .line 167
    .local v1, "status":I
    const-string v2, "FactoryEventManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "factoryTryLaunch, factory status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    .line 169
    invoke-static {}, Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;->getInstance()Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;

    move-result-object v2

    const-string v3, "com.xiaopeng.factory"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;->notifyApp(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v1    # "status":I
    :cond_0
    goto :goto_0

    .line 171
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "FactoryEventManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "factoryTryLaunch e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager;
    .locals 1

    .line 41
    invoke-static {}, Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager$FactoryEventManagerHolder;->access$100()Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager;

    move-result-object v0

    return-object v0
.end method

.method private handlePropertyChange(Landroid/car/hardware/CarPropertyValue;)V
    .locals 4
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 77
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21701404

    if-ne v0, v1, :cond_0

    .line 78
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 79
    .local v0, "data":Ljava/lang/Object;
    instance-of v1, v0, [B

    if-eqz v1, :cond_0

    .line 80
    move-object v1, v0

    check-cast v1, [B

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager;->checkSignal([B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-static {}, Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;->getInstance()Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;

    move-result-object v1

    const-string v2, "com.xiaopeng.factory"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;->notifyApp(Ljava/lang/String;Ljava/util/Map;)V

    .line 85
    .end local v0    # "data":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public static isFactoryBinary()Z
    .locals 5

    .line 125
    const-string v0, "ro.xiaopeng.special"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 126
    .local v0, "special":I
    const-string v2, "FactoryEventManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFactoryBinary special = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static synthetic lambda$init$0(Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager;->sendReadyMsg()V

    .line 48
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager;->factoryTryLaunch()V

    .line 49
    return-void
.end method

.method private sendReadyMsg()V
    .locals 5

    .line 131
    invoke-static {}, Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    const-string v0, "FactoryEventManager"

    const-string v1, "send ready msg"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string/jumbo v1, "xp_diagnostic"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/diagnostic/XpDiagnosticManager;

    .line 135
    .local v0, "mXpDiagnosticManager":Landroid/car/diagnostic/XpDiagnosticManager;
    if-eqz v0, :cond_0

    .line 137
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager;->MSG_IM_READY:[B

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager;->convert64Byte([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/car/diagnostic/XpDiagnosticManager;->sendMcuDiagCmdAck([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "FactoryEventManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendMcuDiagCmdAck e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .end local v0    # "mXpDiagnosticManager":Landroid/car/diagnostic/XpDiagnosticManager;
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 142
    .restart local v0    # "mXpDiagnosticManager":Landroid/car/diagnostic/XpDiagnosticManager;
    :cond_0
    const-string v1, "FactoryEventManager"

    const-string v2, "sendMcuDiagCmdAck fail,manager is null"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .end local v0    # "mXpDiagnosticManager":Landroid/car/diagnostic/XpDiagnosticManager;
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 53
    const-string v0, "FactoryEventManager"

    const-string v1, "dump FactoryEventManager"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 55
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "key1"

    const-string v2, "FactoryEventManager"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v1, "key2"

    const-string v2, "val2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v1, "key3"

    const-string v2, "val3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {}, Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;->getInstance()Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;

    move-result-object v1

    const-string v2, "com.example.test"

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;->notifyApp(Ljava/lang/String;Ljava/util/Map;)V

    .line 59
    return-void
.end method

.method public init()V
    .locals 2

    .line 45
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/businessevent/-$$Lambda$FactoryEventManager$diiYr5hnBSTDWWKIyE-a2Lz9TA8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/businessevent/-$$Lambda$FactoryEventManager$diiYr5hnBSTDWWKIyE-a2Lz9TA8;-><init>(Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->addBootCompleteTask(Ljava/lang/Runnable;)V

    .line 50
    return-void
.end method
