.class public Lcom/xiaopeng/speech/speechwidget/ContentWidget;
.super Lcom/xiaopeng/speech/speechwidget/SpeechWidget;
.source "ContentWidget.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    const-string v0, "content"

    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;-><init>(Ljava/lang/String;)V

    .line 9
    return-void
.end method


# virtual methods
.method public addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;
    .locals 1
    .param p1, "val"    # Ljava/lang/String;
    .param p2, "var2"    # Ljava/lang/String;

    .line 36
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    return-object v0
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

    .line 28
    const-string v0, "linkUrl"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setImageUrl(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;
    .locals 1
    .param p1, "val"    # Ljava/lang/String;

    .line 24
    const-string v0, "imageUrl"

    invoke-super {p0, v0, p1}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->addContent(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    return-object v0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;
    .locals 1
    .param p1, "val"    # Ljava/lang/String;

    .line 20
    const-string v0, "label"

    invoke-super {p0, v0, p1}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->addContent(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    return-object v0
.end method

.method public setLinkUrl(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;
    .locals 1
    .param p1, "val"    # Ljava/lang/String;

    .line 32
    const-string v0, "linkUrl"

    invoke-super {p0, v0, p1}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->addContent(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    return-object v0
.end method

.method public setOnClickEvent(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;
    .locals 1
    .param p1, "event"    # Ljava/lang/String;

    .line 40
    const-string v0, "extraEvent"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    move-result-object v0

    return-object v0
.end method

.method public setSubTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;
    .locals 1
    .param p1, "val"    # Ljava/lang/String;

    .line 16
    const-string v0, "subTitle"

    invoke-super {p0, v0, p1}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->addContent(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    return-object v0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;
    .locals 1
    .param p1, "val"    # Ljava/lang/String;

    .line 12
    const-string v0, "title"

    invoke-super {p0, v0, p1}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->addContent(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    return-object v0
.end method
