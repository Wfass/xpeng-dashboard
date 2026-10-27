.class public interface abstract Lcom/xiaopeng/carcontrol/viewmodel/service/ISelfCheckViewModel;
.super Ljava/lang/Object;
.source "ISelfCheckViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;


# virtual methods
.method public abstract getAllFaultList()V
.end method

.method public abstract getFaultDetail(ILjava/lang/String;Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "code",
            "callback"
        }
    .end annotation
.end method

.method public abstract getMobilePhone(Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract handleAllFaultData(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation
.end method

.method public abstract handleFaultDetailData(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation
.end method

.method public abstract handleSelfCheckProgressChanged(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation
.end method

.method public abstract isAutoSelfCheck()Z
.end method

.method public abstract reserveRemoteDiagnose(Ljava/lang/String;Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "phone",
            "callback"
        }
    .end annotation
.end method

.method public abstract setAutoSelfCheck(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "auto"
        }
    .end annotation
.end method

.method public abstract setAutoSelfCheck(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "auto",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setCarCheckState(ILcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "callback"
        }
    .end annotation
.end method

.method public abstract startSelfCheck()V
.end method

.method public abstract stopSelfCheck()V
.end method
