.class public Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;
.super Lcom/xiaopeng/musicradio/bean/BaseInfo;
.source "BtMusicBean.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private duration:I

.field private logo:Ljava/lang/String;

.field private lrcContent:Ljava/lang/String;

.field private singer:Ljava/lang/String;

.field private song:Ljava/lang/String;

.field private uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 119
    new-instance v0, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean$1;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 107
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/BaseInfo;-><init>()V

    const-string v0, ""

    .line 18
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->song:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->singer:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->logo:Ljava/lang/String;

    const/4 v1, 0x0

    .line 21
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->duration:I

    .line 22
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->lrcContent:Ljava/lang/String;

    .line 23
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->uuid:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 110
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/BaseInfo;-><init>()V

    const-string v0, ""

    .line 18
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->song:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->singer:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->logo:Ljava/lang/String;

    const/4 v1, 0x0

    .line 21
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->duration:I

    .line 22
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->lrcContent:Ljava/lang/String;

    .line 23
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->uuid:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->song:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->singer:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->logo:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->duration:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->lrcContent:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->uuid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 82
    :cond_0
    instance-of v1, p1, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    if-nez v1, :cond_1

    return v0

    .line 85
    :cond_1
    check-cast p1, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    .line 86
    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->uuid:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->uuid:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->duration:I

    return v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getLrcContent()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->lrcContent:Ljava/lang/String;

    return-object v0
.end method

.method public getSinger()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->singer:Ljava/lang/String;

    return-object v0
.end method

.method public getSong()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->song:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public refreshUuid()V
    .locals 1

    .line 66
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->uuid:Ljava/lang/String;

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->duration:I

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->logo:Ljava/lang/String;

    return-void
.end method

.method public setLrcContent(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->lrcContent:Ljava/lang/String;

    return-void
.end method

.method public setSinger(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->singer:Ljava/lang/String;

    return-void
.end method

.method public setSong(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->song:Ljava/lang/String;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->uuid:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 99
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->song:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->singer:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->logo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->duration:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->lrcContent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->uuid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
