.class public Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;
.super Ljava/lang/Object;
.source "MusicRecognizeEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlbumCover:Ljava/lang/String;

.field private mAlbumName:Ljava/lang/String;

.field private mScore:Ljava/lang/String;

.field private mSinger:Ljava/lang/String;

.field private mSongName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;->mSongName:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;->mAlbumName:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;->mAlbumCover:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;->mSinger:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;->mScore:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;->mSongName:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;->mAlbumName:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;->mAlbumCover:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;->mSinger:Ljava/lang/String;

    .line 40
    iput-object p5, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;->mScore:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumCover()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;->mAlbumCover:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;->mScore:Ljava/lang/String;

    return-object v0
.end method

.method public getSinger()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;->mSinger:Ljava/lang/String;

    return-object v0
.end method

.method public getSongName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;->mSongName:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbumCover(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;->mAlbumCover:Ljava/lang/String;

    return-void
.end method

.method public setAlbumName(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;->mAlbumName:Ljava/lang/String;

    return-void
.end method

.method public setScore(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;->mScore:Ljava/lang/String;

    return-void
.end method

.method public setSinger(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;->mSinger:Ljava/lang/String;

    return-void
.end method

.method public setSongName(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;->mSongName:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 98
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;->mSongName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;->mAlbumName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;->mAlbumCover:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;->mSinger:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;->mScore:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
