.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IXpuController;
.super Ljava/lang/Object;
.source "IXpuController.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ILifeCycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IXpuController$NedcSwitchEventMsg;
    }
.end annotation


# virtual methods
.method public abstract getNedcSwitchStatus()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setNedcSwitch(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onOff"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
