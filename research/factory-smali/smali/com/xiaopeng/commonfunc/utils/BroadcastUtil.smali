.class public Lcom/xiaopeng/commonfunc/utils/BroadcastUtil;
.super Ljava/lang/Object;
.source "BroadcastUtil.java"


# static fields
.field public static final ACTION_CHANGE_LOG_DIR_PERMISSION:Ljava/lang/String; = "com.xiaopeng.action.CHANGE_LOG_PERMISSION"

.field private static final ACTION_DISABLE_CARSPEECH_AUDIODATA_DUMP:Ljava/lang/String; = "xiaopeng.intent.action.disable.carspeech.audiodata.dump"

.field private static final ACTION_ENABLE_CARSPEECH_AUDIODATA_DUMP:Ljava/lang/String; = "xiaopeng.intent.action.enable.carspeech.audiodata.dump"

.field private static final PERMISSION_AUDIODATA_DUMP:Ljava/lang/String; = "com.xiaopeng.permission.carspeech.dumpaudio"

.field private static final TAG:Ljava/lang/String; = "BroadcastUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestChangeNaviLogPermission(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 23
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.action.CHANGE_LOG_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 24
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.telenav.app.arp"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 26
    return-void
.end method

.method public static startAudioDataDump(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 29
    const-string v0, "BroadcastUtil"

    const-string v1, "start audio data dump"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Landroid/content/Intent;

    const-string v1, "xiaopeng.intent.action.enable.carspeech.audiodata.dump"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.xiaopeng.carspeechservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    const-string v1, "com.xiaopeng.permission.carspeech.dumpaudio"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static stopAudioDataDump(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 36
    const-string v0, "BroadcastUtil"

    const-string v1, "stop audio data dump"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-string v1, "xiaopeng.intent.action.disable.carspeech.audiodata.dump"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.xiaopeng.carspeechservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string v1, "com.xiaopeng.permission.carspeech.dumpaudio"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 40
    return-void
.end method
