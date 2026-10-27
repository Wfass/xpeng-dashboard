.class public Lcom/xiaopeng/speech/actorapi/TextActor;
.super Lcom/xiaopeng/speech/actor/Actor;
.source "TextActor.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "TextActor"


# instance fields
.field private mEof:Z

.field private mIsOutput:Z

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    const-string v0, "TextActor"

    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/actor/Actor;-><init>(Ljava/lang/String;)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/actorapi/TextActor;->mIsOutput:Z

    .line 19
    iput-boolean v0, p0, Lcom/xiaopeng/speech/actorapi/TextActor;->mEof:Z

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Landroid/os/Parcel;

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/actor/Actor;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/actorapi/TextActor;->mIsOutput:Z

    .line 19
    iput-boolean v0, p0, Lcom/xiaopeng/speech/actorapi/TextActor;->mEof:Z

    .line 27
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/speech/actorapi/TextActor;->mText:Ljava/lang/String;

    .line 28
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/xiaopeng/speech/actorapi/TextActor;->mIsOutput:Z

    .line 29
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    nop

    :cond_1
    iput-boolean v0, p0, Lcom/xiaopeng/speech/actorapi/TextActor;->mEof:Z

    .line 30
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/speech/actorapi/TextActor;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public isEof()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/xiaopeng/speech/actorapi/TextActor;->mEof:Z

    return v0
.end method

.method public isOutput()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/xiaopeng/speech/actorapi/TextActor;->mIsOutput:Z

    return v0
.end method

.method public setEof(Z)V
    .locals 0
    .param p1, "eof"    # Z

    .line 53
    iput-boolean p1, p0, Lcom/xiaopeng/speech/actorapi/TextActor;->mEof:Z

    .line 54
    return-void
.end method

.method public setIsOutput(Z)V
    .locals 0
    .param p1, "isOutput"    # Z

    .line 45
    iput-boolean p1, p0, Lcom/xiaopeng/speech/actorapi/TextActor;->mIsOutput:Z

    .line 46
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/speech/actorapi/TextActor;->mText:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 58
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/speech/actor/Actor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/speech/actorapi/TextActor;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-boolean v0, p0, Lcom/xiaopeng/speech/actorapi/TextActor;->mIsOutput:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 61
    iget-boolean v0, p0, Lcom/xiaopeng/speech/actorapi/TextActor;->mEof:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 62
    return-void
.end method
