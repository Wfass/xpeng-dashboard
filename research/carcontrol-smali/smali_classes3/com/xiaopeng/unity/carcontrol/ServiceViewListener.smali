.class public interface abstract Lcom/xiaopeng/unity/carcontrol/ServiceViewListener;
.super Ljava/lang/Object;
.source "ServiceViewListener.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/base/INapaListener;


# virtual methods
.method public abstract onEnterGoOffScene()V
.end method

.method public abstract onEnterGoOnScene(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scene"
        }
    .end annotation
.end method

.method public abstract onExitChargeScene(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scene"
        }
    .end annotation
.end method

.method public abstract onExitGoOffScene(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scene"
        }
    .end annotation
.end method

.method public abstract onExitGoOnScene(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scene"
        }
    .end annotation
.end method

.method public onGearChange(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    return-void
.end method

.method public onIgStateChange(I)V
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

.method public abstract onShowDialog(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scene",
            "show"
        }
    .end annotation
.end method

.method public abstract onShowDialogWithDisplayId(Ljava/lang/String;ZI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "scene",
            "show",
            "displayId"
        }
    .end annotation
.end method

.method public abstract onShowDropDownMenu(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scene",
            "show"
        }
    .end annotation
.end method

.method public abstract onShowSmartControlElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mainPage",
            "subPage",
            "element"
        }
    .end annotation
.end method

.method public abstract onShowSmartControlSubTab(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mainPage",
            "subPage"
        }
    .end annotation
.end method

.method public abstract onShowSmartControlTab(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "page"
        }
    .end annotation
.end method
