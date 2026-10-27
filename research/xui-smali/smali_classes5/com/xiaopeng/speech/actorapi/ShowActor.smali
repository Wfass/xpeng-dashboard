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

    .line 20
    const-string v0, "ShowActor"

    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/actor/Actor;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Landroid/os/Parcel;

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/actor/Actor;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    .line 25
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/actorapi/ShowActor;->mWidgetData:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getWidget()Lcom/xiaopeng/speech/speechwidget/SpeechWidget;
    .locals 2

    .line 45
    new-instance v0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    invoke-direct {v0}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;-><init>()V

    .line 46
    .local v0, "speechWidget":Lcom/xiaopeng/speech/speechwidget/SpeechWidget;
    iget-object v1, p0, Lcom/xiaopeng/speech/actorapi/ShowActor;->mWidgetData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    .line 47
    return-object v0
.end method

.method public getWidgetData()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/speech/actorapi/ShowActor;->mWidgetData:Ljava/lang/String;

    return-object v0
.end method

.method public setWidget(Lcom/xiaopeng/speech/speechwidget/SpeechWidget;)Lcom/xiaopeng/speech/actorapi/ShowActor;
    .locals 1
    .param p1, "speechWidget"    # Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    .line 35
    invoke-virtual {p1}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/actorapi/ShowActor;->mWidgetData:Ljava/lang/String;

    .line 36
    return-object p0
.end method

.method public setWidgetData(Ljava/lang/String;)Lcom/xiaopeng/speech/actorapi/ShowActor;
    .locals 0
    .param p1, "widgetData"    # Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/speech/actorapi/ShowActor;->mWidgetData:Ljava/lang/String;

    .line 41
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 30
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/speech/actor/Actor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/speech/actorapi/ShowActor;->mWidgetData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    return-void
.end method
