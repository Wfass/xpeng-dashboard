.class public Lcom/xiaopeng/speech/actorapi/ResultActor;
.super Lcom/xiaopeng/speech/actor/Actor;
.source "ResultActor.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "ResultActor"


# instance fields
.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ResultActor"

    .line 22
    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/actor/Actor;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    .line 18
    iput-object v0, p0, Lcom/xiaopeng/speech/actorapi/ResultActor;->b:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/speech/actorapi/ResultActor;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/actor/Actor;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    const-string p1, ""

    .line 18
    iput-object p1, p0, Lcom/xiaopeng/speech/actorapi/ResultActor;->b:Ljava/lang/String;

    .line 28
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/speech/actorapi/ResultActor;->b:Ljava/lang/String;

    .line 29
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/speech/actorapi/ResultActor;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lbxh;)Lcom/xiaopeng/speech/actorapi/ResultActor;
    .locals 0

    .line 44
    invoke-virtual {p1}, Lbxh;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/actorapi/ResultActor;->a(Ljava/lang/String;)Lcom/xiaopeng/speech/actorapi/ResultActor;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/xiaopeng/speech/actorapi/ResultActor;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/speech/actorapi/ResultActor;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/speech/actorapi/ResultActor;->b:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 34
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/speech/actor/Actor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 35
    invoke-virtual {p0}, Lcom/xiaopeng/speech/actorapi/ResultActor;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object p2, p0, Lcom/xiaopeng/speech/actorapi/ResultActor;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
