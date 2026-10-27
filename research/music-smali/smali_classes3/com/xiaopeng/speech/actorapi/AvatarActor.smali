.class public Lcom/xiaopeng/speech/actorapi/AvatarActor;
.super Lcom/xiaopeng/speech/actor/Actor;
.source "AvatarActor.java"


# static fields
.field public static final KEY_STATE:Ljava/lang/String; = "state"

.field public static final NAME:Ljava/lang/String; = "AvatarActor"

.field public static final STATE_LISTENING:I = 0x2

.field public static final STATE_SILENCE:I = 0x1

.field public static final STATE_SPEAKING:I = 0x4

.field public static final STATE_STANDBY:I = 0x5

.field public static final STATE_UNDERSTANDING:I = 0x3


# instance fields
.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "AvatarActor"

    .line 28
    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/actor/Actor;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/actor/Actor;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    .line 33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/speech/actorapi/AvatarActor;->mState:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/xiaopeng/speech/actorapi/AvatarActor;->mState:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AvatarActor{state=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/speech/actorapi/AvatarActor;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 38
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/speech/actor/Actor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 39
    invoke-virtual {p0}, Lcom/xiaopeng/speech/actorapi/AvatarActor;->a()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
