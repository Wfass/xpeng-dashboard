.class public interface abstract Lcom/xiaopeng/carcontrol/viewmodel/scenario/IScenarioViewModel;
.super Ljava/lang/Object;
.source "IScenarioViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;


# static fields
.field public static final REASON_BATTERY_LOW:Ljava/lang/String; = "rBatteryLow"

.field public static final REASON_GEAR_NOT_P:Ljava/lang/String; = "rGearNotP"

.field public static final REASON_IN_DC_CHARGE:Ljava/lang/String; = "rInDcCharge"

.field public static final RET_FAIL_DOOR_OPEN:Ljava/lang/String; = "doorOpen"

.field public static final RET_FAIL_GEAR_NOT_P:Ljava/lang/String; = "gearNotP"

.field public static final SCENARIO_STATE_IDLE:I = 0x0

.field public static final SCENARIO_STATE_RUNNING:I = 0x2


# virtual methods
.method public abstract getCurrentUserScenario()Ljava/lang/String;
.end method

.method public abstract getUserScenarioStatus(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scenario"
        }
    .end annotation
.end method

.method public abstract registerBinderObserver()V
.end method

.method public abstract reportScenarioStatus(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scenario",
            "state"
        }
    .end annotation
.end method

.method public abstract startScenario(ZLjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "scenario"
        }
    .end annotation
.end method
