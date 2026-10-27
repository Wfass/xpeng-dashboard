.class public interface abstract Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;
.super Ljava/lang/Object;
.source "IScenarioController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController<",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController$Callback;",
        ">;"
    }
.end annotation


# static fields
.field public static final MEDITATION_MODE:Ljava/lang/String; = "meditation_mode"

.field public static final RET_FAIL_DOOR_OPEN:Ljava/lang/String; = "doorOpen"

.field public static final RET_FAIL_GEAR_NOT_P:Ljava/lang/String; = "gearNotP"

.field public static final RET_SUCCESS:Ljava/lang/String; = "success"

.field public static final SCENARIO_5D_CINEMA_MODE:Ljava/lang/String; = "5d_cinema_mode"

.field public static final SCENARIO_COSMETIC_SPACE_MODE:Ljava/lang/String; = "cosmetic_space_mode"

.field public static final SCENARIO_NORMAL:Ljava/lang/String; = "normal_mode"

.field public static final SCENARIO_STATE_EXITING:I = 0x3

.field public static final SCENARIO_STATE_IDLE:I = 0x0

.field public static final SCENARIO_STATE_INVALID:I = -0x1

.field public static final SCENARIO_STATE_RUNNING:I = 0x2

.field public static final SCENARIO_STATE_STARTING:I = 0x1

.field public static final SCENARIO_TRAILED_MODE:Ljava/lang/String; = "trailed_mode"

.field public static final SCENARIO_UNKNOWN:Ljava/lang/String; = "unknown_mode"

.field public static final SCENARIO_VIPSEAT_MODE:Ljava/lang/String; = "vipseat_mode"

.field public static final SPACE_CAPSULE_MODE:Ljava/lang/String; = "spacecapsule_mode"

.field public static final SPACE_CAPSULE_MOVIE_MODE:Ljava/lang/String; = "spacecapsule_mode_movie"

.field public static final SPACE_CAPSULE_REASON_BATTERY_LOW:Ljava/lang/String; = "rBatteryLow"

.field public static final SPACE_CAPSULE_REASON_GEAR_NOT_P:Ljava/lang/String; = "rGearNotP"

.field public static final SPACE_CAPSULE_REASON_IN_DC_CHARGE:Ljava/lang/String; = "rInDcCharge"

.field public static final SPACE_CAPSULE_SLEEP_MODE:Ljava/lang/String; = "spacecapsule_mode_sleep"

.field public static final SPACE_CAPSULE_SOURCE_ACTIVITY:Ljava/lang/String; = "activity"

.field public static final SPACE_CAPSULE_SOURCE_VOICE:Ljava/lang/String; = "voice"

.field public static final VICE_MEDITATION_MODE:Ljava/lang/String; = "meditation_passenger_seat_mode"


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

.method public abstract reportScenarioState(Ljava/lang/String;I)V
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
            "enable",
            "scenario"
        }
    .end annotation
.end method
