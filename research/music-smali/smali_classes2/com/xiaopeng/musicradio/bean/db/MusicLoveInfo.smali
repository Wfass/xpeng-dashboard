.class public Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;
.super Lcom/xiaopeng/musicradio/bean/db/BaseUserMusicInfo;
.source "MusicLoveInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field public hash:Ljava/lang/String;

.field public logo:Ljava/lang/String;

.field public lrc:Ljava/lang/String;

.field private musicFrom:I

.field public singer:Ljava/lang/String;

.field public song:Ljava/lang/String;

.field private ts:J

.field public uid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 162
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo$1;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/db/BaseUserMusicInfo;-><init>()V

    const-string v0, ""

    .line 17
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->hash:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->uid:Ljava/lang/String;

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->musicFrom:I

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->ts:J

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 151
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/db/BaseUserMusicInfo;-><init>()V

    const-string v0, ""

    .line 17
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->hash:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->uid:Ljava/lang/String;

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->musicFrom:I

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->ts:J

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->hash:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->song:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->singer:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->logo:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->uid:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->musicFrom:I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->lrc:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->ts:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;J)V
    .locals 2

    .line 40
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/db/BaseUserMusicInfo;-><init>()V

    const-string v0, ""

    .line 17
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->hash:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->uid:Ljava/lang/String;

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->musicFrom:I

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->ts:J

    .line 41
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->hash:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->song:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->singer:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->logo:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->uid:Ljava/lang/String;

    .line 46
    iput p6, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->musicFrom:I

    .line 47
    iput-object p7, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->lrc:Ljava/lang/String;

    .line 48
    iput-wide p8, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->ts:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getLrc()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->lrc:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicFrom()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->musicFrom:I

    return v0
.end method

.method public getSinger()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->singer:Ljava/lang/String;

    return-object v0
.end method

.method public getSong()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->song:Ljava/lang/String;

    return-object v0
.end method

.method public getTs()J
    .locals 2

    .line 118
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->ts:J

    return-wide v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setHash(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->hash:Ljava/lang/String;

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->logo:Ljava/lang/String;

    return-void
.end method

.method public setLrc(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->lrc:Ljava/lang/String;

    return-void
.end method

.method public setMusicFrom(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->musicFrom:I

    return-void
.end method

.method public setSinger(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->singer:Ljava/lang/String;

    return-void
.end method

.method public setSong(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->song:Ljava/lang/String;

    return-void
.end method

.method public setTs(J)V
    .locals 0

    .line 123
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->ts:J

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->uid:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 141
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->hash:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->song:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->singer:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->logo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->uid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->musicFrom:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->lrc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->ts:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
