.class public Lcom/xiaopeng/devtools/utils/c;
.super Ljava/lang/Object;
.source "BroadcastUtil.java"


# direct methods
.method public static ad(Landroid/content/Context;)V
    .locals 2

    .line 23
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.action.CHANGE_LOG_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 24
    const-string v1, "com.telenav.app.arp"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 26
    return-void
.end method

.method public static ae(Landroid/content/Context;)V
    .locals 2

    .line 29
    const-string v0, "BroadcastUtil"

    const-string v1, "start audio data dump"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Landroid/content/Intent;

    const-string v1, "xiaopeng.intent.action.enable.carspeech.audiodata.dump"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    const-string v1, "com.xiaopeng.carspeechservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    const-string v1, "com.xiaopeng.permission.carspeech.dumpaudio"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static af(Landroid/content/Context;)V
    .locals 2

    .line 36
    const-string v0, "BroadcastUtil"

    const-string v1, "stop audio data dump"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-string v1, "xiaopeng.intent.action.disable.carspeech.audiodata.dump"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    const-string v1, "com.xiaopeng.carspeechservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string v1, "com.xiaopeng.permission.carspeech.dumpaudio"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 40
    return-void
.end method
