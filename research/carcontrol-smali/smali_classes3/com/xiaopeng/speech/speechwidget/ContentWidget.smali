.class public Lcom/xiaopeng/speech/speechwidget/ContentWidget;
.super Lcom/xiaopeng/speech/speechwidget/SpeechWidget;
.source "ContentWidget.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "content"

    .line 8
    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;
    .locals 0

    .line 36
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    return-object p1
.end method

.method public bridge synthetic addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    move-result-object p1

    return-object p1
.end method

.method public getLinkUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "linkUrl"

    .line 28
    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setImageUrl(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;
    .locals 1

    const-string v0, "imageUrl"

    .line 24
    invoke-super {p0, v0, p1}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->addContent(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    return-object p1
.end method

.method public setLabel(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;
    .locals 1

    const-string v0, "label"

    .line 20
    invoke-super {p0, v0, p1}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->addContent(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    return-object p1
.end method

.method public setLinkUrl(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;
    .locals 1

    const-string v0, "linkUrl"

    .line 32
    invoke-super {p0, v0, p1}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->addContent(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    return-object p1
.end method

.method public setOnClickEvent(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;
    .locals 1

    const-string v0, "extraEvent"

    .line 40
    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    move-result-object p1

    return-object p1
.end method

.method public setSubTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;
    .locals 1

    const-string v0, "subTitle"

    .line 16
    invoke-super {p0, v0, p1}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->addContent(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    return-object p1
.end method

.method public setTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;
    .locals 1

    const-string v0, "title"

    .line 12
    invoke-super {p0, v0, p1}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->addContent(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    return-object p1
.end method
