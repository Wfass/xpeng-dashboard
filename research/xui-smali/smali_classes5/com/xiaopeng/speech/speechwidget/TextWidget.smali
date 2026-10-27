.class public Lcom/xiaopeng/speech/speechwidget/TextWidget;
.super Lcom/xiaopeng/speech/speechwidget/SpeechWidget;
.source "TextWidget.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    const-string v0, "text"

    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;-><init>(Ljava/lang/String;)V

    .line 10
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 17
    const-string v0, "text"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/speechwidget/TextWidget;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/TextWidget;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 13
    const-string v0, "text"

    invoke-super {p0, v0, p1}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->addContent(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/speechwidget/TextWidget;

    return-object v0
.end method
