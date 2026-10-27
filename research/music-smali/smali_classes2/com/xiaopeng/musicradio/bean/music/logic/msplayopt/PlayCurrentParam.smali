.class public Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/PlayCurrentParam;
.super Ljava/lang/Object;
.source "PlayCurrentParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/PlayCurrentParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accountType:I

.field private checkAccount:Z

.field private info:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

.field private onlyInsert:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/PlayCurrentParam$1;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/PlayCurrentParam$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/PlayCurrentParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-class v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/PlayCurrentParam;->info:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/PlayCurrentParam;->accountType:I

    .line 24
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
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/PlayCurrentParam;->checkAccount:Z

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/PlayCurrentParam;->onlyInsert:Z

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

    .line 62
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/PlayCurrentParam;->accountType:I

    return v0
.end method

.method public getInfo()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/PlayCurrentParam;->info:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    return-object v0
.end method

.method public isCheckAccount()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/PlayCurrentParam;->checkAccount:Z

    return v0
.end method

.method public isOnlyInsert()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/PlayCurrentParam;->onlyInsert:Z

    return v0
.end method

.method public setAccountType(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/PlayCurrentParam;->accountType:I

    return-void
.end method

.method public setCheckAccount(Z)V
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/PlayCurrentParam;->checkAccount:Z

    return-void
.end method

.method public setInfo(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/PlayCurrentParam;->info:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    return-void
.end method

.method public setOnlyInsert(Z)V
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/PlayCurrentParam;->onlyInsert:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/PlayCurrentParam;->info:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 48
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/PlayCurrentParam;->accountType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget-boolean p2, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/PlayCurrentParam;->checkAccount:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 50
    iget-boolean p2, p0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/PlayCurrentParam;->onlyInsert:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
