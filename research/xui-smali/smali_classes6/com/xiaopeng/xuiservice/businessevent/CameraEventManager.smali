.class public Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;
.super Ljava/lang/Object;
.source "CameraEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager$CameraEventManagerHolder;
    }
.end annotation


# static fields
.field private static final KEY_MESSAGE_ID:Ljava/lang/String; = "msg_id"

.field private static final KEY_MESSAGE_REF:Ljava/lang/String; = "msg_ref"

.field private static final KEY_MESSAGE_TYPE:Ljava/lang/String; = "msg_type"

.field private static final KEY_SERVICE_TYPE:Ljava/lang/String; = "service_type"

.field private static final MSG_FROM_CLIENT_PREFIX:Ljava/lang/String; = "20"

.field private static final MSG_JASON_BODY_BASIC:Ljava/lang/String; = "{\"msg_id\":\"123\",\"msg_type\":1,\"service_type\":11,\"msg_content\":{\"code\":9},\"msg_ref\":\"123\"}"

.field private static final MSG_TYPE_FROM_CLIENT:Ljava/lang/String; = "1"

.field private static final TAG:Ljava/lang/String; = "CameraEventManager"

.field private static final VALUE_MSG_EXCLUDE_TYPE:Ljava/lang/String; = "4"

.field private static final VALUE_SERVICE_TYPE:Ljava/lang/String; = "11"

.field private static notifyApp:Z = false

