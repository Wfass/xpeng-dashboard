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

    const-string v0, "DataActor"

    .line 22
    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/actor/Actor;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    .line 17
    iput-object v0, p0, Lcom/xiaopeng/speech/actorapi/DataActor;->mEvent:Ljava/lang/String;

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/xiaopeng/speech/actorapi/DataActor;->mIsSupport:Z

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/speech/actorapi/DataActor;->mEvent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 1

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/actor/Actor;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    const-string p1, ""

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/speech/actorapi/DataActor;->mEvent:Ljava/lang/String;

    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/xiaopeng/speech/actorapi/DataActor;->mIsSupport:Z

    .line 28
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/actorapi/DataActor;->mEvent:Ljava/lang/String;

    .line 29
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/actorapi/DataActor;->mResultData:Ljava/lang/String;

    .line 30
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/xiaopeng/speech/actorapi/DataActor;->mIsSupport:Z

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

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/speech/actorapi/DataActor;->mResultData:Ljava/lang/String;

    return-object p0
.end method

.method public setSupport(Z)Lcom/xiaopeng/speech/actorapi/DataActor;
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/xiaopeng/speech/actorapi/DataActor;->mIsSupport:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataActor{mEvent=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/actorapi/DataActor;->mEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mResultData=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/speech/actorapi/DataActor;->mResultData:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/speech/actorapi/DataActor;->mIsSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 35
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/speech/actor/Actor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 36
    invoke-virtual {p0}, Lcom/xiaopeng/speech/actorapi/DataActor;->getEvent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-object p2, p0, Lcom/xiaopeng/speech/actorapi/DataActor;->mResultData:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget-boolean p2, p0, Lcom/xiaopeng/speech/actorapi/DataActor;->mIsSupport:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
