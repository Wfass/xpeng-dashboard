.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController;
.super Ljava/lang/Object;
.source "IScuController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$ParkByMemorySwEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$FsdSwitchEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$V2TargetParkingPositionEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$V2AltimeterEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$V2ScuAvmBox2UpdateEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$V2ScuAvmBox1UpdateEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$V2SlotThetaEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$V2ScuSlot5UpdateEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$V2ScuSlot4UpdateEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$V2ScuSlot3UpdateEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$V2ScuSlot2UpdateEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$V2ScuSlot1UpdateEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$V2TailRadarDataEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$V2FrontRadarDataEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$V2TailRadarFaultStEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$V2FrontRadarFaultStEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$V2TailRadarLevelEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$V2FrontRadarLevelEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$ErrorTipsUpdateEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$SlotForPatkUpdateEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$RightAvmDataUpdateEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$LeftAvmDataUpdateEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$SensorDataUpdateEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController$AllParklotDataEventMsg;
    }
.end annotation


# static fields
.field public static final DISABLE_PARK_BY_MEMORY:I = 0x1

.field public static final DISABLE_PARK_BY_MEMORY_WITH_LICENSE:I = 0x2

.field public static final ENABLE_PARK_BY_MEMORY:I = 0x2

.field public static final ENABLE_PARK_BY_MEMORY_WITH_LICENSE:I = 0x1

.field public static final PARK_BY_MEMORY_IN_INITIALIZATION:I = 0x0

.field public static final SCU_FSD_SW_OFF:I = 0x0

.field public static final SCU_FSD_SW_ON:I = 0x1

.field public static final SWITCH_PARK_BY_MEMORY_WITHOUT_LICENSE:I = 0x3


# virtual methods
.method public abstract getAltimeterV2()[F
.end method

.method public abstract getFsdSwitchState()I
.end method

.method public abstract getParkByMemorySwSt()I
.end method

.method public abstract getTargetParkingPositionV2()[I
.end method

.method public abstract setFsdSwitch(I)V
.end method

.method public abstract setParkByMemorySw(I)V
.end method
