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


# instance fields
.field private mDownloadUrl:Ljava/lang/String;

.field private final mExtraData:Landroid/os/Bundle;

.field private mIconUrl:Ljava/lang/String;

.field private mNotificationVisibility:I

.field private final mParent:Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

.field private final mResourceType:I

.field private final mTaskKey:Ljava/lang/String;

.field private final mTaskName:Ljava/lang/String;

.field private mUseSystemUidDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 179
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation$1;

    invoke-direct {v0}, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;)V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 28
    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mNotificationVisibility:I

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mUseSystemUidDownload:I

    .line 53
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mResourceType:I

    .line 54
    iput-object p4, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mParent:Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    .line 55
    iput-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mTaskKey:Ljava/lang/String;

    .line 56
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mExtraData:Landroid/os/Bundle;

    .line 58
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mDownloadUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->getNameFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 61
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, p3

    .line 64
    :goto_0
    iput-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mTaskName:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 28
    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mNotificationVisibility:I

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mUseSystemUidDownload:I

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mResourceType:I

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mTaskKey:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mTaskName:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mDownloadUrl:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mNotificationVisibility:I

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mIconUrl:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mUseSystemUidDownload:I

    .line 175
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mExtraData:Landroid/os/Bundle;

    .line 176
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mParent:Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    return-void
.end method

.method private static getNameFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 210
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 213
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraData()Landroid/os/Bundle;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mExtraData:Landroid/os/Bundle;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationVisibility()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mNotificationVisibility:I

    return v0
.end method

.method public getParent()Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mParent:Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    return-object v0
.end method

.method public getResourceType()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mResourceType:I

    return v0
.end method

.method public getTaskKey()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mTaskKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskName()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mTaskName:Ljava/lang/String;

    return-object v0
.end method

.method public isUseSystemUidDownload()Z
    .locals 2

    .line 113
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

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mExtraData:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;J)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mExtraData:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mExtraData:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Z)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mExtraData:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public request()Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;
    .locals 1

    .line 152
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;

    invoke-direct {v0, p0}, Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;-><init>(Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;)V

    return-object v0
.end method

.method public setDownloadUrl(Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mDownloadUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setIconUrl(Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mIconUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setNotificationVisibility(I)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;
    .locals 0

    .line 99
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mNotificationVisibility:I

    return-object p0
.end method

.method public setUseSystemUidDownload(Z)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;
    .locals 0

    .line 118
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mUseSystemUidDownload:I

    return-object p0
.end method

.method public then(I)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;
    .locals 3

    .line 148
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

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestContin{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mResourceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mTaskKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mTaskKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", parent=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mParent:Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", useSystemDownload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mUseSystemUidDownload:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 198
    iget p2, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mResourceType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mTaskKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    iget-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mTaskName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 201
    iget-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    iget p2, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mNotificationVisibility:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mIconUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    iget p2, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mUseSystemUidDownload:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mExtraData:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 206
    iget-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->mParent:Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
