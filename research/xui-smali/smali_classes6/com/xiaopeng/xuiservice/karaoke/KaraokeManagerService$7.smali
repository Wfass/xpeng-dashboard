.class Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$7;
.super Landroid/content/BroadcastReceiver;
.source "KaraokeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    .line 323
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$7;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 326
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "action":Ljava/lang/String;
    const-string v1, "KaraokeManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7e02a835

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_2

    const v2, -0x5fdc9a67

    if-eq v1, v2, :cond_1

    const v2, 0x45b7be26

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "com.xiaopeng.intent.action.ASR_CONFIRMED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_1
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_1

    :cond_2
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v4

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 348
    :pswitch_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$1300()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$1400()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 349
    const-string v1, "com.xiaopeng.intent.extra.ASR_CONTENT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, "asr_content":Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 351
    const-string v2, "KaraokeManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_ASR_CONTENT:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-static {}, Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils;->getInstance()Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils;->handleASR(Ljava/lang/String;)V

    .end local v1    # "asr_content":Ljava/lang/String;
    goto/16 :goto_2

    .line 340
    :pswitch_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$7;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$7;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$800(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$1000(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 341
    invoke-static {}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$1100()Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$KaraokeEventHandler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v3, v2, v4, v5}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$KaraokeEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 342
    .local v1, "m2":Landroid/os/Message;
    invoke-static {}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$1100()Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$KaraokeEventHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$KaraokeEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 344
    .end local v1    # "m2":Landroid/os/Message;
    :cond_4
    const-string v1, "KaraokeManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Usb device detached, vendor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$7;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$800(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    goto :goto_2

    .line 330
    :pswitch_2
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$7;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$7;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$900(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$802(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 331
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$7;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$7;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$800(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$1000(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 332
    invoke-static {}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$1100()Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$KaraokeEventHandler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v3, v2, v4, v5}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$KaraokeEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 333
    .local v1, "m1":Landroid/os/Message;
    invoke-static {}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$1100()Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$KaraokeEventHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$KaraokeEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 334
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$7;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$1200(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)V

    .line 336
    .end local v1    # "m1":Landroid/os/Message;
    :cond_5
    const-string v1, "KaraokeManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Usb device attached, vendor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$7;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$800(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    nop

    .line 357
    :cond_6
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
