.class public Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter;
.super Ljava/lang/Object;
.source "AppMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/appmonitor/AppMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Counter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSampled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 649
    sget-object v0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/IMonitor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 650
    return v1

    .line 652
    :cond_0
    nop

    .line 654
    :try_start_0
    sget-object v0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/IMonitor;

    invoke-interface {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/IMonitor;->counter_checkSampled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    goto :goto_0

    .line 655
    :catch_0
    move-exception v0

    .line 656
    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->b(Ljava/lang/Exception;)V

    .line 658
    move v0, v1

    :goto_0
    return v0
.end method

.method public static commit(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "value"    # D

    .line 671
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 672
    return-void

    .line 674
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter$3;-><init>(Ljava/lang/String;Ljava/lang/String;D)V

    .line 684
    sget-object v1, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/AppMonitor$c;

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$c;->a(Ljava/lang/Runnable;)V

    .line 685
    return-void
.end method

.method public static commit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 7
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "value"    # D

    .line 699
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 700
    return-void

    .line 702
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter$4;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter$4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 712
    sget-object v1, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/AppMonitor$c;

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$c;->a(Ljava/lang/Runnable;)V

    .line 713
    return-void
.end method

.method public static setSampling(I)V
    .locals 2
    .param p0, "sampling"    # I

    .line 624
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 625
    return-void

    .line 627
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter$2;

    invoke-direct {v0, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter$2;-><init>(I)V

    .line 637
    sget-object v1, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/AppMonitor$c;

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$c;->a(Ljava/lang/Runnable;)V

    .line 638
    return-void
.end method

.method public static setStatisticsInterval(I)V
    .locals 2
    .param p0, "statisticsInterval"    # I

    .line 602
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 603
    return-void

    .line 605
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter$1;

    invoke-direct {v0, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter$1;-><init>(I)V

    .line 616
    sget-object v1, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/AppMonitor$c;

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$c;->a(Ljava/lang/Runnable;)V

    .line 617
    return-void
.end method
