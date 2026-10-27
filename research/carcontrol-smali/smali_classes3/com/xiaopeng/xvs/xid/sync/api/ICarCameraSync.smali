.class public interface abstract Lcom/xiaopeng/xvs/xid/sync/api/ICarCameraSync;
.super Ljava/lang/Object;
.source "ICarCameraSync.java"

# interfaces
.implements Lcom/xiaopeng/xvs/xid/sync/api/ICommonSync;


# static fields
.field public static final KEY_BEV_MODE:Ljava/lang/String; = "CAMERA_KEY_BEV_MODE"

.field public static final KEY_CAR_DRIVING_SCENE_NRA_LEVEL:Ljava/lang/String; = "KEY_CAR_DRIVING_SCENE_NRA_LEVEL"

.field public static final KEY_TRANS_BODY:Ljava/lang/String; = "CAMERA_KEY_TRANS_BODY"

.field public static final KEY_TRANS_CHASSIS:Ljava/lang/String; = "CAMERA_KEY_TRANS_CHASSIS"

.field public static final KEY_TURN_ASSISTANT_SW:Ljava/lang/String; = "TURN_ASSISTANT_SW"


# virtual methods
.method public abstract getBevMode(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation
.end method

.method public abstract getCarDrivingSceneNRALevel(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation
.end method

.method public abstract getTransBody(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation
.end method

.method public abstract getTransChassis(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation
.end method

.method public abstract getTurnAssistantSW(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation
.end method

.method public abstract putBevMode(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract putTransBody(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract putTransChassis(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract putTurnAssistantSW(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract setCarDrivingSceneNRALevel(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method
