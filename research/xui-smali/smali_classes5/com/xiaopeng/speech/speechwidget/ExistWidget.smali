.class public Lcom/xiaopeng/speech/speechwidget/ExistWidget;
.super Lcom/xiaopeng/speech/speechwidget/SpeechWidget;
.source "ExistWidget.java"


# static fields
.field public static final KEY_STATUS:Ljava/lang/String; = "status"

.field public static final STATUS_EXISTS:Ljava/lang/String; = "1"

.field public static final STATUS_NOT_FOUND:Ljava/lang/String; = "0"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    const-string v0, "custom"

    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public setExist(Z)Lcom/xiaopeng/speech/speechwidget/ExistWidget;
    .locals 2
    .param p1, "exist"    # Z

    .line 19
    const-string v0, "text"

    if-eqz p1, :cond_0

    const-string v1, "success"

    goto :goto_0

    :cond_0
    const-string v1, "fail"

    :goto_0
    invoke-super {p0, v0, v1}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->addContent(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    .line 20
    const-string v0, "status"

    if-eqz p1, :cond_1

    const-string v1, "1"

    goto :goto_1

    :cond_1
    const-string v1, "0"

    :goto_1
    invoke-super {p0, v0, v1}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->addContent(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/speechwidget/ExistWidget;

    return-object v0
.end method
