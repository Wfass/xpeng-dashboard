.class Lbbw$a;
.super Landroid/content/BroadcastReceiver;
.source "IcmReceiverModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lbbw;


# direct methods
.method private constructor <init>(Lbbw;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lbbw$a;->b:Lbbw;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    .line 208
    iput-boolean p1, p0, Lbbw$a;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lbbw;Lbbw$1;)V
    .locals 0

    .line 202
    invoke-direct {p0, p1}, Lbbw$a;-><init>(Lbbw;)V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)V
    .locals 2

    .line 211
    iget-boolean v0, p0, Lbbw$a;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 212
    iput-boolean v0, p0, Lbbw$a;->a:Z

    .line 213
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.xiaopeng.musicradio.action.MOCK_KEY_EVENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 226
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IcmReceiverModel"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "com.xiaopeng.musicradio.action.MOCK_KEY_EVENT"

    .line 228
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    const-string v1, "keycode"

    .line 229
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive kecode = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p2}, Landroid/view/KeyEvent;-><init>(II)V

    const-string v2, "audio"

    .line 232
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    const/16 v2, 0xa4

    if-ne p2, v2, :cond_1

    .line 234
    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x2

    .line 235
    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_2

    .line 237
    :cond_0
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_2

    :cond_1
    const/16 v2, 0x3e8

    if-ge p2, v2, :cond_2

    .line 240
    invoke-static {}, Lbbv;->a()Lbbv;

    move-result-object p1

    invoke-virtual {p1, v1}, Lbbv;->a(Landroid/view/KeyEvent;)V

    goto :goto_2

    :cond_2
    const/4 v1, 0x3

    .line 242
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-ne p2, v2, :cond_3

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_3
    const/16 v2, 0x3e9

    if-ne p2, v2, :cond_4

    add-int/lit8 v3, v3, -0x2

    :cond_4
    :goto_0
    if-gez v3, :cond_5

    goto :goto_1

    .line 250
    :cond_5
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p2

    if-le v3, p2, :cond_6

    .line 251
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    goto :goto_1

    :cond_6
    move v0, v3

    :goto_1
    const/16 p2, 0x10

    .line 253
    invoke-virtual {p1, v1, v0, p2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_7
    :goto_2
    return-void
.end method
