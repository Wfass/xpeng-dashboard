.class public interface abstract Lcom/xiaopeng/carcontrol/carmanager/controller/ICameraAuthController;
.super Ljava/lang/Object;
.source "ICameraAuthController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/carmanager/controller/ICameraAuthController$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController<",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/ICameraAuthController$Callback;",
        ">;"
    }
.end annotation


# static fields
.field public static final CAMERA_AUTH_FIRST_COUNT_DAYS:I = 0x1e

.field public static final CAMERA_AUTH_SECOND_COUNT_DAYS:I = 0xf

.field public static final CAMERA_AUTH_STATE_EXPIRED:I = 0x2

.field public static final CAMERA_AUTH_STATE_NO:I = 0x0

.field public static final CAMERA_AUTH_STATE_YES:I = 0x1

.field public static final CAMERA_AUTH_THIRD_COUNT_DAYS:I = 0x7

.field public static final KEY_CAMERA_AUTH_FIRST_COUNT_ST:Ljava/lang/String; = "xp_carcontrol_camera_auth_first_count_st"

.field public static final KEY_CAMERA_AUTH_SECOND_COUNT_ST:Ljava/lang/String; = "xp_carcontrol_camera_auth_second_count_st"

.field public static final KEY_CAMERA_AUTH_ST:Ljava/lang/String; = "xp_carcontrol_camera_auth_st"

.field public static final KEY_CAMERA_AUTH_THIRD_COUNT_ST:Ljava/lang/String; = "xp_carcontrol_camera_auth_third_count_st"

.field public static final KEY_CAMERA_AUTH_TIME_ST:Ljava/lang/String; = "xp_carcontrol_camera_auth_time_st"

.field public static final KEY_OOBE_REQUEST:Ljava/lang/String; = "xp_carcontrol_oobe_request"


# virtual methods
.method public abstract getCameraAuthState()I
.end method

.method public setCameraAuthState(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    return-void
.end method

.method public setCameraAuthState(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "param"
        }
    .end annotation

    return-void
.end method
