.class Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager$2;
.super Ljava/lang/Object;
.source "ATLv2Manager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;

    .line 125
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager$2;->this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 128
    const-string v0, "ATLv2Manager"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager$2;->this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;

    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;->access$100()Lcom/xiaopeng/xuimanager/XUIManager;

    move-result-object v1

    const-string v2, "ambient"

    .line 131
    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuimanager/XUIManager;->getXUIServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    .line 130
    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;->access$002(Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;Lcom/xiaopeng/xuimanager/ambient/AmbientManager;)Lcom/xiaopeng/xuimanager/ambient/AmbientManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 135
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager$2;->this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;->access$002(Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;Lcom/xiaopeng/xuimanager/ambient/AmbientManager;)Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    .line 140
    return-void
.end method
