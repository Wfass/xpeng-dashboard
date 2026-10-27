.class Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$1;
.super Landroid/content/BroadcastReceiver;
.source "PmKaraokeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;

    .line 104
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$1;->this$0:Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 107
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "action":Ljava/lang/String;
    const-string v1, "PmKaraokeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7e02a835

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v1, v2, :cond_3

    const v2, -0x5fdc9a67

    if-eq v1, v2, :cond_2

    const v2, -0x2a421be7

    if-eq v1, v2, :cond_1

    const v2, 0x2f94f923

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v5

    goto :goto_1

    :cond_1
    const-string v1, "com.loostone.puremic.dongle_key_changed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v6

    goto :goto_1

    :cond_2
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v4

    goto :goto_1

    :cond_3
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_8

    .line 172
    :pswitch_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->access$400()Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$PmKaraokeEventHandler;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$1;->this$0:Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->access$500(Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 173
    invoke-static {}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->access$400()Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$PmKaraokeEventHandler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v5, v2, v6, v3}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$PmKaraokeEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 174
    .local v1, "m":Landroid/os/Message;
    invoke-static {}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->access$400()Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$PmKaraokeEventHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$PmKaraokeEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 174
    .end local v1    # "m":Landroid/os/Message;
    goto/16 :goto_8

    .line 158
    :pswitch_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->access$400()Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$PmKaraokeEventHandler;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$1;->this$0:Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->access$500(Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 159
    invoke-static {}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->access$600()Z

    move-result v1

    if-nez v1, :cond_5

    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$1;->this$0:Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;

    const-string/jumbo v2, "xuiservice"

    const-string v3, ""

    invoke-virtual {v1, v2, v6, v3}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->create(Ljava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    goto :goto_2

    .line 162
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 166
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_2
    invoke-static {}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->access$400()Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$PmKaraokeEventHandler;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v4, v6, v2}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$PmKaraokeEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 167
    .local v1, "m":Landroid/os/Message;
    invoke-static {}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->access$400()Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$PmKaraokeEventHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$PmKaraokeEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 168
    .end local v1    # "m":Landroid/os/Message;
    goto/16 :goto_8

    .line 144
    :pswitch_2
    invoke-static {}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->access$400()Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$PmKaraokeEventHandler;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$1;->this$0:Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->access$500(Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 145
    invoke-static {}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->access$600()Z

    move-result v1

    if-nez v1, :cond_6

    .line 147
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$1;->this$0:Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;

    const-string/jumbo v2, "xuiservice"

    const-string v3, ""

    invoke-virtual {v1, v2, v6, v3}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->create(Ljava/lang/String;ILjava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    goto :goto_3

    .line 148
    :catch_1
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PmKaraokeService"

    const-string v3, "create error"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_3
    invoke-static {}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->access$400()Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$PmKaraokeEventHandler;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v4, v6, v2}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$PmKaraokeEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 153
    .local v1, "m":Landroid/os/Message;
    invoke-static {}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->access$400()Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$PmKaraokeEventHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$PmKaraokeEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 154
    .end local v1    # "m":Landroid/os/Message;
    goto/16 :goto_8

    .line 111
    :pswitch_3
    invoke-static {}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 112
    const-string v1, "keycode_type"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "keyType":Ljava/lang/String;
    const-string v2, "keycode_action"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 114
    .local v2, "keyAction":I
    const-string v4, "persist.audio.record.path"

    const-string v7, "0"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, "recordconfig":Ljava/lang/String;
    const-string v7, "PmKaraokeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ACTION_LOOSTONE_KEY  type:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "  action:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " recordconfig:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string/jumbo v7, "voice"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 117
    invoke-static {}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->access$100()I

    move-result v7

    const/4 v8, 0x7

    if-ne v7, v3, :cond_9

    .line 118
    if-ne v2, v5, :cond_7

    goto :goto_4

    :cond_7
    move v5, v6

    :goto_4
    move v3, v5

    .line 119
    .local v3, "startMicRecord":Z
    if-eqz v3, :cond_8

    .line 121
    :try_start_2
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$1;->this$0:Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->access$200(Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;)Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;

    move-result-object v5

    invoke-interface {v5, v8}, Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;->MicDevChangeCallBack(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 124
    goto :goto_5

    .line 122
    :catch_2
    move-exception v5

    .line 123
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "PmKaraokeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MIC_VOICE_ON exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_5
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$1;->this$0:Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;

    invoke-static {v5, v3}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->access$300(Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;Z)V

    .line 127
    .end local v3    # "startMicRecord":Z
    goto :goto_7

    .line 128
    :cond_9
    if-nez v2, :cond_b

    .line 130
    :try_start_3
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$1;->this$0:Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->access$200(Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;)Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;

    move-result-object v3

    invoke-interface {v3, v8}, Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;->MicDevChangeCallBack(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 133
    goto :goto_6

    .line 131
    :catch_3
    move-exception v3

    .line 132
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "PmKaraokeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MIC_VOICE_ON exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_6
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$1;->this$0:Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;

    invoke-static {v3, v5}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->access$300(Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;Z)V

    goto :goto_7

    .line 137
    :cond_a
    const-string v3, "power"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 138
    if-nez v2, :cond_b

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$1;->this$0:Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;

    invoke-static {v3, v6}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->access$300(Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;Z)V

    .line 140
    .end local v1    # "keyType":Ljava/lang/String;
    .end local v2    # "keyAction":I
    .end local v4    # "recordconfig":Ljava/lang/String;
    :cond_b
    :goto_7
    nop

    .line 178
    :cond_c
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
