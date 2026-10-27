.class public Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;
.super Ljava/lang/Object;
.source "MusicHttpParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accountType:I

.field private areaCode:Ljava/lang/String;

.field private artistName:Ljava/lang/String;

.field private hashList:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private needCache:Z

.field private page:I

.field private pageSize:I

.field private songName:Ljava/lang/String;

.field private songQuality:I

.field private sort:I

.field private tag:Ljava/lang/String;

.field private type:I

.field private typeCode:Ljava/lang/String;

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam$1;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->id:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->accountType:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->page:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->version:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->key:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->pageSize:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->artistName:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->songName:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->type:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->needCache:Z

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->tag:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->areaCode:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->typeCode:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->sort:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->name:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->hashList:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccountType()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->accountType:I

    return v0
.end method

.method public getAreaCode()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->areaCode:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->artistName:Ljava/lang/String;

    return-object v0
.end method

.method public getHashList()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->hashList:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPage()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->page:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->pageSize:I

    return v0
.end method

.method public getSongName()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->songName:Ljava/lang/String;

    return-object v0
.end method

.method public getSongQuality()I
    .locals 1

    .line 215
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->songQuality:I

    return v0
.end method

.method public getSort()I
    .locals 1

    .line 191
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->sort:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->type:I

    return v0
.end method

.method public getTypeCode()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->typeCode:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->version:I

    return v0
.end method

.method public isNeedCache()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->needCache:Z

    return v0
.end method

.method public setAccountType(I)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->accountType:I

    return-void
.end method

.method public setAreaCode(Ljava/lang/String;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->areaCode:Ljava/lang/String;

    return-void
.end method

.method public setArtistName(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->artistName:Ljava/lang/String;

    return-void
.end method

.method public setHashList(Ljava/lang/String;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->hashList:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->id:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->key:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->name:Ljava/lang/String;

    return-void
.end method

.method public setNeedCache(Z)V
    .locals 0

    .line 163
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->needCache:Z

    return-void
.end method

.method public setPage(I)V
    .locals 0

    .line 107
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->page:I

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    .line 131
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->pageSize:I

    return-void
.end method

.method public setSongName(Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->songName:Ljava/lang/String;

    return-void
.end method

.method public setSongQuality(I)V
    .locals 0

    .line 219
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->songQuality:I

    return-void
.end method

.method public setSort(I)V
    .locals 0

    .line 195
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->sort:I

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->tag:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 155
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->type:I

    return-void
.end method

.method public setTypeCode(Ljava/lang/String;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->typeCode:Ljava/lang/String;

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 115
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->version:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 68
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->accountType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->page:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->version:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->pageSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->artistName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->songName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-boolean p2, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->needCache:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 78
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->tag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->areaCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->typeCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->sort:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->hashList:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
