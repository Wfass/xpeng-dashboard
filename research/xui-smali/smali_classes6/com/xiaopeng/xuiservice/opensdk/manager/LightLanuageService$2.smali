.class Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService$2;
.super Ljava/lang/Object;
.source "LightLanuageService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;

    .line 93
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService$2;->this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 96
    const-string v0, "LightLanuageService"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService$2;->this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;

    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->access$200()Lcom/xiaopeng/xuimanager/XUIManager;

    move-result-object v1

    const-string v2, "lightlanuage"

    .line 99
    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuimanager/XUIManager;->getXUIServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    .line 98
    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->access$102(Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;)Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService$2;->this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->access$102(Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;)Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    .line 108
    return-void
.end method
