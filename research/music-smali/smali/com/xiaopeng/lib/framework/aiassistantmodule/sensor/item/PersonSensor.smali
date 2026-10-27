.class public abstract Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/PersonSensor;
.super Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/BaseSensor;
.source "PersonSensor.java"


# static fields
.field public static final DISTRACTION_LEVEL_EXHIBITION:I = 0x3

.field public static final DISTRACTION_LEVEL_STRAIGHT:I = 0x1

.field public static final DISTRACTION_LEVEL_SWERVE:I = 0x2

.field public static final FATIGUE_LEVEL_1:I = 0x1

.field public static final FATIGUE_LEVEL_2:I = 0x2

.field public static final FATIGUE_LEVEL_EXHIBITION:I = 0x3

.field public static final FIELD_DISTRACTION_LEVEL:Ljava/lang/String; = "distractionLevel"

.field public static final FIELD_FATIGUE_LEVEL:Ljava/lang/String; = "fatigueLevel"


# instance fields
.field private distractionLevel:I

.field private fatigueLevel:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/BaseSensor;-><init>()V

    return-void
.end method


# virtual methods
.method public getDistractionLevel()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/PersonSensor;->distractionLevel:I

    return v0
.end method

.method public getFatigueLevel()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/PersonSensor;->fatigueLevel:I

    return v0
.end method

.method public sensorName()Ljava/lang/String;
    .locals 1

    .line 71
    const-class v0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/PersonSensor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDistractionLevel(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/PersonSensor;->distractionLevel:I

    return-void
.end method

.method public setFatigueLevel(I)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/PersonSensor;->fatigueLevel:I

    return-void
.end method
