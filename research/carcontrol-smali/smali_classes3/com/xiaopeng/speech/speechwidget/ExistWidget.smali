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

    const-string v0, "custom"

    .line 15
    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public setExist(Z)Lcom/xiaopeng/speech/speechwidget/ExistWidget;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "success"

    goto :goto_0

    :cond_0
    const-string v0, "fail"

    :goto_0
    const-string v1, "text"

    .line 19
    invoke-super {p0, v1, v0}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->addContent(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    if-eqz p1, :cond_1

    const-string p1, "1"

    goto :goto_1

    :cond_1
    const-string p1, "0"

    :goto_1
    const-string v0, "status"

    .line 20
    invoke-super {p0, v0, p1}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->addContent(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/speech/speechwidget/ExistWidget;

    return-object p1
.end method
