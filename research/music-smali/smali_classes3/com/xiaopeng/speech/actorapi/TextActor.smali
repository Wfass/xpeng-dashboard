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

    const-string v0, "TextActor"

    .line 22
    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/actor/Actor;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/xiaopeng/speech/actorapi/TextActor;->mIsOutput:Z

    .line 19
    iput-boolean v0, p0, Lcom/xiaopeng/speech/actorapi/TextActor;->mEof:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 2

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/actor/Actor;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/xiaopeng/speech/actorapi/TextActor;->mIsOutput:Z

    .line 19
    iput-boolean p1, p0, Lcom/xiaopeng/speech/actorapi/TextActor;->mEof:Z

    .line 27
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/actorapi/TextActor;->mText:Ljava/lang/String;

    .line 28
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iput-boolean v0, p0, Lcom/xiaopeng/speech/actorapi/TextActor;->mIsOutput:Z

    .line 29
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    if-eqz p2, :cond_1

    move p1, v1

    :cond_1
    iput-boolean p1, p0, Lcom/xiaopeng/speech/actorapi/TextActor;->mEof:Z

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 58
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/speech/actor/Actor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 59
    iget-object p2, p0, Lcom/xiaopeng/speech/actorapi/TextActor;->mText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-boolean p2, p0, Lcom/xiaopeng/speech/actorapi/TextActor;->mIsOutput:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 61
    iget-boolean p2, p0, Lcom/xiaopeng/speech/actorapi/TextActor;->mEof:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
