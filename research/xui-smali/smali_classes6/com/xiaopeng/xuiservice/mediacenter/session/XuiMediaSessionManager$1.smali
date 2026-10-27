.class Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$1;
.super Ljava/lang/Object;
.source "XuiMediaSessionManager.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager$DeviceStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;

    .line 226
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectStatusChanged(Z)V
    .locals 3
    .param p1, "connected"    # Z

    .line 229
    const-string v0, "MCService-XuiMediaSessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectStatusChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->access$000(Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->access$002(Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;Z)Z

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->access$100(Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;Z)V

    .line 234
    :cond_0
    return-void
.end method
