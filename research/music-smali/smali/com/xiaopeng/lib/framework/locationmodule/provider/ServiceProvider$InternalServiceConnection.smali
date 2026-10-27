.class final Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider$InternalServiceConnection;
.super Ljava/lang/Object;
.source "ServiceProvider.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InternalServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider$InternalServiceConnection;->this$0:Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider$1;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider$InternalServiceConnection;-><init>(Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 77
    instance-of p1, p2, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$LocationServiceImpl;

    if-nez p1, :cond_0

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid binder, processNum is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ServiceProvider"

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider$InternalServiceConnection;->this$0:Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;

    check-cast p2, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$LocationServiceImpl;

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;->access$302(Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$LocationServiceImpl;)Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$LocationServiceImpl;

    .line 83
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider$InternalServiceConnection;->this$0:Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;->access$402(Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;Z)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 88
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider$InternalServiceConnection;->this$0:Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;->access$302(Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$LocationServiceImpl;)Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$LocationServiceImpl;

    .line 89
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider$InternalServiceConnection;->this$0:Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;->access$402(Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;Z)Z

    return-void
.end method