.field private static final notifyPackageName:Ljava/lang/String; = "com.xiaopeng.xmart.camera"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;->notifyApp:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;->addCanSignalListener()V

    .line 49
    const-string v0, "business_camera"

    new-instance v1, Lcom/xiaopeng/xuiservice/businessevent/-$$Lambda$CameraEventManager$adNJYJrP2oChhLuQfBsGxW2y9Yo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/businessevent/-$$Lambda$CameraEventManager$adNJYJrP2oChhLuQfBsGxW2y9Yo;-><init>(Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->registerDump(Ljava/lang/String;Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;)V

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager$1;

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;
    .param p1, "x1"    # Landroid/car/hardware/CarPropertyValue;

    .line 27
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;->handlePropertyChange(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method private addCanSignalListener()V
    .locals 2

    .line 101
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager$1;-><init>(Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 112
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager$2;-><init>(Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addTboxManagerListener(Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;)V

    .line 123
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager$3;-><init>(Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 134
    return-void
.end method

.method private feedbackMessageWhenIgOn(Ljava/lang/String;)V
    .locals 7
    .param p1, "msgRef"    # Ljava/lang/String;

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "20"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;->getVehicleId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 262
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "msgId":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    const-string/jumbo v3, "{\"msg_id\":\"123\",\"msg_type\":1,\"service_type\":11,\"msg_content\":{\"code\":9},\"msg_ref\":\"123\"}"

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 266
    .local v2, "msg":Lorg/json/JSONObject;
    const-string v3, "msg_id"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    const-string v3, "msg_ref"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 269
    .local v3, "msgString":Ljava/lang/String;
    const-string v4, "CameraEventManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "feedbackMessageWhenIgOn,msg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v4

    const-string/jumbo v5, "xp_tbox"

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v4

    check-cast v4, Landroid/car/hardware/tbox/CarTboxManager;

    .line 271
    .local v4, "manager":Landroid/car/hardware/tbox/CarTboxManager;
    if-eqz v4, :cond_0

    .line 272
    invoke-virtual {v4, v3}, Landroid/car/hardware/tbox/CarTboxManager;->setCameraRemoteControlFeedback(Ljava/lang/String;)V

    goto :goto_0

    .line 274
    :cond_0
    const-string v5, "CameraEventManager"

    const-string v6, "get CarTboxManager null"

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    .end local v2    # "msg":Lorg/json/JSONObject;
    .end local v3    # "msgString":Ljava/lang/String;
    .end local v4    # "manager":Landroid/car/hardware/tbox/CarTboxManager;
    :goto_0
    goto :goto_1

    .line 276
    :catch_0
    move-exception v2

    .line 277
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "CameraEventManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "feedbackMessageWhenIgOn e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private getIgStatus()I
    .locals 6

    .line 242
    const/4 v0, -0x1

    .line 243
    .local v0, "status":I
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v1

    const-string/jumbo v2, "xp_mcu"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/mcu/CarMcuManager;

    .line 244
    .local v1, "manager":Landroid/car/hardware/mcu/CarMcuManager;
    if-eqz v1, :cond_0

    .line 246
    :try_start_0
    invoke-virtual {v1}, Landroid/car/hardware/mcu/CarMcuManager;->getIgStatusFromMcu()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 249
    goto :goto_0

    .line 247
    :catch_0
    move-exception v2

    .line 248
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "CameraEventManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIgStatusFromMcu e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;
    .locals 1

    .line 55
    invoke-static {}, Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager$CameraEventManagerHolder;->access$100()Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;

    move-result-object v0

    return-object v0
.end method

.method private getVehicleId()I
    .locals 2

    .line 255
    const-string v0, "persist.sys.vehicle_id"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private handlePropertyChange(Landroid/car/hardware/CarPropertyValue;)V
    .locals 9
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 137
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    .line 139
    .local v0, "propertyId":I
    const/4 v1, 0x2

    const v2, 0x21101019

    const/4 v3, 0x1

    if-eq v0, v2, :cond_6

    const v2, 0x21401279

    if-eq v0, v2, :cond_4

    const v2, 0x21401409

    if-eq v0, v2, :cond_2

    const v1, 0x21411035

    if-eq v0, v1, :cond_0

    goto/16 :goto_5

    .line 219
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;->getIgStatus()I

    move-result v1

    .line 220
    .local v1, "status":I
    const-string v2, "CameraEventManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ID_TBOX_GUARD,ig status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    if-ne v3, v1, :cond_1

    .line 223
    goto/16 :goto_5

    .line 227
    :cond_1
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 228
    .local v2, "eventMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "1"

    .line 229
    .local v3, "eventValue":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v4, "CameraEventManager"

    const-string v5, "notify:com.xiaopeng.xmart.camera"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;->getInstance()Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;

    move-result-object v4

    const-string v5, "com.xiaopeng.xmart.camera"

    invoke-virtual {v4, v5, v2}, Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;->notifyApp(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v2    # "eventMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "eventValue":Ljava/lang/String;
    goto :goto_0

    .line 232
    :catch_0
    move-exception v2

    .line 233
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "CameraEventManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handle propertyId e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .end local v1    # "status":I
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    goto/16 :goto_5

    .line 141
    :cond_2
    const-string v4, "CameraEventManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "##ID_MCU_IG_STATUS:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 143
    .local v4, "status":I
    if-ne v1, v4, :cond_3

    .line 145
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 146
    .local v1, "eventMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 146
    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-static {}, Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;->getInstance()Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;

    move-result-object v2

    const-string v5, "com.xiaopeng.xmart.camera"

    invoke-virtual {v2, v5, v1}, Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;->notifyApp(Ljava/lang/String;Ljava/util/Map;)V

    .line 149
    sput-boolean v3, Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;->notifyApp:Z

    .line 150
    .end local v1    # "eventMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 151
    :cond_3
    const/4 v1, 0x0

    sput-boolean v1, Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;->notifyApp:Z

    .line 153
    .end local v4    # "status":I
    :goto_1
    goto/16 :goto_5

    .line 200
    :cond_4
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;->getIgStatus()I

    move-result v1

    .line 201
    .local v1, "status":I
    const-string v2, "CameraEventManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ID_VCU_BAT_BUMP_RECRD,ig status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    if-ne v3, v1, :cond_d

    .line 204
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v3, :cond_5

    .line 205
    goto/16 :goto_5

    .line 209
    :cond_5
    :try_start_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 210
    .local v2, "eventMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 211
    .restart local v3    # "eventValue":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v4, "CameraEventManager"

    const-string v5, "notify:com.xiaopeng.xmart.camera"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;->getInstance()Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;

    move-result-object v4

    const-string v5, "com.xiaopeng.xmart.camera"

    invoke-virtual {v4, v5, v2}, Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;->notifyApp(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 216
    .end local v2    # "eventMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "eventValue":Ljava/lang/String;
    goto :goto_2

    .line 214
    :catch_1
    move-exception v2

    .line 215
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "CameraEventManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handle propertyId e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .end local v1    # "status":I
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    goto/16 :goto_5

    .line 156
    :cond_6
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;->getIgStatus()I

    move-result v4

    .line 157
    .restart local v4    # "status":I
    const-string v5, "CameraEventManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get ig status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    if-eq v3, v4, :cond_8

    .line 159
    if-ne v1, v4, :cond_d

    .line 161
    sget-boolean v1, Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;->notifyApp:Z

    if-eqz v1, :cond_d

    .line 163
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 164
    .local v1, "propValue":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 165
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 166
    .local v3, "eventMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 166
    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-static {}, Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;->getInstance()Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;

    move-result-object v2

    const-string v5, "com.xiaopeng.xmart.camera"

    invoke-virtual {v2, v5, v3}, Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;->notifyApp(Ljava/lang/String;Ljava/util/Map;)V

    .line 170
    .end local v1    # "propValue":Ljava/lang/Object;
    .end local v3    # "eventMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    goto/16 :goto_5

    .line 174
    :cond_8
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 175
    .restart local v1    # "propValue":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 177
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 178
    .local v2, "msg":Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 179
    .local v3, "service_type":Ljava/lang/String;
    const/4 v5, 0x0

    .line 180
    .local v5, "msg_ref":Ljava/lang/String;
    const-string v6, "service_type"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 181
    const-string v6, "service_type"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 184
    :cond_9
    const-string v6, "CameraEventManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ID_TBOX_CAMERA_REMOTE_CTRL,service type:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v6, "11"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 186
    const-string v6, "msg_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 187
    const-string v6, "msg_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 189
    :cond_a
    invoke-direct {p0, v5}, Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;->feedbackMessageWhenIgOn(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .end local v2    # "msg":Lorg/json/JSONObject;
    .end local v3    # "service_type":Ljava/lang/String;
    .end local v5    # "msg_ref":Ljava/lang/String;
    goto :goto_3

    .line 191
    :catch_2
    move-exception v2

    .line 192
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "CameraEventManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handle ID_TBOX_CAMERA_REMOTE_CTRL e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .end local v1    # "propValue":Ljava/lang/Object;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "status":I
    :cond_b
    :goto_3
    goto :goto_4

    .line 195
    .restart local v1    # "propValue":Ljava/lang/Object;
    .restart local v4    # "status":I
    :cond_c
    const-string v2, "CameraEventManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handle ID_TBOX_CAMERA_REMOTE_CTRL,invalid value class="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 195
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .end local v1    # "propValue":Ljava/lang/Object;
    .end local v4    # "status":I
    :goto_4
    nop

    .line 239
    :cond_d
    :goto_5
    return-void
.end method

.method static synthetic lambda$init$1(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 62
    const-string v0, "CameraEventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    move-object v0, p1

    .line 64
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.xiaopeng.xui.businessevent"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 65
    const/4 v1, 0x0

    .line 66
    .local v1, "moduleName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 67
    .local v2, "status":Ljava/lang/String;
    const-string v3, "module"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    const-string v3, "module"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    :cond_0
    const-string v3, "status"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 71
    const-string v3, "status"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 73
    :cond_1
    const-string v3, "com.xiaopeng.xmart.camera"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 74
    const-string v3, "CameraEventManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "module="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",stat="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v3, v6

    goto :goto_0

    :pswitch_1
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v3, v5

    :cond_2
    :goto_0
    packed-switch v3, :pswitch_data_1

    .end local v1    # "moduleName":Ljava/lang/String;
    .end local v2    # "status":Ljava/lang/String;
    goto :goto_1

    .line 81
    .restart local v1    # "moduleName":Ljava/lang/String;
    .restart local v2    # "status":Ljava/lang/String;
    :pswitch_2
    sput-boolean v5, Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;->notifyApp:Z

    .line 82
    goto :goto_1

    .line 78
    :pswitch_3
    sput-boolean v6, Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;->notifyApp:Z

    .line 79
    nop

    .line 88
    .end local v1    # "moduleName":Ljava/lang/String;
    .end local v2    # "status":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 51
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 92
    const-string v0, "CameraEventManager"

    const-string v1, "dump CameraEventManager"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 94
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "key1"

    const-string v2, "val1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v1, "key2"

    const-string v2, "val2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v1, "key3"

    const-string v2, "val3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v1, "abcdefg1234567##"

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;->feedbackMessageWhenIgOn(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public init()V
    .locals 3

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v0, "filter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "com.xiaopeng.xui.businessevent"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/xuiservice/businessevent/-$$Lambda$CameraEventManager$w_e-NZzPOhWkjdxMHchkLnWnh2U;->INSTANCE:Lcom/xiaopeng/xuiservice/businessevent/-$$Lambda$CameraEventManager$w_e-NZzPOhWkjdxMHchkLnWnh2U;

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->registerListener(Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;Ljava/util/List;)V

    .line 89
    return-void
.end method
