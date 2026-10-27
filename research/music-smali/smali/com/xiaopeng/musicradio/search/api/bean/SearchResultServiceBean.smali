.class public Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;
.super Ljava/lang/Object;
.source "SearchResultServiceBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEARCH_TYPE_MUSIC:I = 0x1

.field public static final SEARCH_TYPE_READING:I = 0x2

.field public static final SEARCH_TYPE_UNKNOWN:I


# instance fields
.field private albumId:Ljava/lang/String;

.field private albumLogoUrl:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private isLove:Z

.field private musicFrom:I

.field private needVip:Z

.field private playCount:J

.field private playState:I

.field private searchType:I

.field private songHash:Ljava/lang/String;

.field private supportSQ:Z

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 169
    new-instance v0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean$1;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->searchType:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->title:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->description:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->playCount:J

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->albumLogoUrl:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->albumId:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->songHash:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->isLove:Z

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->playState:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->needVip:Z

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->musicFrom:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-lez p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->supportSQ:Z

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->playState:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 115
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->playCount:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->songHash:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->isLove:Z

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->searchType:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->albumId:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->supportSQ:Z

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 127
    iput p1, p0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->musicFrom:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->albumLogoUrl:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 139
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->needVip:Z

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->title:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->description:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x8

    .line 165
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->searchType:I

    .line 166
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->title:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->description:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->playCount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->albumLogoUrl:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->albumId:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->songHash:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->playState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "SearchResultServiceBean[searchType:%d,title:%s, desc:%s, playCount:%d, album:%s, albumId:%d, songHash:%s,playstate:%d"

    .line 165
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 149
    iget p2, p0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->searchType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->playCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 153
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->albumLogoUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->albumId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->songHash:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-boolean p2, p0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->isLove:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget p2, p0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->playState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget-boolean p2, p0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->needVip:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget p2, p0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->musicFrom:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget-boolean p2, p0, Lcom/xiaopeng/musicradio/search/api/bean/SearchResultServiceBean;->supportSQ:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
