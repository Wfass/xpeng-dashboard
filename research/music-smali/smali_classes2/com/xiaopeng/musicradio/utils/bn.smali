.class public Lcom/xiaopeng/musicradio/utils/bn;
.super Ljava/lang/Object;
.source "SpeechTriggerUtil.java"


# direct methods
.method public static a()V
    .locals 2

    const-string v0, "SpeechTriggerUtil"

    const-string v1, "triggerPause: ========"

    .line 51
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v0, Lcom/xiaopeng/musicradio/utils/bn$2;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/utils/bn$2;-><init>()V

    invoke-static {v0}, Lbql;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(I)V
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerPlay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechTriggerUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    new-instance v0, Lcom/xiaopeng/musicradio/utils/bn$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/utils/bn$1;-><init>(I)V

    invoke-static {v0}, Lbql;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 23
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result p0

    const/16 v0, 0x3d

    if-ne p0, v0, :cond_0

    const/4 p0, 0x6

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/bn;->a(I)V

    :cond_1
    return-void
.end method
