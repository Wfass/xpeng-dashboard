.class Lcom/xiaopeng/factory/model/ota/OtaModel$1;
.super Ljava/lang/Object;
.source "OtaModel.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/factory/model/ota/OtaModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/factory/model/ota/OtaModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/factory/model/ota/OtaModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/factory/model/ota/OtaModel;

    .line 52
    iput-object p1, p0, Lcom/xiaopeng/factory/model/ota/OtaModel$1;->this$0:Lcom/xiaopeng/factory/model/ota/OtaModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 63
    const-string v0, "OtaModel"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/factory/model/ota/OtaModel$1;->this$0:Lcom/xiaopeng/factory/model/ota/OtaModel;

    invoke-static {p2}, Lcom/xiaopeng/ota/IOTAService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/ota/IOTAService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/factory/model/ota/OtaModel;->access$002(Lcom/xiaopeng/factory/model/ota/OtaModel;Lcom/xiaopeng/ota/IOTAService;)Lcom/xiaopeng/ota/IOTAService;

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/factory/model/ota/OtaModel$1;->this$0:Lcom/xiaopeng/factory/model/ota/OtaModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/factory/model/ota/OtaModel;->access$102(Lcom/xiaopeng/factory/model/ota/OtaModel;Z)Z

    .line 66
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 56
    const-string v0, "OtaModel"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/factory/model/ota/OtaModel$1;->this$0:Lcom/xiaopeng/factory/model/ota/OtaModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/factory/model/ota/OtaModel;->access$002(Lcom/xiaopeng/factory/model/ota/OtaModel;Lcom/xiaopeng/ota/IOTAService;)Lcom/xiaopeng/ota/IOTAService;

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/factory/model/ota/OtaModel$1;->this$0:Lcom/xiaopeng/factory/model/ota/OtaModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/factory/model/ota/OtaModel;->access$102(Lcom/xiaopeng/factory/model/ota/OtaModel;Z)Z

    .line 59
    return-void
.end method
