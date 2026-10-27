.class public Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;
.super Ljava/lang/Object;
.source "TryFileInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private fileSize:I

.field private playUrl:Ljava/lang/String;

.field private tryBegin:I

.field private tryEnd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo$1;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;->tryBegin:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;->tryEnd:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;->fileSize:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;->playUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFileSize()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;->fileSize:I

    return v0
.end method

.method public getPlayUrl()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;->playUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTryBegin()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;->tryBegin:I

    return v0
.end method

.method public getTryEnd()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;->tryEnd:I

    return v0
.end method

.method public setFileSize(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;->fileSize:I

    return-void
.end method

.method public setPlayUrl(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;->playUrl:Ljava/lang/String;

    return-void
.end method

.method public setTryBegin(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;->tryBegin:I

    return-void
.end method

.method public setTryEnd(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;->tryEnd:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 74
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;->tryBegin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;->tryEnd:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;->fileSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;->playUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
