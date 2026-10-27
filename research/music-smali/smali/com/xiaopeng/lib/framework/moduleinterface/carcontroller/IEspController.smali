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
.end method

.method public abstract getAvhFault()Z
.end method

.method public abstract getESP()Z
.end method

.method public abstract getEspEbdFaultStatus()I
.end method

.method public abstract getEspFault()Z
.end method

.method public abstract getEspHbbFaultStatus()I
.end method

.method public abstract getHDC()Z
.end method

.method public abstract getHdcFault()Z
.end method

.method public abstract isAbsFault()Z
.end method

.method public abstract isAvhFault()Z
.end method

.method public abstract isEpbWarningLampOn()Z
.end method

.method public abstract isEpsWarningLampOn()Z
.end method

.method public abstract isEspFault()Z
.end method

.method public abstract isHdcFault()Z
.end method

.method public abstract setAVH(Z)V
.end method

.method public abstract setESP(Z)V
.end method

.method public abstract setHDC(Z)V
.end method
