.class final Lcom/alibaba/mtl/appmonitor/AppMonitor$6;
.super Ljava/lang/Object;
.source "AppMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mtl/appmonitor/AppMonitor;->l(Ljava/lang/String;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic m:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1390
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$6;->m:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1394
    :try_start_0
    sget-object v0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->ab:Lcom/alibaba/mtl/appmonitor/b;

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$6;->m:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/mtl/appmonitor/b;->setChannel(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1396
    goto :goto_0

    .line 1395
    :catch_0
    move-exception v0

    .line 1397
    :goto_0
    return-void
.end method
