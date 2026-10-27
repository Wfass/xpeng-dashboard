.class public Lcom/xiaopeng/speech/actorapi/ResultActor;
.super Lcom/xiaopeng/speech/actor/Actor;
.source "ResultActor.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "ResultActor"


# instance fields
.field protected mEvent:Ljava/lang/String;

.field protected mResultData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;

    .line 22
    const-string v0, "ResultActor"

    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/actor/Actor;-><init>(Ljava/lang/String;)V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/speech/actorapi/ResultActor;->mEvent:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/speech/actorapi/ResultActor;->mEvent:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Landroid/os/Parcel;

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/actor/Actor;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/speech/actorapi/ResultActor;->mEvent:Ljava/lang/String;

    .line 28
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/actorapi/ResultActor;->mEvent:Ljava/lang/String;

    .line 29
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/actorapi/ResultActor;->mResultData:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/speech/actorapi/ResultActor;->mEvent:Ljava/lang/String;

    return-object v0
.end method

.method public getResultData()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/speech/actorapi/ResultActor;->mResultData:Ljava/lang/String;

    return-object v0
.end method

.method public setResult(Lcom/xiaopeng/speech/speechwidget/SpeechWidget;)Lcom/xiaopeng/speech/actorapi/ResultActor;
    .locals 1
    .param p1, "speechWidget"    # Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    .line 44
    invoke-virtual {p1}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/actorapi/ResultActor;->setResult(Ljava/lang/String;)Lcom/xiaopeng/speech/actorapi/ResultActor;

    move-result-object v0

    return-object v0
.end method

.method public setResult(Ljava/lang/String;)Lcom/xiaopeng/speech/actorapi/ResultActor;
    .locals 0
    .param p1, "resultData"    # Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/speech/actorapi/ResultActor;->mResultData:Ljava/lang/String;

    .line 49
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 34
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/speech/actor/Actor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 35
    invoke-virtual {p0}, Lcom/xiaopeng/speech/actorapi/ResultActor;->getEvent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/speech/actorapi/ResultActor;->mResultData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    return-void
.end method
