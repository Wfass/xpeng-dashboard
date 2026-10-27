.class public interface abstract Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController;
.super Ljava/lang/Object;
.source "ITboxController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController<",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController$Callback;",
        ">;"
    }
.end annotation


# static fields
.field public static final BLE_DOUBLE_CONNETED:I = 0x3

.field public static final BLE_KEY_CONNETED:I = 0x2

.field public static final BLE_KEY_SEARCH_ACTIVE:I = 0x2

.field public static final BLE_NOT_CONNETED:I = 0x0

.field public static final BLE_PHONE_CONNETED:I = 0x1

.field public static final NETWORK_TYPE_END:I = 0x4

.field public static final NETWORK_TYPE_START:I = 0x3

.field public static final PHONE_LOCATION_INSIDE:I = 0x2

.field public static final PHONE_LOCATION_NO_COMMAND:I = 0x0

.field public static final PHONE_LOCATION_OUTSIDE:I = 0x1

.field public static final SOLDIER_SW_LEVEL_1:I = 0x1

.field public static final SOLDIER_SW_LEVEL_2:I = 0x2

.field public static final SOLDIER_SW_LEVEL_3:I = 0x3

.field public static final SOLDIER_SW_OFF:I = 0x0

.field public static final TBOX_AC_CHARGE_UNLOCK_ST_APPOINTMENT:I = 0x2

.field public static final TBOX_AC_CHARGE_UNLOCK_ST_UNLOCK:I = 0x1

.field public static final TBOX_IOT_BUS_TYPE_AC_CHARGER:I = 0x1


# virtual methods
.method public abstract getAutoPowerOffConfig()Z
.end method

.method public abstract getIotBusinessType()I
.end method

.method public abstract getSoldierSwStatus()I
.end method

.method public abstract getTboxAcChargerSt()I
.end method

.method public abstract setAutoPowerOffConfig(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation
.end method

.method public abstract setNetWorkType(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract setSoldierSw(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation
.end method

.method public abstract setTboxDigitalKeyAllDelete()V
.end method

.method public abstract setTboxDigitalKeyExistQuery()V
.end method
