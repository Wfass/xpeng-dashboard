.class public Lcom/xiaopeng/xuiservice/businessevent/OtaEventManager;
.super Ljava/lang/Object;
.source "OtaEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/businessevent/OtaEventManager$OtaEventManagerHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OtaEventManager"

.field private static final notifyPackageName:Ljava/lang/String; = "com.xiaopeng.ota"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/businessevent/OtaEventManager;->addCanSignalListener()V

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/businessevent/OtaEventManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/businessevent/OtaEventManager$1;

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/businessevent/OtaEventManager;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/businessevent/OtaEventManager;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/businessevent/OtaEventManager;
    .param p1, "x1"    # Landroid/car/hardware/CarPropertyValue;

    .line 18
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/businessevent/OtaEventManager;->handlePropertyChange(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method private addCanSignalListener()V
    .locals 2

    .line 43
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/businessevent/OtaEventManager$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/businessevent/OtaEventManager$1;-><init>(Lcom/xiaopeng/xuiservice/businessevent/OtaEventManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 53
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/businessevent/OtaEventManager;
    .locals 1

    .line 31
    invoke-static {}, Lcom/xiaopeng/xuiservice/businessevent/OtaEventManager$OtaEventManagerHolder;->access$100()Lcom/xiaopeng/xuiservice/businessevent/OtaEventManager;

    move-result-object v0

    return-object v0
.end method

.method private handlePropertyChange(Landroid/car/hardware/CarPropertyValue;)V
    .locals 5
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 56
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    .line 58
    .local v0, "propertyId":I
    const v1, 0x21401409

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 60
    :cond_0
    const-string v2, "OtaEventManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ID_MCU_IG_STATUS:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 62
    .local v2, "status":I
    packed-switch v2, :pswitch_data_0

    .end local v2    # "status":I
    goto :goto_0

    .line 65
    .restart local v2    # "status":I
    :pswitch_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 66
    .local v3, "eventMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 66
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v1, "OtaEventManager"

    const-string v4, "notify:com.xiaopeng.ota"

    invoke-static {v1, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;->getInstance()Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;

    move-result-object v1

    const-string v4, "com.xiaopeng.ota"

    invoke-virtual {v1, v4, v3}, Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;->notifyApp(Ljava/lang/String;Ljava/util/Map;)V

    .line 70
    .end local v3    # "eventMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .line 75
    .end local v2    # "status":I
    :goto_0
    nop

    .line 79
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 39
    const-string v0, "OtaEventManager"

    const-string v1, "dump OtaEventManager"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public init()V
    .locals 0

    .line 36
    return-void
.end method
