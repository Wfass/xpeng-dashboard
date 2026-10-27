.class public Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;
.super Ljava/lang/Object;
.source "AppAssembleInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCanPause:I

.field private mCanStop:I

.field private final mExtra:Landroid/os/Bundle;

.field private mIconUrl:Ljava/lang/String;

.field private final mKey:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNotificationVisibility:I

.field private mProgress:F

.field private final mResourceType:I

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mState:I

    const/16 v0, 0x64

    .line 21
    iput v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mNotificationVisibility:I

    .line 28
    iput p1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mResourceType:I

    .line 29
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mKey:Ljava/lang/String;

    .line 30
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mExtra:Landroid/os/Bundle;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mState:I

    const/16 v0, 0x64

    .line 21
    iput v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mNotificationVisibility:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mKey:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mResourceType:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mName:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mState:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mProgress:F

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mNotificationVisibility:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mCanPause:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mCanStop:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mExtra:Landroid/os/Bundle;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mIconUrl:Ljava/lang/String;

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

    .line 109
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

    .line 174
    iget v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mCanPause:I

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

    .line 182
    iget v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mCanStop:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getExtraLong(Ljava/lang/String;)J
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getExtraString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationVisibility()I
    .locals 1

    .line 190
    iget v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mNotificationVisibility:I

    return v0
.end method

.method public getProgress()F
    .locals 1

    .line 170
    iget v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mProgress:F

    return v0
.end method

.method public getResourceType()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mResourceType:I

    return v0
.end method

.method public getState()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mState:I

    return v0
.end method

.method public putExtra(Ljava/lang/String;J)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putExtraAll(Landroid/os/Bundle;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-void
.end method

.method public setCanPause(Z)V
    .locals 0

    .line 178
    iput p1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mCanPause:I

    return-void
.end method

.method public setCanStop(Z)V
    .locals 0

    .line 186
    iput p1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mCanStop:I

    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mIconUrl:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mName:Ljava/lang/String;

    return-void
.end method

.method public setNotificationVisibility(I)V
    .locals 0

    .line 194
    iput p1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mNotificationVisibility:I

    return-void
.end method

.method public setProgress(F)V
    .locals 0

    .line 146
    iput p1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mProgress:F

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 142
    iput p1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mState:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppAssembleInfo{key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mResourceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mState:I

    invoke-static {v1}, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->stateToStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", prog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mProgress:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mNotificationVisibility:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", canPause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mCanPause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", canStop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mCanStop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mExtra:Landroid/os/Bundle;

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

    .line 209
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    iget p2, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mResourceType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    iget p2, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget p2, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mProgress:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 214
    iget p2, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mNotificationVisibility:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget p2, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mCanPause:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    iget p2, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mCanStop:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 218
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->mIconUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
