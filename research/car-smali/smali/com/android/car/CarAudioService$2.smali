.class Lcom/android/car/CarAudioService$2;
.super Landroid/content/BroadcastReceiver;
.source "CarAudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/CarAudioService;


# direct methods
.method constructor <init>(Lcom/android/car/CarAudioService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/CarAudioService;

    .line 178
    iput-object p1, p0, Lcom/android/car/CarAudioService$2;->this$0:Lcom/android/car/CarAudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 181
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x73abbf83

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v1, v2, :cond_1

    const v2, 0x45cc07b3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v4

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 192
    :pswitch_0
    iget-object v0, p0, Lcom/android/car/CarAudioService$2;->this$0:Lcom/android/car/CarAudioService;

    invoke-static {v0, v3}, Lcom/android/car/CarAudioService;->access$200(Lcom/android/car/CarAudioService;I)V

    goto :goto_2

    .line 183
    :pswitch_1
    const-string v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 184
    .local v0, "streamType":I
    iget-object v1, p0, Lcom/android/car/CarAudioService$2;->this$0:Lcom/android/car/CarAudioService;

    invoke-virtual {v1, v0}, Lcom/android/car/CarAudioService;->getVolumeGroupIdForStreamType(I)I

    move-result v1

    .line 185
    .local v1, "groupId":I
    if-ne v1, v4, :cond_3

    .line 186
    const-string v2, "CAR.AUDIO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown stream type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 188
    :cond_3
    iget-object v2, p0, Lcom/android/car/CarAudioService$2;->this$0:Lcom/android/car/CarAudioService;

    invoke-static {v2, v1, v3}, Lcom/android/car/CarAudioService;->access$300(Lcom/android/car/CarAudioService;II)V

    .line 190
    nop

    .line 195
    .end local v0    # "streamType":I
    .end local v1    # "groupId":I
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
