.class public interface abstract Lcom/xiaopeng/carcontrol/carmanager/controller/IDiagnosticController$Callback;
.super Ljava/lang/Object;
.source "IDiagnosticController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/carmanager/controller/IDiagnosticController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public onAbsFaultChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFault"
        }
    .end annotation

    return-void
.end method

.method public abstract onIbtFaultChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFault"
        }
    .end annotation
.end method
