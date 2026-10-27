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

.field private static final EXTRA_KEY_TOTALLY_SILENT:Ljava/lang/String; = "assemble_info_extra_key_totally_silent"

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

.field private mIconUrl:Ljava/lang/String;

.field private final mKey:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNotificationVisibility:I

.field private mProgress:F

.field private final mResourceType:I

.field private mState:I

.field private mTotallySilent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 254
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo$1;

    invoke-direct {v0}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "resourceType"    # I
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resourceType",
            "key"
        }
    .end annotation

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mState:I

    .line 100
    const/16 v0, 0x64

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mNotificationVisibility:I

    .line 111
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mResourceType:I

    .line 112
    iput-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mKey:Ljava/lang/String;

    .line 113
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mExtra:Landroid/os/Bundle;

    .line 114
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mState:I

    .line 100
    const/16 v0, 0x64

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mNotificationVisibility:I

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mKey:Ljava/lang/String;

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mResourceType:I

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mName:Ljava/lang/String;

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mState:I

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mProgress:F

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mNotificationVisibility:I

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mCanPause:I

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mCanStop:I

    .line 250
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mExtra:Landroid/os/Bundle;

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mIconUrl:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public static isCancelled(I)Z
    .locals 1
    .param p0, "state"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 58
    const/16 v0, 0x47e

    if-lt p0, v0, :cond_0

    const/16 v0, 0x4b0

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isCompleted(I)Z
    .locals 1
    .param p0, "state"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 54
    const/16 v0, 0x44c

    if-lt p0, v0, :cond_0

    const/16 v0, 0x47e

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isError(I)Z
    .locals 1
    .param p0, "state"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 50
    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x44c

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFinished(I)Z
    .locals 1
    .param p0, "state"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 63
    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x4b0

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPaused(I)Z
    .locals 1
    .param p0, "state"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 46
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPreparing(I)Z
    .locals 2
    .param p0, "state"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 38
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
    .param p0, "state"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 42
    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/16 v0, 0xc8

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static stateToStr(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 67
    const/16 v0, 0xc8

    if-eq p0, v0, :cond_3

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_2

    const/16 v0, 0x44c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x47e

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 79
    :pswitch_0
    const-string v0, "STATE_RUNNING_INSTALLING"

    return-object v0

    .line 77
    :pswitch_1
    const-string v0, "STATE_RUNNING_DOWNLOAD"

    return-object v0

    .line 75
    :pswitch_2
    const-string v0, "STATE_RUNNING"

    return-object v0

    .line 73
    :pswitch_3
    const-string v0, "STATE_PENDING"

    return-object v0

    .line 71
    :pswitch_4
    const-string v0, "STATE_LOADING"

    return-object v0

    .line 69
    :pswitch_5
    const-string v0, "STATE_UNKNOWN"

    return-object v0

    .line 87
    :cond_0
    const-string v0, "STATE_CANCELLED"

    return-object v0

    .line 85
    :cond_1
    const-string v0, "STATE_COMPLETE"

    return-object v0

    .line 83
    :cond_2
    const-string v0, "STATE_ERROR"

    return-object v0

    .line 81
    :cond_3
    const-string v0, "STATE_PAUSED"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public canPause()Z
    .locals 2

    .line 186
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

    .line 194
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
    .locals 3
    .param p1, "newKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newKey"
        }
    .end annotation

    .line 117
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;

    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->getResourceType()I

    move-result v1

    invoke-direct {v0, v1, p1}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;-><init>(ILjava/lang/String;)V

    .line 118
    .local v0, "newInfo":Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->getNotificationVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->setNotificationVisibility(I)V

    .line 119
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->getProgress()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->setProgress(F)V

    .line 120
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->setState(I)V

    .line 121
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->canStop()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->setCanStop(Z)V

    .line 122
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->canPause()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->setCanPause(Z)V

    .line 123
    iget-object v1, v0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mExtra:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 124
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public getExtraBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getExtraLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getExtraString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationVisibility()I
    .locals 1

    .line 203
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mNotificationVisibility:I

    return v0
.end method

.method public getProgress()F
    .locals 1

    .line 182
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mProgress:F

    return v0
.end method

.method public getResourceType()I
    .locals 1

    .line 161
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mResourceType:I

    return v0
.end method

.method public getState()I
    .locals 1

    .line 178
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mState:I

    return v0
.end method

.method public isTotallySilent()Z
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mExtra:Landroid/os/Bundle;

    const-string v1, "assemble_info_extra_key_totally_silent"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public putExtra(Ljava/lang/String;J)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 141
    return-void
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public putExtraAll(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 149
    return-void
.end method

.method public setCanPause(Z)V
    .locals 0
    .param p1, "canPause"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canPause"
        }
    .end annotation

    .line 190
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mCanPause:I

    .line 191
    return-void
.end method

.method public setCanStop(Z)V
    .locals 0
    .param p1, "canStop"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canStop"
        }
    .end annotation

    .line 198
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mCanStop:I

    .line 199
    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iconUrl"
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mIconUrl:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 173
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mName:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setNotificationVisibility(I)V
    .locals 0
    .param p1, "notificationVisibility"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notificationVisibility"
        }
    .end annotation

    .line 207
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mNotificationVisibility:I

    .line 208
    return-void
.end method

.method public setProgress(F)V
    .locals 0
    .param p1, "progress"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 156
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mProgress:F

    .line 157
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 152
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mState:I

    .line 153
    return-void
.end method

.method public setTotallySilent(Z)V
    .locals 2
    .param p1, "totallySilent"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "totallySilent"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mExtra:Landroid/os/Bundle;

    const-string v1, "assemble_info_extra_key_totally_silent"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 224
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AssembleInfo{key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", resType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mResourceType:I

    .line 230
    invoke-static {v1}, Lcom/xiaopeng/appstore/storeprovider/AssembleConstants;->resTypeToStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mState:I

    .line 232
    invoke-static {v1}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->stateToStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", prog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mProgress:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mNotificationVisibility:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mIconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", silent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mTotallySilent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 274
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mResourceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 276
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mProgress:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 278
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mNotificationVisibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mCanPause:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mCanStop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->mIconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 283
    return-void
.end method
