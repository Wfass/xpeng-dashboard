.class Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$17;
.super Landroid/content/BroadcastReceiver;
.source "SmartVolumeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    .line 845
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$17;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 848
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 849
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.vol_change.PACKAGE_NAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 850
    .local v1, "vol_change_package":Ljava/lang/String;
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 851
    .local v2, "vol_change_stream_type":I
    const-string v3, "SmartVolumeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  Volume_Change_PackageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  Vol_Change_Stream_Type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    const-string v3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 854
    const-string v3, "com.xiaopeng.xuiservice"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.xiaopeng.carcontrol"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "xpaudio_btcall"

    .line 855
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 856
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$17;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$17;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->access$800(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    invoke-static {v4, v3}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->access$1902(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;I)I

    .line 857
    const-string v3, "SmartVolumeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mOriginalLevel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$17;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->access$1900(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    :cond_0
    const-string v3, "com.xiaopeng.xuiservice"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.xiaopeng.carcontrol"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    .line 860
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$17;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$17;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->access$800(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    invoke-static {v4, v3}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->access$2002(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;I)I

    .line 861
    const-string v3, "SmartVolumeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mOriginalNavLevel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$17;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->access$2000(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    :cond_1
    return-void
.end method
