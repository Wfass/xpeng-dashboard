.class public interface abstract Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/DriveControlManager;
.super Ljava/lang/Object;
.source "DriveControlManager.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/client/IBaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/DriveControlManager$ISignalCallback;
    }
.end annotation


# static fields
.field public static final DRIVE_MODE_COMFORT:I = 0x3

.field public static final DRIVE_MODE_ECO:I = 0x2

.field public static final DRIVE_MODE_GEEK:I = 0x8

.field public static final DRIVE_MODE_INDIVIDUAL:I = 0xc

.field public static final DRIVE_MODE_NORMAL:I = 0x0

.field public static final DRIVE_MODE_OFFROAD:I = 0x4

.field public static final DRIVE_MODE_RACER:I = 0xb

.field public static final DRIVE_MODE_SPORT:I = 0x1

.field public static final DRIVE_MODE_XPOWER:I = 0x9

.field public static final DRIVE_MODE_X_PEDAL:I = 0xa


# virtual methods
.method public abstract getDriveMode()I
.end method

.method public abstract getDriveModeList()Ljava/lang/String;
.end method

.method public abstract getNormalDriveModeList()Ljava/lang/String;
.end method

.method public abstract getSpecialDriveModeList()Ljava/lang/String;
.end method

.method public abstract setDriveMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method
