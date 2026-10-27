.class public interface abstract Lcom/xiaopeng/carcontrol/carmanager/controller/ISfsController$Callback;
.super Ljava/lang/Object;
.source "ISfsController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/carmanager/controller/ISfsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public onSfsChannelChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channel"
        }
    .end annotation

    return-void
.end method

.method public onSfsSwChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    return-void
.end method

.method public onSfsTypeChanged([I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typesInChannel"
        }
    .end annotation

    return-void
.end method
