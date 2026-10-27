.class public Lcom/xiaopeng/carcontrol/IpcRouterService;
.super Ljava/lang/Object;
.source "IpcRouterService.java"

# interfaces
.implements Lcom/xiaopeng/lib/apirouter/server/IServicePublisher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/IpcRouterService$ICallback;
    }
.end annotation


# static fields
.field private static final AUTHORITY_ACCOUNT:Ljava/lang/String; = "com.xiaopeng.caraccount.IpcRouterService"

.field private static final AUTHORITY_AI:Ljava/lang/String; = "com.xiaopeng.aiassistant.IpcRouterService"

.field private static final AUTHORITY_DIAGNOSTIC:Ljava/lang/String; = "com.xiaopeng.diagnostic.DiagnoseService"

.field private static final AUTHORITY_NAVI_MRR:Ljava/lang/String; = "com.xiaopeng.napa.MillimeterWaveRadarService"

.field private static final BUNDLE:Ljava/lang/String; = "bundle"

.field private static final CODE:Ljava/lang/String; = "faultCode"

.field private static final ENABLE:Ljava/lang/String; = "enable"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final PATH:Ljava/lang/String; = "onReceiverData"

.field private static final PATH_ACCOUNT:Ljava/lang/String; = "onAction"

.field private static final PATH_ALL_FAULT:Ljava/lang/String; = "getAllFaultCode"

.field private static final PATH_CAR_CHECK:Ljava/lang/String; = "setCarCheckState"

.field private static final PATH_FAULT_DETAIL:Ljava/lang/String; = "getFaultCode"

.field private static final PATH_MOBILE_PHONE:Ljava/lang/String; = "getMobilePhone"

.field private static final PATH_NAVI_MRR:Ljava/lang/String; = "getMillimeterWaveRadarStatus"

.field private static final PATH_RESERVE_DIAGNOSE:Ljava/lang/String; = "reserveRemoteDiagnose"

.field private static final PHONE:Ljava/lang/String; = "mobilePhone"

.field private static final STRING_MSG:Ljava/lang/String; = "string_msg"

.field private static final TAG:Ljava/lang/String; = "IpcRouterService"

.field private static final TYPE:Ljava/lang/String; = "businessType"

.field private static final sNotificationCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/xiaopeng/carcontrol/IpcRouterService$ICallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private selfCheckViewModel:Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

.field private tBoxViewModel:Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/carcontrol/IpcRouterService;->sNotificationCallbacks:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/IpcRouterService;)Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/IpcRouterService;->selfCheckViewModel:Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    return-object p0
.end method

