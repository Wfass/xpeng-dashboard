.class public Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/ContextSensor;
.super Ljava/lang/Object;
.source "ContextSensor.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/IContextSensor;


# static fields
.field public static final CMD_REQEST_SENSOR_VALUE:Ljava/lang/String; = "request_sensor_value"

.field public static final CMD_RESPONSE_SENSOR_VALUE:Ljava/lang/String; = "response_sensor_value"

.field public static final CMD_SENSOR_CHANGE:Ljava/lang/String; = "sensor_change"

.field public static final CMD_SUBSCRIBE:Ljava/lang/String; = "subscribe"

.field public static final CMD_UNSUBSCRIBE:Ljava/lang/String; = "unsubscribe"

.field public static final DATA_FIELD:Ljava/lang/String; = "field"

.field public static final DATA_PACKAGE:Ljava/lang/String; = "package"

.field public static final DATA_SENSOR:Ljava/lang/String; = "sensor"

.field public static final DATA_VALUE:Ljava/lang/String; = "value"

.field public static final KEY_CMD:Ljava/lang/String; = "cmd"

.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field private static final TAG:Ljava/lang/String; = "Sensor:ContextSensor"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIIpcService:Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;

.field private mSensorCallbackArrayMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/ISensorCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mSensorListenerArrayMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/ISensorListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-class v0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcModuleEntry;

    new-instance v1, Lcom/xiaopeng/lib/framework/ipcmodule/IpcModuleEntry;

    invoke-direct {v1, p1}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcModuleEntry;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/module/Module;->register(Ljava/lang/Class;Lcom/xiaopeng/lib/framework/module/IModuleEntry;)V

    .line 59
    const-class v0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcModuleEntry;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/ContextSensor;->mIIpcService:Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;

    .line 61
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/ContextSensor;->mContext:Landroid/content/Context;

    .line 62
    new-instance p1, Landroid/util/ArrayMap;

    const/16 v0, 0x14

    invoke-direct {p1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/ContextSensor;->mSensorListenerArrayMap:Landroid/util/ArrayMap;

    .line 63
    new-instance p1, Landroid/util/ArrayMap;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/ContextSensor;->mSensorCallbackArrayMap:Landroid/util/ArrayMap;

    .line 65
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method private onSensorChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/ContextSensor;->mSensorListenerArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/ISensorListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 135
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const-string v2, "Sensor:ContextSensor"

    const-string v3, "onSensorChange class = %s, field = %s, value = %s"

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/ISensorListener;->onSensorChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private responseSensorValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/ContextSensor;->mSensorCallbackArrayMap:Landroid/util/ArrayMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/ContextSensor;->mSensorCallbackArrayMap:Landroid/util/ArrayMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/ISensorCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/ISensorCallback;->onSensorReponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object p3, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/ContextSensor;->mSensorCallbackArrayMap:Landroid/util/ArrayMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private sendIPCMsgToAIAssistant(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 162
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 163
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "cmd"

    .line 164
    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "package"

    .line 166
    iget-object v3, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/ContextSensor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sensor"

    .line 167
    invoke-virtual {p3, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "field"

    .line 168
    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "data"

    .line 169
    invoke-virtual {v1, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "string_msg"

    .line 170
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Sensor:ContextSensor"

    const-string p2, "send Sensor msg: %s"

    const/4 p3, 0x1

    .line 172
    new-array p3, p3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v2

    invoke-static {p1, p2, p3}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/ContextSensor;->mIIpcService:Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;

    const/16 p2, 0x2b0c

    const-string p3, "com.xiaopeng.aiassistant"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, v0, p3}, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;->sendData(ILandroid/os/Bundle;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 175
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getSensorValue(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/ISensorCallback;)V
    .locals 3

    const/4 v0, 0x2

    .line 90
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "Sensor:ContextSensor"

    const-string v2, "requestSensorValue sensor = %s, field = %s"

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/ContextSensor;->mSensorCallbackArrayMap:Landroid/util/ArrayMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "request_sensor_value"

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/ContextSensor;->sendIPCMsgToAIAssistant(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onEvent(Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "cmd"

    .line 104
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;->getMsgID()I

    move-result v1

    const/16 v2, 0x2b0c

    if-ne v1, v2, :cond_1

    .line 105
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;->getPayloadData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "string_msg"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    .line 106
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string v2, "Sensor:ContextSensor"

    const-string v3, "receive ipc msg : id = %d, data = %s"

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    .line 109
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "sensor"

    .line 110
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "field"

    .line 111
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "value"

    .line 112
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "sensor_change"

    .line 113
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 114
    invoke-direct {p0, v2, v3, p1}, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/ContextSensor;->onSensorChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v4, "response_sensor_value"

    .line 115
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    invoke-direct {p0, v2, v3, p1}, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/ContextSensor;->responseSensorValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 119
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public subscribe(Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/ISensorListener;)V
    .locals 3

    const/4 v0, 0x1

    .line 70
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Sensor:ContextSensor"

    const-string v2, "subscribe sensor = %s"

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/ContextSensor;->mSensorListenerArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "subscribe"

    .line 74
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/ContextSensor;->sendIPCMsgToAIAssistant(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unSubscribe(Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/ISensorListener;)V
    .locals 2

    const/4 p2, 0x1

    .line 79
    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string v0, "Sensor:ContextSensor"

    const-string v1, "unsubscribe sensor = %s"

    invoke-static {v0, v1, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    iget-object p2, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/ContextSensor;->mSensorListenerArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 81
    iget-object p2, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/ContextSensor;->mSensorListenerArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p2, 0x0

    const-string v0, "unsubscribe"

    .line 84
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/ContextSensor;->sendIPCMsgToAIAssistant(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
