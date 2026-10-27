.class public Lcom/xiaopeng/musicradio/model/common/MusicReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MusicReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string p1, ""

    if-eqz p2, :cond_0

    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 40
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive-\u300b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MusicReceiver"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "com.xiaopeng.ACTION_KEEP_ALIVE"

    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/br;->c()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 44
    invoke-static {}, Lcom/xiaopeng/musicradio/model/common/a;->a()Lcom/xiaopeng/musicradio/model/common/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/model/common/a;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    const-string v1, "com.xiaopeng.broadcast.ACTION_PM_STATUS_CHANGE"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_b

    const/4 p2, 0x4

    const-string v0, "status"

    .line 49
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Receive-\u300bstatus"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_2

    .line 52
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;

    invoke-direct {p1, v4}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;-><init>(Z)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_2
    if-ne p1, v4, :cond_b

    .line 54
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;

    invoke-direct {p1, v3}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;-><init>(Z)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_3
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p1, "onReceive: bootcomplete "

    .line 58
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/musicradio/model/car/a;->a()Lcom/xiaopeng/musicradio/model/car/a;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/xiaopeng/musicradio/model/car/a;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    const-string p2, "onReceive: "

    .line 62
    invoke-static {v2, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_4
    const-string v1, "android.intent.action.MY_PACKAGE_REPLACED"

    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p1, "received ACTION_PACKAGE_REPLACED action and music replay!"

    .line 67
    invoke-static {v2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    const-string v1, "com.xiaopeng.xui.RESUME_MEDIA"

    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string p1, "onReceive: welcom ============="

    .line 69
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {}, Lcom/xiaopeng/musicradio/model/car/a;->a()Lcom/xiaopeng/musicradio/model/car/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/car/a;->c()V

    goto/16 :goto_1

    :cond_6
    const-string v1, "com.xiaopeng.xuiservice.playbackControl"

    .line 71
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v4, -0x1

    if-eqz v1, :cond_7

    .line 72
    sget-object p1, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->EXTRA_PLAYBACK_CMD:Ljava/lang/String;

    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 73
    sget-object v0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->EXTRA_PLAYBACK_PARAM:Ljava/lang/String;

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive:action media playback cmd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", param:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    new-instance v0, Lcom/xiaopeng/musicradio/model/mediacenter/command/MediaCenterCommand;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/xiaopeng/musicradio/model/mediacenter/command/MediaCenterCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/mediacenter/command/MediaCenterCommand;->onEvent()V

    goto/16 :goto_1

    :cond_7
    const-string v1, "com.xiaopeng.music_MEDIA_PLAY_LIST"

    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_b

    const-string v0, "displayId"

    .line 80
    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_8

    .line 82
    invoke-static {}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->getInstance()Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    move-result-object v1

    const-string v3, "music"

    invoke-virtual {v1, v3, v0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->setShareEvent(Ljava/lang/String;I)V

    :cond_8
    const-string v1, "type"

    .line 85
    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "command"

    .line 86
    invoke-virtual {p2, v3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "^"

    .line 89
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 90
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "\'"

    .line 91
    invoke-virtual {p1, p2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 94
    :cond_9
    invoke-static {}, Lbow;->a()Lbow;

    move-result-object p2

    invoke-virtual {p2, v1, p1}, Lbow;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_PLAY_LIST onReceive: displayId = "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " type = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " command = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_a
    const-string p1, "android.intent.action.MEDIA_MOUNTED"

    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "onReceive: ACTION_MEDIA_MOUNTED"

    .line 98
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object p1

    invoke-virtual {p1}, Lbhg;->b()Lbhi;

    move-result-object p1

    invoke-virtual {p1}, Lbhi;->j()V

    .line 100
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object p1

    invoke-virtual {p1}, Lbhg;->c()Lbhh;

    move-result-object p1

    invoke-virtual {p1}, Lbhh;->j()V

    :cond_b
    :goto_1
    return-void
.end method
