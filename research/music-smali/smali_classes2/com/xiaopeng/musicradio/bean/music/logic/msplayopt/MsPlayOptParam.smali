.class public Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;
.super Ljava/lang/Object;
.source "MsPlayOptParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accountType:I

.field private index:I

.field private info:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

.field private isTtsPlay:Z

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation
.end field

.field private listSign:Ljava/lang/String;

.field private page:I

.field private quality:I

.field private supportRandom:Z

.field private totalPage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam$1;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->listSign:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->accountType:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->quality:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->isTtsPlay:Z

    .line 32
    sget-object v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->list:Ljava/util/List;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->supportRandom:Z

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->index:I

    .line 35
    const-class v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->info:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->page:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->totalPage:I

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

    .line 80
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->accountType:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->index:I

    return v0
.end method

.method public getInfo()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->info:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->list:Ljava/util/List;

    return-object v0
.end method

.method public getListSign()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->listSign:Ljava/lang/String;

    return-object v0
.end method

.method public getPage()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->page:I

    return v0
.end method

.method public getQuality()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->quality:I

    return v0
.end method

.method public getTotalPage()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->totalPage:I

    return v0
.end method

.method public isSupportRandom()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->supportRandom:Z

    return v0
.end method

.method public isTtsPlay()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->isTtsPlay:Z

    return v0
.end method

.method public setAccountType(I)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->accountType:I

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    .line 124
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->index:I

    return-void
.end method

.method public setInfo(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->info:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->list:Ljava/util/List;

    return-void
.end method

.method public setListSign(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->listSign:Ljava/lang/String;

    return-void
.end method

.method public setPage(I)V
    .locals 0

    .line 140
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->page:I

    return-void
.end method

.method public setQuality(I)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->quality:I

    return-void
.end method

.method public setSupportRandom(Z)V
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->supportRandom:Z

    return-void
.end method

.method public setTotalPage(I)V
    .locals 0

    .line 148
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->totalPage:I

    return-void
.end method

.method public setTtsPlay(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->isTtsPlay:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->listSign:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->accountType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->quality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->isTtsPlay:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->list:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 64
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->supportRandom:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 65
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->index:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->info:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 67
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->page:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->totalPage:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
