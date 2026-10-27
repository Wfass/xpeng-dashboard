.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IDcdcController;
.super Ljava/lang/Object;
.source "IDcdcController.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ILifeCycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IDcdcController$DcdcStatusEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IDcdcController$DcdcRealInputCurrentEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IDcdcController$DcdcActTempEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IDcdcController$DcdcFailStInfoEventMsg;
    }
.end annotation


# virtual methods
.method public abstract getDcdcActTemp()I
.end method

.method public abstract getDcdcFailStInfo()I
.end method

.method public abstract getDcdcRealInputCurrent()F
.end method

.method public abstract getDcdcStatus()I
.end method
