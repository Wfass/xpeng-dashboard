.class public interface abstract Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/DriveControlManagerServer$Implementation;
.super Ljava/lang/Object;
.source "DriveControlManagerServer.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/server/BaseManagerServer$IBaseImplementation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/DriveControlManagerServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Implementation"
.end annotation


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
