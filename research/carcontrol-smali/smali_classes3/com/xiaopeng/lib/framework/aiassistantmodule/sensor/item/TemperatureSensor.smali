.class public abstract Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/TemperatureSensor;
.super Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/BaseSensor;
.source "TemperatureSensor.java"


# static fields
.field public static final HIGH_TEMPERATURE:I = 0x1

.field public static final NORMAL_TEMPERATURE:I


# instance fields
.field private highTemperatureState:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/BaseSensor;-><init>()V

    return-void
.end method


# virtual methods
.method public getHighTemperatureState()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/TemperatureSensor;->highTemperatureState:I

    return v0
.end method

.method public sensorName()Ljava/lang/String;
    .locals 1

    .line 25
    const-class v0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/TemperatureSensor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setHighTemperatureState(I)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/TemperatureSensor;->highTemperatureState:I

    return-void
.end method
