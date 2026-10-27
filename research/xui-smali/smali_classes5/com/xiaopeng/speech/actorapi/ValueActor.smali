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
    .param p1, "event"    # Ljava/lang/String;

    .line 21
    const-string v0, "ValueActor"

    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/actor/Actor;-><init>(Ljava/lang/String;)V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/speech/actorapi/ValueActor;->mEvent:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/speech/actorapi/ValueActor;->mEvent:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Landroid/os/Parcel;

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/actor/Actor;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/speech/actorapi/ValueActor;->mEvent:Ljava/lang/String;

    .line 27
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/actorapi/ValueActor;->mEvent:Ljava/lang/String;

    .line 28
    const-class v0, Lcom/xiaopeng/speech/common/bean/Value;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/common/bean/Value;

    iput-object v0, p0, Lcom/xiaopeng/speech/actorapi/ValueActor;->mValue:Lcom/xiaopeng/speech/common/bean/Value;

    .line 29
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
    .param p1, "event"    # Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/xiaopeng/speech/actorapi/ValueActor;->mEvent:Ljava/lang/String;

    .line 53
    return-object p0
.end method

.method public setValue(Ljava/lang/Object;)Lcom/xiaopeng/speech/actorapi/ValueActor;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 43
    new-instance v0, Lcom/xiaopeng/speech/common/bean/Value;

    invoke-direct {v0, p1}, Lcom/xiaopeng/speech/common/bean/Value;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/actorapi/ValueActor;->mValue:Lcom/xiaopeng/speech/common/bean/Value;

    .line 44
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 33
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/speech/actor/Actor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/speech/actorapi/ValueActor;->mEvent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/speech/actorapi/ValueActor;->mValue:Lcom/xiaopeng/speech/common/bean/Value;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 36
    return-void
.end method
