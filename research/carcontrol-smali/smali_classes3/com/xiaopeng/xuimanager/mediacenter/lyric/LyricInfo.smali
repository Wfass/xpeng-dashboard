.class public Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;
.super Ljava/lang/Object;
.source "LyricInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static LYRIC_TYPE_LRC:Ljava/lang/String; = "lrc"

.field public static LYRIC_TYPE_TRD:Ljava/lang/String; = "trd"


# instance fields
.field private albumName:Ljava/lang/String;

.field private artistName:Ljava/lang/String;

.field private lyricContent:Ljava/lang/String;

.field private lyricType:Ljava/lang/String;

.field private mExtras:Landroid/os/Bundle;

.field private songId:Ljava/lang/String;

.field private songName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->LYRIC_TYPE_LRC:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->lyricType:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo$1;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->albumName:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->artistName:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLyricContent()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->lyricContent:Ljava/lang/String;

    return-object v0
.end method

.method public getLyricType()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->lyricType:Ljava/lang/String;

    return-object v0
.end method

.method public getSongId()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->songId:Ljava/lang/String;

    return-object v0
.end method

.method public getSongName()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->songName:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->songId:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->songName:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->artistName:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->albumName:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->lyricType:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->lyricContent:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method public setAlbumName(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->albumName:Ljava/lang/String;

    return-void
.end method

.method public setArtistName(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->artistName:Ljava/lang/String;

    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method public setLyricContent(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->lyricContent:Ljava/lang/String;

    return-void
.end method

.method public setLyricType(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->lyricType:Ljava/lang/String;

    return-void
.end method

.method public setSongId(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->songId:Ljava/lang/String;

    return-void
.end method

.method public setSongName(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->songName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->lyricContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->lyricContent:Ljava/lang/String;

    const-string v1, "\n"

    const-string/jumbo v2, "||"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 133
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LyricInfo{songId=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->songId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", songName=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->songName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", artistName=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->artistName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", albumName=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->albumName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", lyricType=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->lyricType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", lyricContent=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 48
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->songId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->songName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->artistName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->albumName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->lyricType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->lyricContent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
