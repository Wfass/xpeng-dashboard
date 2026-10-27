.class Lcom/android/car/CarAudioService$1;
.super Landroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;
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

    .line 132
    iput-object p1, p0, Lcom/android/car/CarAudioService$1;->this$0:Lcom/android/car/CarAudioService;

    invoke-direct {p0}, Landroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onVolumeAdjustment(I)V
    .locals 8
    .param p1, "adjustment"    # I

    .line 135
    iget-object v0, p0, Lcom/android/car/CarAudioService$1;->this$0:Lcom/android/car/CarAudioService;

    invoke-static {v0}, Lcom/android/car/CarAudioService;->access$000(Lcom/android/car/CarAudioService;)I

    move-result v0

    .line 136
    .local v0, "usage":I
    const-string v1, "CAR.AUDIO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVolumeAdjustment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-static {p1}, Landroid/media/AudioManager;->adjustToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " suggested usage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-static {v0}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v1, p0, Lcom/android/car/CarAudioService$1;->this$0:Lcom/android/car/CarAudioService;

    invoke-virtual {v1, v0}, Lcom/android/car/CarAudioService;->getVolumeGroupIdForUsage(I)I

    move-result v1

    .line 140
    .local v1, "groupId":I
    iget-object v2, p0, Lcom/android/car/CarAudioService$1;->this$0:Lcom/android/car/CarAudioService;

    invoke-virtual {v2, v1}, Lcom/android/car/CarAudioService;->getGroupVolume(I)I

    move-result v2

    .line 141
    .local v2, "currentVolume":I
    const/16 v3, 0x1001

    .line 142
    .local v3, "flags":I
    const/16 v4, -0x64

    const/4 v5, 0x1

    const/16 v6, 0x1001

    if-eq p1, v4, :cond_2

    const/4 v4, -0x1

    if-eq p1, v4, :cond_1

    if-eq p1, v5, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 162
    :pswitch_0
    iget-object v4, p0, Lcom/android/car/CarAudioService$1;->this$0:Lcom/android/car/CarAudioService;

    invoke-static {v4}, Lcom/android/car/CarAudioService;->access$100(Lcom/android/car/CarAudioService;)Landroid/media/AudioManager;

    move-result-object v4

    iget-object v7, p0, Lcom/android/car/CarAudioService$1;->this$0:Lcom/android/car/CarAudioService;

    invoke-static {v7}, Lcom/android/car/CarAudioService;->access$100(Lcom/android/car/CarAudioService;)Landroid/media/AudioManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/AudioManager;->isMasterMute()Z

    move-result v7

    xor-int/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Landroid/media/AudioManager;->setMasterMute(ZI)V

    .line 163
    iget-object v4, p0, Lcom/android/car/CarAudioService$1;->this$0:Lcom/android/car/CarAudioService;

    invoke-static {v4, v6}, Lcom/android/car/CarAudioService;->access$200(Lcom/android/car/CarAudioService;I)V

    .line 164
    goto :goto_0

    .line 158
    :pswitch_1
    iget-object v4, p0, Lcom/android/car/CarAudioService$1;->this$0:Lcom/android/car/CarAudioService;

    invoke-static {v4}, Lcom/android/car/CarAudioService;->access$100(Lcom/android/car/CarAudioService;)Landroid/media/AudioManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/media/AudioManager;->setMasterMute(ZI)V

    .line 159
    iget-object v4, p0, Lcom/android/car/CarAudioService$1;->this$0:Lcom/android/car/CarAudioService;

    invoke-static {v4, v6}, Lcom/android/car/CarAudioService;->access$200(Lcom/android/car/CarAudioService;I)V

    .line 160
    goto :goto_0

    .line 149
    :cond_0
    iget-object v4, p0, Lcom/android/car/CarAudioService$1;->this$0:Lcom/android/car/CarAudioService;

    invoke-virtual {v4, v1}, Lcom/android/car/CarAudioService;->getGroupMaxVolume(I)I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 150
    iget-object v4, p0, Lcom/android/car/CarAudioService$1;->this$0:Lcom/android/car/CarAudioService;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v1, v5, v6}, Lcom/android/car/CarAudioService;->setGroupVolume(III)V

    goto :goto_0

    .line 144
    :cond_1
    iget-object v4, p0, Lcom/android/car/CarAudioService$1;->this$0:Lcom/android/car/CarAudioService;

    invoke-virtual {v4, v1}, Lcom/android/car/CarAudioService;->getGroupMinVolume(I)I

    move-result v4

    if-le v2, v4, :cond_3

    .line 145
    iget-object v4, p0, Lcom/android/car/CarAudioService$1;->this$0:Lcom/android/car/CarAudioService;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v1, v5, v6}, Lcom/android/car/CarAudioService;->setGroupVolume(III)V

    goto :goto_0

    .line 154
    :cond_2
    iget-object v4, p0, Lcom/android/car/CarAudioService$1;->this$0:Lcom/android/car/CarAudioService;

    invoke-static {v4}, Lcom/android/car/CarAudioService;->access$100(Lcom/android/car/CarAudioService;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Landroid/media/AudioManager;->setMasterMute(ZI)V

    .line 155
    iget-object v4, p0, Lcom/android/car/CarAudioService$1;->this$0:Lcom/android/car/CarAudioService;

    invoke-static {v4, v6}, Lcom/android/car/CarAudioService;->access$200(Lcom/android/car/CarAudioService;I)V

    .line 156
    nop

    .line 169
    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
