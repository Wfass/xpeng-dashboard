.class public Lcom/xiaopeng/speech/speechwidget/SupportWidget;
.super Lcom/xiaopeng/speech/speechwidget/SpeechWidget;
.source "SupportWidget.java"


# static fields
.field public static final KEY_SUPPORT:Ljava/lang/String; = "status"

.field public static final KEY_TTS:Ljava/lang/String; = "tts"

.field public static final STATUS_NOT_SUPPORT:Ljava/lang/String; = "0"

.field public static final STATUS_SUPPORT:Ljava/lang/String; = "1"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "custom"

    .line 14
    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/speechwidget/SupportWidget;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SupportWidget;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SupportWidget;
    .locals 0

    .line 19
    invoke-super {p0, p1}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/speech/speechwidget/SupportWidget;

    return-object p1
.end method

.method public getTTS()Ljava/lang/String;
    .locals 1

    const-string v0, "tts"

    .line 35
    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/speechwidget/SupportWidget;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSupport()Z
    .locals 2

    const-string v0, "status"

    .line 27
    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/speechwidget/SupportWidget;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setSupport(Z)Lcom/xiaopeng/speech/speechwidget/SupportWidget;
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v0, "status"

    .line 23
    invoke-super {p0, v0, p1}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->addContent(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/speech/speechwidget/SupportWidget;

    return-object p1
.end method

.method public setTTS(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SupportWidget;
    .locals 1

    const-string v0, "tts"

    .line 31
    invoke-super {p0, v0, p1}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->addContent(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/speech/speechwidget/SupportWidget;

    return-object p1
.end method
