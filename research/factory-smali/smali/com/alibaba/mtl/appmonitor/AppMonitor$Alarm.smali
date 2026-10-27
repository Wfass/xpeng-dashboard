.class public Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;
.super Ljava/lang/Object;
.source "AppMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/appmonitor/AppMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Alarm"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSampled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 461
    sget-object v0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/IMonitor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 462
    return v1

    .line 464
    :cond_0
    nop

    .line 466
    :try_start_0
    sget-object v0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/IMonitor;

    invoke-interface {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/IMonitor;->alarm_checkSampled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    goto :goto_0

    .line 467
    :catch_0
    move-exception v0

    .line 468
    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->b(Ljava/lang/Exception;)V

    .line 470
    move v0, v1

    :goto_0
    return v0
.end method

.method public static commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .line 540
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 541
    return-void

    .line 543
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm$5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    sget-object v1, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/AppMonitor$c;

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$c;->a(Ljava/lang/Runnable;)V

    .line 555
    return-void
.end method

.method public static commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "errorCode"    # Ljava/lang/String;
    .param p4, "errorMsg"    # Ljava/lang/String;

    .line 572
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 573
    return-void

    .line 575
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm$6;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm$6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    sget-object v1, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/AppMonitor$c;

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$c;->a(Ljava/lang/Runnable;)V

    .line 586
    return-void
.end method

.method public static commitSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;

    .line 482
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 483
    return-void

    .line 485
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm$3;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm$3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    sget-object v1, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/AppMonitor$c;

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$c;->a(Ljava/lang/Runnable;)V

    .line 497
    return-void
.end method

.method public static commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;

    .line 510
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 511
    return-void

    .line 513
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm$4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    sget-object v1, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/AppMonitor$c;

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$c;->a(Ljava/lang/Runnable;)V

    .line 525
    return-void
.end method

.method public static setSampling(I)V
    .locals 2
    .param p0, "sampling"    # I

    .line 435
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    return-void

    .line 438
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm$2;

    invoke-direct {v0, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm$2;-><init>(I)V

    .line 449
    sget-object v1, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/AppMonitor$c;

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$c;->a(Ljava/lang/Runnable;)V

    .line 450
    return-void
.end method

.method public static setStatisticsInterval(I)V
    .locals 2
    .param p0, "statisticsInterval"    # I

    .line 413
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 414
    return-void

    .line 416
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm$1;

    invoke-direct {v0, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm$1;-><init>(I)V

    .line 427
    sget-object v1, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/AppMonitor$c;

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$c;->a(Ljava/lang/Runnable;)V

    .line 428
    return-void
.end method