.method public static getAllFaultCode(Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    const-string v0, "IpcRouterService"

    .line 127
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "com.xiaopeng.diagnostic.DiagnoseService"

    .line 128
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "getAllFaultCode"

    .line 129
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 130
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 132
    :try_start_0
    invoke-static {v1}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 133
    invoke-interface {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;->onSuccess(Ljava/lang/String;)V

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAllFaultCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "failed"

    .line 136
    invoke-interface {p0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;->onFailed(Ljava/lang/String;)V

    .line 137
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllFaultCode failed: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public static getFaultCode(ILjava/lang/String;Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "businessType",
            "faultCode",
            "callback"
        }
    .end annotation

    const-string v0, "IpcRouterService"

    .line 142
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "com.xiaopeng.diagnostic.DiagnoseService"

    .line 143
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "getFaultCode"

    .line 144
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 145
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "businessType"

    invoke-virtual {v1, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v1, "faultCode"

    .line 146
    invoke-virtual {p0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 147
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    const/4 p1, 0x0

    .line 149
    :try_start_0
    invoke-static {p0}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 150
    invoke-interface {p2, p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;->onSuccess(Ljava/lang/String;)V

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFaultCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "failed"

    .line 153
    invoke-interface {p2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;->onFailed(Ljava/lang/String;)V

    .line 154
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFaultCode failed: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public static getMobilePhone(Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    const-string v0, "IpcRouterService"

    .line 159
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "com.xiaopeng.diagnostic.DiagnoseService"

    .line 160
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "getMobilePhone"

    .line 161
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 162
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 164
    :try_start_0
    invoke-static {v1}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 165
    invoke-interface {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;->onSuccess(Ljava/lang/String;)V

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMobilePhone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "failed"

    .line 168
    invoke-interface {p0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;->onFailed(Ljava/lang/String;)V

    .line 169
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMobilePhone failed: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public static getMrrGeoFenceStatus()Z
    .locals 7

    const-string v0, "IpcRouterService"

    .line 112
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "com.xiaopeng.napa.MillimeterWaveRadarService"

    .line 113
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "getMillimeterWaveRadarStatus"

    .line 114
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 115
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 117
    :try_start_0
    invoke-static {v1}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 118
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMrrGeoFenceStatus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    .line 120
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMrrGeoFenceStatus failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    if-eqz v1, :cond_0

    .line 123
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_0
    return v2
.end method

.method private isPsnSeatEqualMemory()Ljava/lang/String;
    .locals 1

    .line 344
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;->isPsnSeatEqualMemory()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onRestorePsnSeat()V
    .locals 1

    .line 340
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;->restorePsnSeat()V

    return-void
.end method

.method private onSelfCheckProgressChanged(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 347
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/service/ISelfCheckViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/IpcRouterService;->selfCheckViewModel:Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    .line 348
    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->handleSelfCheckProgressChanged(Ljava/lang/String;)V

    return-void
.end method

.method private onSmartAsMoveDownCmd(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    .line 328
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->onSmartAsMoveDown(Ljava/lang/String;)V

    return-void
.end method

.method private onSmartAsMoveUpCmd(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    .line 324
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->onSmartAsMoveUp(Ljava/lang/String;)V

    return-void
.end method

.method private onSmartAsSaveResult(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    .line 320
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->onSmartAsSaveResult(Ljava/lang/String;)V

    return-void
.end method

.method private onXSportResumeDriveMode(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    .line 332
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->onXSportResumeDriveMode(Ljava/lang/String;)V

    return-void
.end method

.method private onXSportSaveDriveMode(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    .line 336
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->onXSportSaveDriveMode(Ljava/lang/String;)V

    return-void
.end method

.method private parseBundle(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    .line 307
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "string_msg"

    .line 308
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 310
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public static reserveRemoteDiagnose(Ljava/lang/String;Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mobilePhone",
            "callback"
        }
    .end annotation

    const-string v0, "IpcRouterService"

    .line 174
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "com.xiaopeng.diagnostic.DiagnoseService"

    .line 175
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "reserveRemoteDiagnose"

    .line 176
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "mobilePhone"

    .line 177
    invoke-virtual {v1, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 178
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    const/4 v1, 0x0

    .line 180
    :try_start_0
    invoke-static {p0}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 181
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;->onSuccess(Ljava/lang/String;)V

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reserveRemoteDiagnose: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v2, "false"

    .line 184
    invoke-interface {p1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;->onFailed(Ljava/lang/String;)V

    .line 185
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reserveRemoteDiagnose failed: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public static sendMessageToMessageCenter(ILcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;Lcom/xiaopeng/carcontrol/IpcRouterService$ICallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "scene",
            "bean",
            "callback"
        }
    .end annotation

    .line 81
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 84
    :cond_0
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 85
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "string_msg"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendInfoFlowMsg=======bundle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IpcRouterService"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "com.xiaopeng.aiassistant.IpcRouterService"

    .line 95
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "onReceiverData"

    .line 96
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const/16 v1, 0x2719

    .line 97
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "bundle"

    .line 98
    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 101
    :try_start_0
    invoke-static {p1}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 103
    sget-object p1, Lcom/xiaopeng/carcontrol/IpcRouterService;->sNotificationCallbacks:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 106
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setCarCheckState(ILcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;)V
    .locals 4
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

    const-string v0, "IpcRouterService"

    .line 190
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "com.xiaopeng.diagnostic.DiagnoseService"

    .line 191
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "setCarCheckState"

    .line 192
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 193
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "enable"

    invoke-virtual {v1, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 194
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    const/4 v1, 0x0

    .line 196
    :try_start_0
    invoke-static {p0}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 197
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;->onSuccess(Ljava/lang/String;)V

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCarCheckState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v2, "-1"

    .line 200
    invoke-interface {p1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;->onFailed(Ljava/lang/String;)V

    .line 201
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCarCheckState failed: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method private showAllFaultView()V
    .locals 2

    .line 367
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/service/ISelfCheckViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/IpcRouterService;->selfCheckViewModel:Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    .line 368
    new-instance v0, Lcom/xiaopeng/carcontrol/IpcRouterService$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/IpcRouterService$1;-><init>(Lcom/xiaopeng/carcontrol/IpcRouterService;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/IpcRouterService;->getAllFaultCode(Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;)V

    return-void
.end method

.method private showFaultDetailView(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "businessType",
            "faultCode"
        }
    .end annotation

    .line 385
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/service/ISelfCheckViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/IpcRouterService;->selfCheckViewModel:Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    .line 386
    new-instance v0, Lcom/xiaopeng/carcontrol/IpcRouterService$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/IpcRouterService$2;-><init>(Lcom/xiaopeng/carcontrol/IpcRouterService;)V

    invoke-static {p1, p2, v0}, Lcom/xiaopeng/carcontrol/IpcRouterService;->getFaultCode(ILjava/lang/String;Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;)V

    return-void
.end method

.method private showFaultView(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .line 354
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "type"

    .line 355
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string p1, "businessType"

    .line 357
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    const-string v1, "faultCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/carcontrol/IpcRouterService;->showFaultDetailView(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 359
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/IpcRouterService;->showAllFaultView()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 362
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static startSMSVerification()V
    .locals 3

    .line 207
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "com.xiaopeng.caraccount.IpcRouterService"

    .line 208
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "onAction"

    .line 209
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "action"

    const-string v2, "action_unregister_digital_key"

    .line 210
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 213
    :try_start_0
    invoke-static {v0}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 215
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onGetData(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "bundle"
        }
    .end annotation

    .line 291
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 294
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetData=======id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", bundle:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "IpcRouterService"

    invoke-static {v0, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x3fae

    if-eq p1, p2, :cond_1

    return-object v1

    .line 297
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/IpcRouterService;->isPsnSeatEqualMemory()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onReceiverData(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "bundle"
        }
    .end annotation

    .line 221
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 224
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceiverData=======id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bundle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IpcRouterService"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x271a

    if-eq p1, v0, :cond_8

    const/16 v0, 0x271b

    if-eq p1, v0, :cond_6

    const/16 v0, 0x3f49

    if-eq p1, v0, :cond_5

    const/16 v0, 0x3f4a

    if-eq p1, v0, :cond_4

    const/16 v0, 0x3fad

    if-eq p1, v0, :cond_3

    const/16 v0, 0x4011

    if-eq p1, v0, :cond_2

    const/16 v0, 0x4075

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 264
    :pswitch_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/scu/XpilotSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/scu/XpilotSmartControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/XpilotSmartControl;->exitTelescopeRange()V

    goto/16 :goto_0

    .line 261
    :pswitch_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/scu/XpilotSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/scu/XpilotSmartControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/XpilotSmartControl;->enterTelescopeRange()V

    goto/16 :goto_0

    .line 258
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/IpcRouterService;->onSmartAsMoveDownCmd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 255
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/IpcRouterService;->onSmartAsMoveUpCmd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 252
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/IpcRouterService;->onSmartAsSaveResult(Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/IpcRouterService;->onSMSVerificationSuccess()V

    goto :goto_0

    .line 279
    :cond_2
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/IpcRouterService;->onSelfCheckProgressChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :cond_3
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/IpcRouterService;->onRestorePsnSeat()V

    goto :goto_0

    .line 272
    :cond_4
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/IpcRouterService;->onXSportSaveDriveMode(Ljava/lang/String;)V

    goto :goto_0

    .line 268
    :cond_5
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/IpcRouterService;->onXSportResumeDriveMode(Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_6
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "businessType"

    .line 231
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v0, "string_msg"

    if-eqz p2, :cond_7

    .line 232
    :try_start_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 233
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FaultResult"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {v1, p2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 234
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/IpcRouterService;->showFaultView(Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :cond_7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 237
    sget-object p2, Lcom/xiaopeng/carcontrol/IpcRouterService;->sNotificationCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/carcontrol/IpcRouterService$ICallback;

    if-eqz p1, :cond_9

    const/4 p2, 0x0

    .line 239
    invoke-interface {p1, p2}, Lcom/xiaopeng/carcontrol/IpcRouterService$ICallback;->onCallback(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 243
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 248
    :cond_8
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/helper/PushedMessageHelper;->receivedPushMessage(Ljava/lang/String;)V

    :cond_9
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3ee5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSMSVerificationSuccess()V
    .locals 2

    .line 403
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/tbox/ITboxViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/IpcRouterService;->tBoxViewModel:Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;

    .line 404
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;->setTboxDigitalKeyAllDelete()V

    return-void
.end method
