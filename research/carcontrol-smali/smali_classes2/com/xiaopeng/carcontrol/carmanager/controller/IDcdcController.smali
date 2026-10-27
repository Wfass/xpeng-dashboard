.class public interface abstract Lcom/xiaopeng/carcontrol/carmanager/controller/IDcdcController;
.super Ljava/lang/Object;
.source "IDcdcController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/carmanager/controller/IDcdcController$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController<",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/IDcdcController$Callback;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getDcdcInputCurrent()F
.end method

.method public abstract getDcdcInputVoltage()I
.end method
