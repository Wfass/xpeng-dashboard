.class final Lcom/alibaba/mtl/appmonitor/AppMonitor$7;
.super Ljava/lang/Object;
.source "AppMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mtl/appmonitor/AppMonitor;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic ah:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

.field final synthetic ai:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

.field final synthetic b:Ljava/lang/String;

.field final synthetic e:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V
    .locals 0

    .line 1403
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$7;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$7;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$7;->ah:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    iput-object p4, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$7;->ai:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    iput-boolean p5, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$7;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1407
    :try_start_0
    const-string v0, "AppMonitor"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "register stat event. module: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$7;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, " monitorPoint: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$7;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1408
    sget-object v4, Lcom/alibaba/mtl/appmonitor/AppMonitor;->ab:Lcom/alibaba/mtl/appmonitor/b;

    iget-object v5, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$7;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$7;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$7;->ah:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    iget-object v8, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$7;->ai:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    iget-boolean v9, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$7;->e:Z

    invoke-interface/range {v4 .. v9}, Lcom/alibaba/mtl/appmonitor/b;->c(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1411
    goto :goto_0

    .line 1409
    :catch_0
    move-exception v0

    .line 1410
    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->b(Ljava/lang/Exception;)V

    .line 1412
    :goto_0
    return-void
.end method
