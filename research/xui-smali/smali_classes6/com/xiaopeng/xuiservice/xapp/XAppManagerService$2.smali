.class Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$2;
.super Ljava/lang/Object;
.source "XAppManagerService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager$DeviceStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->registerPassengerBtStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    .line 166
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectStatusChanged(Z)V
    .locals 2
    .param p1, "connected"    # Z

    .line 169
    const-string v0, "XAppManagerService"

    const-string v1, "onConnectStatusChanged connected"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->access$300(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)V

    .line 171
    return-void
.end method
