.class public Lcom/xiaopeng/speech/actorapi/DialogActor;
.super Lcom/xiaopeng/speech/actor/Actor;
.source "DialogActor.java"


# static fields
.field public static final KEY_STATE:Ljava/lang/String; = "state"

.field public static final NAME:Ljava/lang/String; = "DialogActor"

.field public static final STATE_CONTINUE:I = 0x4

.field public static final STATE_END:I = 0x3

.field public static final STATE_ERROR:I = 0x2

.field public static final STATE_START:I = 0x1


# instance fields
.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    const-string v0, "DialogActor"

    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/actor/Actor;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Landroid/os/Parcel;

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/actor/Actor;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    .line 32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/speech/actorapi/DialogActor;->mState:I

    .line 33
    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/xiaopeng/speech/actorapi/DialogActor;->mState:I

    return v0
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 46
    iput p1, p0, Lcom/xiaopeng/speech/actorapi/DialogActor;->mState:I

    .line 47
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DialogActor{state=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/speech/actorapi/DialogActor;->mState:I

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
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 37
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/speech/actor/Actor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/speech/actorapi/DialogActor;->getState()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    return-void
.end method
