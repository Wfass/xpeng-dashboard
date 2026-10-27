.class Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager$SoundEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoundEventReceiver"
.end annotation


# static fields
.field private static final STREAM_INVALID:I = -0x1


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager$SoundEventReceiver;->this$0:Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager$1;

    .line 140
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager$SoundEventReceiver;-><init>(Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 155
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.vol_change.PACKAGE_NAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "pkgName":Ljava/lang/String;
    const-string v2, "SoundManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " pkgName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 160
    .local v2, "streamType":I
    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1

    .line 162
    :cond_0
    const-string v3, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 163
    .local v3, "volume":I
    const-string v5, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 164
    .local v4, "preVolume":I
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager$SoundEventReceiver;->this$0:Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;

    invoke-virtual {v5, v2, v3, v4}, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->notifyVolumeChanged(III)V

    .line 167
    .end local v2    # "streamType":I
    .end local v3    # "volume":I
    .end local v4    # "preVolume":I
    :cond_1
    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 144
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 145
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 150
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 151
    return-void
.end method
