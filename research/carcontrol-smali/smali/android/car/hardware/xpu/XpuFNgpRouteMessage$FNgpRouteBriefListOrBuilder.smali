.class public interface abstract Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefListOrBuilder;
.super Ljava/lang/Object;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Lcom/android/carsdk/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FNgpRouteBriefListOrBuilder"
.end annotation


# virtual methods
.method public abstract getEgoUndergroundParkingLotState()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;
.end method

.method public abstract getEgoUndergroundParkingLotStateValue()I
.end method

.method public abstract getFngpEmulatorNavigation()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;
.end method

.method public abstract getFngpRouteBriefList(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;
.end method

.method public abstract getFngpRouteBriefListCount()I
.end method

.method public abstract getFngpRouteBriefListList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getParkingTabInfo()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;
.end method

.method public abstract getRouteSelectTimestamp()J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getSequenceId()J
.end method

.method public abstract getStateRemind()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;
.end method

.method public abstract getStateRemindValue()I
.end method

.method public abstract hasFngpEmulatorNavigation()Z
.end method

.method public abstract hasParkingTabInfo()Z
.end method
