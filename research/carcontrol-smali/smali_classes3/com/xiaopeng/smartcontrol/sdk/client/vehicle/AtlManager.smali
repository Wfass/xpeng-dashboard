.class public interface abstract Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager;
.super Ljava/lang/Object;
.source "AtlManager.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/client/IBaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager$ISignalCallback;
    }
.end annotation


# virtual methods
.method public abstract getAtlBrightness()I
.end method

.method public abstract getAtlColorMode()I
.end method

.method public abstract getAtlEffect()I
.end method

.method public abstract getDoubleColor()I
.end method

.method public abstract getSingleColor()I
.end method

.method public abstract isAtlSwEnable()Z
.end method

.method public abstract setAtlBrightness(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract setAtlColorMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setAtlEffect(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation
.end method

.method public abstract setAtlSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public abstract setDoubleColor(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation
.end method

.method public abstract setSingleColor(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation
.end method
