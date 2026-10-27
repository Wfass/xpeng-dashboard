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

    .line 60
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider$InternalServiceConnection;->this$0:Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;
    .param p2, "x1"    # Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider$1;

    .line 60
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider$InternalServiceConnection;-><init>(Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider$InternalServiceConnection;->this$0:Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;

    move-object v1, p2

    check-cast v1, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$LocationServiceImpl;

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;->access$302(Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$LocationServiceImpl;)Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$LocationServiceImpl;

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider$InternalServiceConnection;->this$0:Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;->access$402(Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;Z)Z

    .line 65
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider$InternalServiceConnection;->this$0:Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;->access$302(Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$LocationServiceImpl;)Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$LocationServiceImpl;

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider$InternalServiceConnection;->this$0:Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;->access$402(Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;Z)Z

    .line 71
    return-void
.end method
