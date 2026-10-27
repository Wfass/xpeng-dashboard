.class public Lcom/xiaopeng/speech/actorapi/ShowActor;
.super Lcom/xiaopeng/speech/actor/Actor;
.source "ShowActor.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "ShowActor"


# instance fields
.field private mWidgetData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "ShowActor"

    .line 20
    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/actor/Actor;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/actor/Actor;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    .line 25
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/speech/actorapi/ShowActor;->mWidgetData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getWidget()Lcom/xiaopeng/speech/speechwidget/SpeechWidget;
    .locals 2

    .line 45
    new-instance v0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    invoke-direct {v0}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;-><init>()V

    .line 46
    iget-object v1, p0, Lcom/xiaopeng/speech/actorapi/ShowActor;->mWidgetData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    return-object v0
.end method

.method public getWidgetData()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/speech/actorapi/ShowActor;->mWidgetData:Ljava/lang/String;

    return-object v0
.end method

.method public setWidget(Lcom/xiaopeng/speech/speechwidget/SpeechWidget;)Lcom/xiaopeng/speech/actorapi/ShowActor;
    .locals 0

    .line 35
    invoke-virtual {p1}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/speech/actorapi/ShowActor;->mWidgetData:Ljava/lang/String;

    return-object p0
.end method

.method public setWidgetData(Ljava/lang/String;)Lcom/xiaopeng/speech/actorapi/ShowActor;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/speech/actorapi/ShowActor;->mWidgetData:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 30
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/speech/actor/Actor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 31
    iget-object p2, p0, Lcom/xiaopeng/speech/actorapi/ShowActor;->mWidgetData:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
