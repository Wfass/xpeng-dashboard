.class public Lcom/xiaopeng/speech/actorapi/DataActor;
.super Lcom/xiaopeng/speech/actor/Actor;
.source "DataActor.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "DataActor"


# instance fields
.field protected mEvent:Ljava/lang/String;

.field protected mIsSupport:Z

.field protected mResultData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;

    .line 22
    const-string v0, "DataActor"

    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/actor/Actor;-><init>(Ljava/lang/String;)V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/speech/actorapi/DataActor;->mEvent:Ljava/lang/String;

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/speech/actorapi/DataActor;->mIsSupport:Z

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/speech/actorapi/DataActor;->mEvent:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Landroid/os/Parcel;

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/actor/Actor;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/speech/actorapi/DataActor;->mEvent:Ljava/lang/String;

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/speech/actorapi/DataActor;->mIsSupport:Z

    .line 28
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/speech/actorapi/DataActor;->mEvent:Ljava/lang/String;

    .line 29
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/speech/actorapi/DataActor;->mResultData:Ljava/lang/String;

    .line 30
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/xiaopeng/speech/actorapi/DataActor;->mIsSupport:Z

    .line 31
    return-void
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/speech/actorapi/DataActor;->mEvent:Ljava/lang/String;

    return-object v0
.end method

.method public getResultData()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/speech/actorapi/DataActor;->mResultData:Ljava/lang/String;

    return-object v0
.end method

.method public isSupport()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/xiaopeng/speech/actorapi/DataActor;->mIsSupport:Z

    return v0
.end method

.method public setResult(Ljava/lang/String;)Lcom/xiaopeng/speech/actorapi/DataActor;
    .locals 0
    .param p1, "resultData"    # Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/speech/actorapi/DataActor;->mResultData:Ljava/lang/String;

    .line 47
    return-object p0
.end method

.method public setSupport(Z)Lcom/xiaopeng/speech/actorapi/DataActor;
    .locals 0
    .param p1, "support"    # Z

    .line 59
    iput-boolean p1, p0, Lcom/xiaopeng/speech/actorapi/DataActor;->mIsSupport:Z

    .line 60
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataActor{mEvent=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/actorapi/DataActor;->mEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mResultData=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/actorapi/DataActor;->mResultData:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mIsSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/speech/actorapi/DataActor;->mIsSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 35
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/speech/actor/Actor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 36
    invoke-virtual {p0}, Lcom/xiaopeng/speech/actorapi/DataActor;->getEvent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/speech/actorapi/DataActor;->mResultData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget-boolean v0, p0, Lcom/xiaopeng/speech/actorapi/DataActor;->mIsSupport:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 39
    return-void
.end method
