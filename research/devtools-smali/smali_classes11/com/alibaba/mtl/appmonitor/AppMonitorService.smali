.class public Lcom/alibaba/mtl/appmonitor/AppMonitorService;
.super Landroid/app/Service;
.source "AppMonitorService.java"


# instance fields
.field ab:Lcom/alibaba/mtl/appmonitor/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/AppMonitorService;->ab:Lcom/alibaba/mtl/appmonitor/b;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 13
    iget-object p1, p0, Lcom/alibaba/mtl/appmonitor/AppMonitorService;->ab:Lcom/alibaba/mtl/appmonitor/b;

    if-nez p1, :cond_0

    .line 14
    new-instance p1, Lcom/alibaba/mtl/appmonitor/c;

    invoke-virtual {p0}, Lcom/alibaba/mtl/appmonitor/AppMonitorService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/mtl/appmonitor/c;-><init>(Landroid/app/Application;)V

    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/AppMonitorService;->ab:Lcom/alibaba/mtl/appmonitor/b;

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/alibaba/mtl/appmonitor/AppMonitorService;->ab:Lcom/alibaba/mtl/appmonitor/b;

    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/AppMonitorService;->ab:Lcom/alibaba/mtl/appmonitor/b;

    if-eqz v0, :cond_0

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/AppMonitorService;->ab:Lcom/alibaba/mtl/appmonitor/b;

    invoke-interface {v0}, Lcom/alibaba/mtl/appmonitor/b;->p()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 27
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 28
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/AppMonitorService;->ab:Lcom/alibaba/mtl/appmonitor/b;

    if-eqz v0, :cond_0

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/AppMonitorService;->ab:Lcom/alibaba/mtl/appmonitor/b;

    invoke-interface {v0}, Lcom/alibaba/mtl/appmonitor/b;->p()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 37
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 38
    return-void
.end method
