.class Lcom/xiaopeng/xuiservice/smart/SmartIcmService$1;
.super Lcom/xiaopeng/xuimanager/soundresource/ISoundResourceListener$Stub;
.source "SmartIcmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartIcmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    .line 84
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/soundresource/ISoundResourceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceEvent(II)V
    .locals 5
    .param p1, "resId"    # I
    .param p2, "event"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResourceEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_1

    .line 89
    :cond_0
    const-string v0, "persist.xiaopeng.soundtheme.path"

    const-string v1, "/system/media/audio/sndresource/theme/default"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "path":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->access$000(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;)Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->getActiveSoundEffectTheme()I

    move-result v1

    .line 91
    .local v1, "activeId":I
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    iget-object v2, v2, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send icm theme resId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->access$100(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;)Landroid/car/hardware/icm/CarIcmManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/car/hardware/icm/CarIcmManager;->setSoundThemeType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_0

    .line 94
    :catch_0
    move-exception v2

    .line 95
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    invoke-virtual {v3, v2}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->handleException(Ljava/lang/Exception;)V

    .line 98
    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "activeId":I
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method
