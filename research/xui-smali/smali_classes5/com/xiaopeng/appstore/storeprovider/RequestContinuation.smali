.class public Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;
.super Ljava/lang/Object;
.source "RequestContinuation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RequestContinuation"


# instance fields
.field private mDownloadUrl:Ljava/lang/String;

.field private final mExtraData:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mIconUrl:Ljava/lang/String;

.field private mNotificationVisibility:I

.field private final mParent:Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

.field private final mResourceType:I

.field private final mTaskKey:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mTaskName:Ljava/lang/String;

.field private mTotallySilent:Z

.field private mUseSystemUidDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 258
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation$1;

    invoke-direct {v0}, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "resourceType"    # I
    .param p2, "taskKey"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resourceType",
            "taskKey"
        }
    .end annotation

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "resourceType"    # I
    .param p2, "taskKey"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "taskName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "resourceType",
            "taskKey",
            "taskName"
        }
    .end annotation

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;)V

    .line 56
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;)V
    .locals 1
    .param p1, "resourceType"    # I
    .param p2, "taskKey"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "taskName"    # Ljava/lang/String;
    .param p4, "parent"    # Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "resourceType",
            "taskKey",
            "taskName",
            "parent"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x64

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mNotificationVisibility:I

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mUseSystemUidDownload:I

    .line 40
    iput-boolean v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mTotallySilent:Z

    .line 62
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mResourceType:I

    .line 63
    iput-object p4, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mParent:Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    .line 64
    iput-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mTaskKey:Ljava/lang/String;

    .line 65
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mExtraData:Landroid/os/Bundle;

    .line 73
    iput-object p3, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mTaskName:Ljava/lang/String;

    .line 74
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x64

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mNotificationVisibility:I

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mUseSystemUidDownload:I

    .line 40
    iput-boolean v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mTotallySilent:Z

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mResourceType:I

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mTaskKey:Ljava/lang/String;

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mTaskName:Ljava/lang/String;

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mDownloadUrl:Ljava/lang/String;

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mNotificationVisibility:I

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mIconUrl:Ljava/lang/String;

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mUseSystemUidDownload:I

    .line 253
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    iput-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mExtraData:Landroid/os/Bundle;

    .line 254
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    iput-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mParent:Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    iput-boolean v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mTotallySilent:Z

    .line 256
    return-void
.end method

.method private fixArgs()Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;
    .locals 7

    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, "allowTaskNameEmpty":Z
    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mResourceType:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    .line 201
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mExtraData:Landroid/os/Bundle;

    const-string v2, "extra_key_params_download_app_confirm"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 202
    .local v1, "needUserConfirm":Z
    if-eqz v1, :cond_0

    .line 204
    const/4 v0, 0x1

    .line 208
    .end local v1    # "needUserConfirm":Z
    :cond_0
    const/4 v1, 0x0

    .line 209
    .local v1, "taskNameFixed":Z
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mTaskName:Ljava/lang/String;

    .line 211
    .local v2, "taskName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    .line 212
    iget-object v3, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mDownloadUrl:Ljava/lang/String;

    invoke-static {v3}, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->getNameFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 213
    const/4 v1, 0x1

    .line 214
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 215
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mTaskKey:Ljava/lang/String;

    .line 217
    :cond_1
    const-string v3, "RequestContinuation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fixArgs, taskName is empty, use url or taskKey as taskName. taskName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_2
    if-eqz v1, :cond_3

    .line 220
    new-instance v3, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    iget v4, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mResourceType:I

    iget-object v5, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mTaskKey:Ljava/lang/String;

    iget-object v6, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mParent:Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;)V

    iget-object v4, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mDownloadUrl:Ljava/lang/String;

    .line 221
    invoke-virtual {v3, v4}, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->setDownloadUrl(Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    move-result-object v3

    iget v4, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mNotificationVisibility:I

    .line 222
    invoke-virtual {v3, v4}, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->setNotificationVisibility(I)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mIconUrl:Ljava/lang/String;

    .line 223
    invoke-virtual {v3, v4}, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->setIconUrl(Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    move-result-object v3

    .line 224
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->isUseSystemUidDownload()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->setUseSystemUidDownload(Z)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    move-result-object v3

    iget-boolean v4, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mTotallySilent:Z

    .line 225
    invoke-virtual {v3, v4}, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->setTotallySilent(Z)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mExtraData:Landroid/os/Bundle;

    .line 226
    invoke-virtual {v3, v4}, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->putExtraAll(Landroid/os/Bundle;)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    move-result-object v3

    .line 220
    return-object v3

    .line 228
    :cond_3
    return-object p0
.end method

.method private static getNameFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "url"
        }
    .end annotation

    .line 290
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    const-string v0, ""

    return-object v0

    .line 293
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraData()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mExtraData:Landroid/os/Bundle;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationVisibility()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mNotificationVisibility:I

    return v0
.end method

.method public getParent()Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mParent:Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    return-object v0
.end method

.method public getResourceType()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mResourceType:I

    return v0
.end method

.method public getTaskKey()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mTaskKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskName()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mTaskName:Ljava/lang/String;

    return-object v0
.end method

.method public isTotallySilent()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mTotallySilent:Z

    return v0
.end method

.method public isUseSystemUidDownload()Z
    .locals 2

    .line 144
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mUseSystemUidDownload:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public putExtra(Ljava/lang/String;I)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
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

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mExtraData:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 177
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;J)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;
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

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mExtraData:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 172
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "parcelable"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "parcelable"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mExtraData:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 187
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;
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

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mExtraData:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Z)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
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

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mExtraData:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 182
    return-object p0
.end method

.method public putExtraAll(Landroid/os/Bundle;)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;
    .locals 1
    .param p1, "extra"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extra"
        }
    .end annotation

    .line 159
    if-eqz p1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mExtraData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 162
    :cond_0
    return-object p0
.end method

.method public request()Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;
    .locals 2

    .line 195
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;

    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->fixArgs()Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;-><init>(Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;)V

    return-object v0
.end method

.method public setDownloadUrl(Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;
    .locals 0
    .param p1, "downloadUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadUrl"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mDownloadUrl:Ljava/lang/String;

    .line 103
    return-object p0
.end method

.method public setIconUrl(Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;
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

    .line 139
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mIconUrl:Ljava/lang/String;

    .line 140
    return-object p0
.end method

.method public setNotificationVisibility(I)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;
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

    .line 115
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mNotificationVisibility:I

    .line 116
    return-object p0
.end method

.method public setTotallySilent(Z)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;
    .locals 0
    .param p1, "totallySilent"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "totallySilent"
        }
    .end annotation

    .line 127
    iput-boolean p1, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mTotallySilent:Z

    .line 128
    return-object p0
.end method

.method public setUseSystemUidDownload(Z)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;
    .locals 0
    .param p1, "useSystemUidDownload"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "useSystemUidDownload"
        }
    .end annotation

    .line 149
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mUseSystemUidDownload:I

    .line 150
    return-object p0
.end method

.method public then(I)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;
    .locals 3
    .param p1, "resourceType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceType"
        }
    .end annotation

    .line 191
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->getTaskKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->getTaskName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestContin{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mResourceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mTaskKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mTaskName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", parent=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mParent:Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", useSystemDownload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mUseSystemUidDownload:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", silent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mTotallySilent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
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

    .line 277
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mResourceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mTaskKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mTaskName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mNotificationVisibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mIconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 283
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mUseSystemUidDownload:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mExtraData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 285
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mParent:Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 286
    iget-boolean v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mTotallySilent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    return-void
.end method
