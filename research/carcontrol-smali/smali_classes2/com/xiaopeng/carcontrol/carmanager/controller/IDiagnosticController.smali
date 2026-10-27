.class public interface abstract Lcom/xiaopeng/carcontrol/carmanager/controller/IDiagnosticController;
.super Ljava/lang/Object;
.source "IDiagnosticController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/carmanager/controller/IDiagnosticController$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController<",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/IDiagnosticController$Callback;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getManager()Landroid/car/diagnostic/XpDiagnosticManager;
.end method

.method public abstract isAbsFault()Z
.end method

.method public abstract isEpbFault()Z
.end method

.method public abstract isIbtFault()Z
.end method
