.class public Lcom/xiaopeng/speech/overall/OverAllBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OverAllBroadCastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 14
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OverAllBroadCastReceiver"

    invoke-static {v0, p2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "carspeechservice.SpeechServer.Start"

    .line 16
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 17
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/overall/OverallManager;->subscribe()V

    :cond_0
    return-void
.end method
