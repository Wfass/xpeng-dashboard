.class public Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;
.super Ljava/lang/Object;
.source "AssembleInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATE_CANCELLED:I = 0x47e

.field public static final STATE_COMPLETE:I = 0x44c

.field public static final STATE_ERROR:I = 0x3e8

.field public static final STATE_LOADING:I = 0x1

.field public static final STATE_PAUSED:I = 0xc8

.field public static final STATE_PENDING:I = 0x2

.field public static final STATE_RUNNING:I = 0x64

.field public static final STATE_RUNNING_DOWNLOAD:I = 0x65

.field public static final STATE_RUNNING_INSTALLING:I = 0x66

.field public static final STATE_UNKNOWN:I


# instance fields
.field private mCanPause:I

.field private mCanStop:I

.field private final mExtra:Landroid/os/Bundle;

.field private final mKey:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNotificationVisibility:I

.field private mProgress:F

.field private final mResourceType:I

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 231
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo$1;

    invoke-direct {v0}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 96
    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mState:I

    const/16 v0, 0x64

    .line 99
    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mNotificationVisibility:I

    .line 108
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mResourceType:I

    .line 109
    iput-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mKey:Ljava/lang/String;

    .line 110
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mExtra:Landroid/os/Bundle;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 96
    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mState:I

    const/16 v0, 0x64

    .line 99
    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mNotificationVisibility:I

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mKey:Ljava/lang/String;

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mResourceType:I

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mName:Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mState:I

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mProgress:F

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mNotificationVisibility:I

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mCanPause:I

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mCanStop:I

    .line 228
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mExtra:Landroid/os/Bundle;

    return-void
.end method

.method public static isCancelled(I)Z
    .locals 1

    const/16 v0, 0x47e

    if-lt p0, v0, :cond_0

    const/16 v0, 0x4b0

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isCompleted(I)Z
    .locals 1

    const/16 v0, 0x44c

    if-lt p0, v0, :cond_0

    const/16 v0, 0x47e

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isError(I)Z
    .locals 1

    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x44c

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isFinished(I)Z
    .locals 1

    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x4b0

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPaused(I)Z
    .locals 1

    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPreparing(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v1, 0x64

    if-ge p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRunning(I)Z
    .locals 1

    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/16 v0, 0xc8

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static stateToStr(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_6

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_3

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_2

    const/16 v0, 0x44c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x47e

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "STATE_RUNNING_INSTALLING"

    return-object p0

    :pswitch_1
    const-string p0, "STATE_RUNNING_DOWNLOAD"

    return-object p0

    :pswitch_2
    const-string p0, "STATE_RUNNING"

    return-object p0

    :cond_0
    const-string p0, "STATE_CANCELLED"

    return-object p0

    :cond_1
    const-string p0, "STATE_COMPLETE"

    return-object p0

    :cond_2
    const-string p0, "STATE_ERROR"

    return-object p0

    :cond_3
    const-string p0, "STATE_PAUSED"

    return-object p0

    :cond_4
    const-string p0, "STATE_PENDING"

    return-object p0

    :cond_5
    const-string p0, "STATE_LOADING"

    return-object p0

    :cond_6
    const-string p0, "STATE_UNKNOWN"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public canPause()Z
    .locals 2

    .line 179
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mCanPause:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public canStop()Z
    .locals 2

    .line 187
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mCanStop:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public copy(Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;
    .locals 2

    .line 114
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;

    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->getResourceType()I

    move-result v1

    invoke-direct {v0, v1, p1}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;-><init>(ILjava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->getNotificationVisibility()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->setNotificationVisibility(I)V

    .line 116
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->getProgress()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->setProgress(F)V

    .line 117
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->getState()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->setState(I)V

    .line 118
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->canStop()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->setCanStop(Z)V

    .line 119
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->canPause()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->setCanPause(Z)V

    .line 120
    iget-object p1, v0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mExtra:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getExtraLong(Ljava/lang/String;)J
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getExtraString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationVisibility()I
    .locals 1

    .line 196
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mNotificationVisibility:I

    return v0
.end method

.method public getProgress()F
    .locals 1

    .line 175
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mProgress:F

    return v0
.end method

.method public getResourceType()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mResourceType:I

    return v0
.end method

.method public getState()I
    .locals 1

    .line 171
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mState:I

    return v0
.end method

.method public putExtra(Ljava/lang/String;J)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putExtraAll(Landroid/os/Bundle;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-void
.end method

.method public setCanPause(Z)V
    .locals 0

    .line 183
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mCanPause:I

    return-void
.end method

.method public setCanStop(Z)V
    .locals 0

    .line 191
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mCanStop:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mName:Ljava/lang/String;

    return-void
.end method

.method public setNotificationVisibility(I)V
    .locals 0

    .line 200
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mNotificationVisibility:I

    return-void
.end method

.method public setProgress(F)V
    .locals 0

    .line 149
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mProgress:F

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 145
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mState:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AssembleInfo{key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mResourceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mState:I

    .line 209
    invoke-static {v1}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->stateToStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", prog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mProgress:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mNotificationVisibility:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", canPause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mCanPause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", canStop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mCanStop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 250
    iget-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    iget p2, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mResourceType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    iget-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    iget p2, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    iget p2, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mProgress:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 255
    iget p2, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mNotificationVisibility:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    iget p2, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mCanPause:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    iget p2, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mCanStop:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    iget-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
