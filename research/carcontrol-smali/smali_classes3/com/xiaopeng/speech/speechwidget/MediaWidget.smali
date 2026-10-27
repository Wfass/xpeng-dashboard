.class public Lcom/xiaopeng/speech/speechwidget/MediaWidget;
.super Lcom/xiaopeng/speech/speechwidget/ListWidget;
.source "MediaWidget.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "media"

    .line 9
    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/speechwidget/ListWidget;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/speechwidget/MediaWidget;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/MediaWidget;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/MediaWidget;
    .locals 0

    .line 14
    invoke-super {p0, p1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/speech/speechwidget/MediaWidget;

    return-object p1
.end method

.method public bridge synthetic fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/speechwidget/MediaWidget;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/MediaWidget;

    move-result-object p1

    return-object p1
.end method
