.class public Lcom/xiaopeng/speech/actorapi/ValueActor;
.super Lcom/xiaopeng/speech/actor/Actor;
.source "ValueActor.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "ValueActor"


# instance fields
.field protected mEvent:Ljava/lang/String;

.field protected mValue:Lcom/xiaopeng/speech/common/bean/Value;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ValueActor"

    .line 21
    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/actor/Actor;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    .line 17
    iput-object v0, p0, Lcom/xiaopeng/speech/actorapi/ValueActor;->mEvent:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/speech/actorapi/ValueActor;->mEvent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/actor/Actor;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    const-string p1, ""

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/speech/actorapi/ValueActor;->mEvent:Ljava/lang/String;

    .line 27
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/speech/actorapi/ValueActor;->mEvent:Ljava/lang/String;

    .line 28
    const-class p1, Lcom/xiaopeng/speech/common/bean/Value;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/speech/common/bean/Value;

    iput-object p1, p0, Lcom/xiaopeng/speech/actorapi/ValueActor;->mValue:Lcom/xiaopeng/speech/common/bean/Value;

    return-void
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/speech/actorapi/ValueActor;->mEvent:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Lcom/xiaopeng/speech/common/bean/Value;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/speech/actorapi/ValueActor;->mValue:Lcom/xiaopeng/speech/common/bean/Value;

    return-object v0
.end method

.method public setEvent(Ljava/lang/String;)Lcom/xiaopeng/speech/actorapi/ValueActor;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/xiaopeng/speech/actorapi/ValueActor;->mEvent:Ljava/lang/String;

    return-object p0
.end method

.method public setValue(Ljava/lang/Object;)Lcom/xiaopeng/speech/actorapi/ValueActor;
    .locals 1

    .line 43
    new-instance v0, Lcom/xiaopeng/speech/common/bean/Value;

    invoke-direct {v0, p1}, Lcom/xiaopeng/speech/common/bean/Value;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/actorapi/ValueActor;->mValue:Lcom/xiaopeng/speech/common/bean/Value;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 33
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/speech/actor/Actor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 34
    iget-object p2, p0, Lcom/xiaopeng/speech/actorapi/ValueActor;->mEvent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-object p2, p0, Lcom/xiaopeng/speech/actorapi/ValueActor;->mValue:Lcom/xiaopeng/speech/common/bean/Value;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
