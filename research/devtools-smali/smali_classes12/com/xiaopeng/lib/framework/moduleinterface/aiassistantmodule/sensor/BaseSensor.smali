.class public abstract Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/BaseSensor;
.super Ljava/lang/Object;
.source "BaseSensor.java"


# instance fields
.field private mSensorCallback:Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/ISensorCallback;

.field private mSensorListener:Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/ISensorListener;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/BaseSensor;->initField()V

    .line 14
    return-void
.end method

.method private getFieldByClasss(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/reflect/Field;
    .locals 2

    .line 104
    nop

    .line 105
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 107
    const/4 v0, 0x0

    :goto_0
    const-class v1, Ljava/lang/Object;

    if-eq p2, v1, :cond_0

    .line 109
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    nop

    .line 107
    move-object v0, v1

    goto :goto_1

    .line 110
    :catch_0
    move-exception v1

    .line 107
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p2

    goto :goto_0

    .line 117
    :cond_0
    return-object v0
.end method


# virtual methods
.method public doExtra(Ljava/lang/String;)V
    .locals 0

    .line 45
    return-void
.end method

.method public getSensorCallback()Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/ISensorCallback;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/BaseSensor;->mSensorCallback:Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/ISensorCallback;

    return-object v0
.end method

.method public getSensorListener()Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/ISensorListener;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/BaseSensor;->mSensorListener:Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/ISensorListener;

    return-object v0
.end method

.method public abstract initField()V
.end method

.method public onRequestSensorValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 77
    nop

    .line 79
    :try_start_0
    invoke-direct {p0, p1, p0}, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/BaseSensor;->getFieldByClasss(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 81
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/BaseSensor;->refreshField(Ljava/lang/String;)V

    .line 83
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 84
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/BaseSensor;->getSensorCallback()Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/ISensorCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/BaseSensor;->getSensorCallback()Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/ISensorCallback;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/BaseSensor;->sensorName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/ISensorCallback;->onSensorReponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_0
    return-object v0
.end method

.method public refreshField(Ljava/lang/String;)V
    .locals 0

    .line 48
    return-void
.end method

.method protected sensing(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 67
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/BaseSensor;->sensing(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method protected sensing(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 61
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/BaseSensor;->getSensorListener()Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/ISensorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/BaseSensor;->getSensorListener()Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/ISensorListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/BaseSensor;->sensorName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/ISensorListener;->onSensorChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_0
    return-void
.end method

.method public abstract sensorName()Ljava/lang/String;
.end method

.method public setSensorCallback(Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/ISensorCallback;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/BaseSensor;->mSensorCallback:Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/ISensorCallback;

    .line 22
    return-void
.end method

.method public setSensorListener(Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/ISensorListener;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/BaseSensor;->mSensorListener:Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/ISensorListener;

    .line 18
    return-void
.end method

.method public abstract startSensing()V
.end method

.method public abstract stopSensing()V
.end method
