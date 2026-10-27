.class public interface abstract Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/CarControlShowManager;
.super Ljava/lang/Object;
.source "CarControlShowManager.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/client/IBaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/CarControlShowManager$ISignalCallback;
    }
.end annotation


# static fields
.field public static final ELEMENT_CWC_SW:Ljava/lang/String; = "CWC_SW"

.field public static final ELEMENT_DRIVE_RECORDER:Ljava/lang/String; = "DRIVE_RECORDER"

.field public static final ELEMENT_POWER_IMG:Ljava/lang/String; = "POWER_IMG"

.field public static final PAGE_ABOUT:Ljava/lang/String; = "ABOUT"

.field public static final PAGE_ADAS:Ljava/lang/String; = "X_PILOT"

.field public static final PAGE_ALL_DRIVE:Ljava/lang/String; = "ALL_DRIVE"

.field public static final PAGE_CHARGE:Ljava/lang/String; = "CHARGE"

.field public static final PAGE_CONNECTION:Ljava/lang/String; = "CONNECTION"

.field public static final PAGE_DISPLAY:Ljava/lang/String; = "DISPLAY"

.field public static final PAGE_DRIVE:Ljava/lang/String; = "DRIVE"

.field public static final PAGE_LAMP:Ljava/lang/String; = "LAMP"

.field public static final PAGE_SCREENAGE:Ljava/lang/String; = "SCREENAGE"

.field public static final PAGE_SEAT:Ljava/lang/String; = "SEAT"

.field public static final PAGE_SPEECH:Ljava/lang/String; = "SPEECH"

.field public static final PAGE_VEHICLE:Ljava/lang/String; = "VEHICLE"

.field public static final PAGE_VOICE:Ljava/lang/String; = "VOICE"

.field public static final PAGE_WINDOW_DOOR:Ljava/lang/String; = "WINDOW_DOOR"

.field public static final SUB_PAGE_ADAS_DRIVE:Ljava/lang/String; = "ADAS_DRIVE"

.field public static final SUB_PAGE_ADAS_PARK:Ljava/lang/String; = "ADAS_PARK"

.field public static final SUB_PAGE_ADAS_SAFE:Ljava/lang/String; = "ADAS_SAFE"

.field public static final SUB_PAGE_CHARGE_CHARGE:Ljava/lang/String; = "CHARGE_CHARGE"

.field public static final SUB_PAGE_CHARGE_DISCHARGE:Ljava/lang/String; = "CHARGE_DISCHARGE"

.field public static final SUB_PAGE_CONNECTION_EQUIPMENT:Ljava/lang/String; = "CONNECTION_EQUIPMENT"

.field public static final SUB_PAGE_CONNECTION_WIFI_BT:Ljava/lang/String; = "CONNECTION_WIFI_BT"

.field public static final SUB_PAGE_LAMP_ATL:Ljava/lang/String; = "LAMP_ATL"

.field public static final SUB_PAGE_LAMP_CONTROL:Ljava/lang/String; = "LAMP_CONTROL"

.field public static final SUB_PAGE_SEAT_CONTROL:Ljava/lang/String; = "SEAT_CONTROL"

.field public static final SUB_PAGE_SEAT_MASSAGE:Ljava/lang/String; = "SEAT_MASSAGE"

.field public static final SUB_PAGE_SEAT_RHYTHM:Ljava/lang/String; = "SEAT_RHYTHM"


# virtual methods
.method public abstract showCarControlPage(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "page"
        }
    .end annotation
.end method

.method public abstract showCarControlPageElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "page",
            "subpage",
            "element"
        }
    .end annotation
.end method

.method public abstract showCarControlPageWithSubPage(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "page",
            "subpage"
        }
    .end annotation
.end method

.method public abstract showVehicleFaultDetailPage(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "faultCode"
        }
    .end annotation
.end method

.method public abstract showVehicleFaultListPage()V
.end method
