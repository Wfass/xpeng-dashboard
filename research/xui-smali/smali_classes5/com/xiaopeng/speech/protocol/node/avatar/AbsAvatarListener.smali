.class public abstract Lcom/xiaopeng/speech/protocol/node/avatar/AbsAvatarListener;
.super Ljava/lang/Object;
.source "AbsAvatarListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvatarExpression(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 35
    return-void
.end method

.method public onAvatarWakerupDisable(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 74
    return-void
.end method

.method public onAvatarWakerupEnable(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 68
    return-void
.end method

.method public onListening(Lcom/xiaopeng/speech/jarvisproto/DMListening;)V
    .locals 0
    .param p1, "dmListening"    # Lcom/xiaopeng/speech/jarvisproto/DMListening;

    .line 17
    return-void
.end method

.method public onSilence(Lcom/xiaopeng/speech/jarvisproto/DMRecognized;)V
    .locals 0
    .param p1, "dmRecognized"    # Lcom/xiaopeng/speech/jarvisproto/DMRecognized;

    .line 13
    return-void
.end method

.method public onSpeaking()V
    .locals 0

    .line 21
    return-void
.end method

.method public onStandby()V
    .locals 0

    .line 25
    return-void
.end method

.method public onUnderstanding()V
    .locals 0

    .line 29
    return-void
.end method

.method public onWidgetCard(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 59
    return-void
.end method

.method public onWidgetCustom(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 40
    return-void
.end method

.method public onWidgetList(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 50
    return-void
.end method

.method public onWidgetMedia(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 55
    return-void
.end method

.method public onWidgetSearch(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 63
    return-void
.end method

.method public onWidgetText(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 45
    return-void
.end method
