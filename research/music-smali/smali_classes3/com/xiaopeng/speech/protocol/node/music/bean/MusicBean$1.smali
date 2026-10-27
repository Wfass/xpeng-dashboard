.class final Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean$1;
.super Ljava/lang/Object;
.source "MusicBean.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;
    .locals 1

    .line 194
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;

    invoke-direct {v0, p1}, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;
    .locals 0

    .line 198
    new-array p1, p1, [Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 192
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean$1;->a(Landroid/os/Parcel;)Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 192
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean$1;->a(I)[Lcom/xiaopeng/speech/protocol/node/music/bean/MusicBean;

    move-result-object p1

    return-object p1
.end method
