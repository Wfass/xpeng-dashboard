.class Lcom/alibaba/mtl/appmonitor/AppMonitor$3$1;
.super Ljava/lang/Object;
.source "AppMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mtl/appmonitor/AppMonitor$3;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ag:Lcom/alibaba/mtl/appmonitor/AppMonitor$3;


# direct methods
.method constructor <init>(Lcom/alibaba/mtl/appmonitor/AppMonitor$3;)V
    .locals 0

    .line 1213
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/AppMonitor$3$1;->ag:Lcom/alibaba/mtl/appmonitor/AppMonitor$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1217
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->b()V

    .line 1218
    return-void
.end method
