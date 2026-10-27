.class final Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo$1;
.super Ljava/lang/Object;
.source "KugouMusicInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;
    .locals 1

    .line 1010
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;

    invoke-direct {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1007
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;
    .locals 0

    .line 1015
    new-array p1, p1, [Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1007
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo$1;->newArray(I)[Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;

    move-result-object p1

    return-object p1
.end method
