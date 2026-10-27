.class public interface abstract Lcom/xiaopeng/carcontrol/viewmodel/service/ISSDoorCallBack;
.super Ljava/lang/Object;
.source "ISSDoorCallBack.java"


# virtual methods
.method public abstract onAvmWorkStateChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method public abstract onDoorsStateChanged([I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "states"
        }
    .end annotation
.end method

.method public abstract onInitSsDoor()V
.end method

.method public abstract onLeftSdcDoorPosChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract onLeftSdcSysStateChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method public abstract onRightSdcDoorPosChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract onRightSdcSysStateChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method public abstract onUnInitSsDoor()V
.end method

.method public abstract onVcuGearChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gear"
        }
    .end annotation
.end method
