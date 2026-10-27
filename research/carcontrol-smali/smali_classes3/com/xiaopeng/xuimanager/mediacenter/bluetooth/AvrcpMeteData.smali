.class public Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;
.super Ljava/lang/Object;
.source "AvrcpMeteData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlbum:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mExtras:Landroid/os/Bundle;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;->mTitle:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;->mArtist:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;->mAlbum:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;->mTitle:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;->mArtist:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;->mAlbum:Ljava/lang/String;

    .line 32
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;->mAlbum:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;->mArtist:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;->mTitle:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;->mArtist:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;->mAlbum:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;->mAlbum:Ljava/lang/String;

    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;->mArtist:Ljava/lang/String;

    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 49
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;->mArtist:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;->mAlbum:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
