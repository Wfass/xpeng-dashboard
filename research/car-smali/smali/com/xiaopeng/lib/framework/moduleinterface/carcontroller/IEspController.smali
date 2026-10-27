.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IEspController;
.super Ljava/lang/Object;
.source "IEspController.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ILifeCycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IEspController$EspHbbFaultStatusEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IEspController$EspEbdFaultStatusEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IEspController$EpsWarningLampOnEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IEspController$EpbWarningLampOnEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IEspController$AVHFaultEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IEspController$ESPFaultEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IEspController$HDCFaultEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IEspController$AVHEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IEspController$ESPEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IEspController$HDCEventMsg;
    }
.end annotation


# virtual methods
.method public abstract getAVH()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getAvhFault()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getESP()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getEspEbdFaultStatus()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getEspFault()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getEspHbbFaultStatus()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getHDC()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getHdcFault()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract isAbsFault()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract isAvhFault()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract isEpbWarningLampOn()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract isEpsWarningLampOn()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract isEspFault()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract isHdcFault()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setAVH(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setESP(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setHDC(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
