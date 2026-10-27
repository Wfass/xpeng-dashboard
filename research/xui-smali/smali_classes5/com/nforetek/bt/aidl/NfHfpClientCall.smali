.class public final Lcom/nforetek/bt/aidl/NfHfpClientCall;
.super Ljava/lang/Object;
.source "NfHfpClientCall.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CALL_STATE_ACTIVE:I = 0x0

.field public static final CALL_STATE_ALERTING:I = 0x3

.field public static final CALL_STATE_DIALING:I = 0x2

.field public static final CALL_STATE_HELD:I = 0x1

.field public static final CALL_STATE_HELD_BY_RESPONSE_AND_HOLD:I = 0x6

.field public static final CALL_STATE_INCOMING:I = 0x4

.field public static final CALL_STATE_TERMINATED:I = 0x7

.field public static final CALL_STATE_WAITING:I = 0x5

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/nforetek/bt/aidl/NfHfpClientCall;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mId:I

.field private mMultiParty:Z

.field private mNumber:Ljava/lang/String;

.field private final mOutgoing:Z

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 192
    new-instance v0, Lcom/nforetek/bt/aidl/NfHfpClientCall$1;

    invoke-direct {v0}, Lcom/nforetek/bt/aidl/NfHfpClientCall$1;-><init>()V

    .line 191
    sput-object v0, Lcom/nforetek/bt/aidl/NfHfpClientCall;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 203
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;ZZ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "state"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "multiParty"    # Z
    .param p5, "outgoing"    # Z

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Lcom/nforetek/bt/aidl/NfHfpClientCall;->mId:I

    .line 76
    iput p2, p0, Lcom/nforetek/bt/aidl/NfHfpClientCall;->mState:I

    .line 77
    if-eqz p3, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/nforetek/bt/aidl/NfHfpClientCall;->mNumber:Ljava/lang/String;

    .line 78
    iput-boolean p4, p0, Lcom/nforetek/bt/aidl/NfHfpClientCall;->mMultiParty:Z

    .line 79
    iput-boolean p5, p0, Lcom/nforetek/bt/aidl/NfHfpClientCall;->mOutgoing:Z

    .line 80
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/nforetek/bt/aidl/NfHfpClientCall;->mId:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/nforetek/bt/aidl/NfHfpClientCall;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 131
    iget v0, p0, Lcom/nforetek/bt/aidl/NfHfpClientCall;->mState:I

    return v0
.end method

.method public isMultiParty()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/nforetek/bt/aidl/NfHfpClientCall;->mMultiParty:Z

    return v0
.end method

.method public isOutgoing()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Lcom/nforetek/bt/aidl/NfHfpClientCall;->mOutgoing:Z

    return v0
.end method

.method public setMultiParty(Z)V
    .locals 0
    .param p1, "multiParty"    # Z

    .line 113
    iput-boolean p1, p0, Lcom/nforetek/bt/aidl/NfHfpClientCall;->mMultiParty:Z

    .line 114
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .line 101
    iput-object p1, p0, Lcom/nforetek/bt/aidl/NfHfpClientCall;->mNumber:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 90
    iput p1, p0, Lcom/nforetek/bt/aidl/NfHfpClientCall;->mState:I

    .line 91
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NfHeadsetClientCall{mId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/nforetek/bt/aidl/NfHfpClientCall;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    const-string v1, ", mState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget v1, p0, Lcom/nforetek/bt/aidl/NfHfpClientCall;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 176
    iget v1, p0, Lcom/nforetek/bt/aidl/NfHfpClientCall;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 175
    :pswitch_0
    const-string v1, "TERMINATED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 174
    :pswitch_1
    const-string v1, "HELD_BY_RESPONSE_AND_HOLD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 173
    :pswitch_2
    const-string v1, "WAITING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 172
    :pswitch_3
    const-string v1, "INCOMING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 171
    :pswitch_4
    const-string v1, "ALERTING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 170
    :pswitch_5
    const-string v1, "DIALING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 169
    :pswitch_6
    const-string v1, "HELD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 168
    :pswitch_7
    const-string v1, "ACTIVE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    :goto_0
    const-string v1, ", mNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget-object v1, p0, Lcom/nforetek/bt/aidl/NfHfpClientCall;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string v1, ", mMultiParty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget-boolean v1, p0, Lcom/nforetek/bt/aidl/NfHfpClientCall;->mMultiParty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 182
    const-string v1, ", mOutgoing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    iget-boolean v1, p0, Lcom/nforetek/bt/aidl/NfHfpClientCall;->mOutgoing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 184
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 207
    iget v0, p0, Lcom/nforetek/bt/aidl/NfHfpClientCall;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget v0, p0, Lcom/nforetek/bt/aidl/NfHfpClientCall;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    iget-object v0, p0, Lcom/nforetek/bt/aidl/NfHfpClientCall;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    iget-boolean v0, p0, Lcom/nforetek/bt/aidl/NfHfpClientCall;->mMultiParty:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    iget-boolean v0, p0, Lcom/nforetek/bt/aidl/NfHfpClientCall;->mOutgoing:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    return-void
.end method
