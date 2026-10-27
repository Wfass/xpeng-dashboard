.class public interface abstract Lcom/xiaopeng/unity/carcontrol/XKeyControlListener;
.super Ljava/lang/Object;
.source "XKeyControlListener.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/base/INapaListener;


# virtual methods
.method public onWheelKeyProtectSwChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    return-void
.end method

.method public abstract onXKeyChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method
