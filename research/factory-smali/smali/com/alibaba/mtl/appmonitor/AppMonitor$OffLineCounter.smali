.class public Lcom/alibaba/mtl/appmonitor/AppMonitor$OffLineCounter;
.super Ljava/lang/Object;
.source "AppMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/appmonitor/AppMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OffLineCounter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSampled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 775
    sget-object v0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/IMonitor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 776
    return v1

    .line 778
    :cond_0
    nop

    .line 780
    :try_start_0
    sget-object v0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/IMonitor;

    invoke-interface {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/IMonitor;->offlinecounter_checkSampled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 783
    goto :goto_0

    .line 781
    :catch_0
    move-exception v0

    .line 782
    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->b(Ljava/lang/Exception;)V

    .line 784
    move v0, v1

    :goto_0
    return v0
.end method

.method public static commit(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "value"    # D

    .line 797
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 798
    return-void

    .line 800
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/AppMonitor$OffLineCounter$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/AppMonitor$OffLineCounter$3;-><init>(Ljava/lang/String;Ljava/lang/String;D)V

    .line 810
    sget-object v1, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/AppMonitor$c;

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$c;->a(Ljava/lang/Runnable;)V

    .line 811
    return-void
.end method

.method public static setSampling(I)V
    .locals 2
    .param p0, "sampling"    # I

    .line 750
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 751
    return-void

    .line 753
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/AppMonitor$OffLineCounter$2;

    invoke-direct {v0, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$OffLineCounter$2;-><init>(I)V

    .line 763
    sget-object v1, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/AppMonitor$c;

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$c;->a(Ljava/lang/Runnable;)V

    .line 764
    return-void
.end method

.method public static setStatisticsInterval(I)V
    .locals 2
    .param p0, "statisticsInterval"    # I

    .line 729
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 730
    return-void

    .line 732
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/AppMonitor$OffLineCounter$1;

    invoke-direct {v0, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$OffLineCounter$1;-><init>(I)V

    .line 742
    sget-object v1, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/AppMonitor$c;

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$c;->a(Ljava/lang/Runnable;)V

    .line 743
    return-void
.end method
