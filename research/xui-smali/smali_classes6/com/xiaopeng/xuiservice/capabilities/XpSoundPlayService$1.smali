.class Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$1;
.super Landroid/content/BroadcastReceiver;
.source "XpSoundPlayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;

    .line 191
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$1;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 194
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    const-string v1, "android.media.vol_change.PACKAGE_NAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "name":Ljava/lang/String;
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 200
    .local v2, "type":I
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$1;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;

    invoke-static {v3, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->access$000(Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$1;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;

    invoke-static {v3, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->access$100(Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 201
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$1;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$1;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->access$300(Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->access$202(Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;I)I

    .line 203
    const-string v3, "XpSoundPlayService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onVolumeChange, mStreamVolume="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$1;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->access$200(Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "type":I
    :cond_0
    return-void
.end method
