.class public Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;
.super Ljava/lang/Object;
.source "TempSheetMusicInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private albumId:Ljava/lang/String;

.field private fromTitle:Ljava/lang/String;

.field private hash:Ljava/lang/String;

.field private musicFrom:I

.field private musicJson:Ljava/lang/String;

.field private pkId:Ljava/lang/Long;

.field private songId:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 26
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;->hash:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;->musicJson:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 26
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;->hash:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;->musicJson:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;->pkId:Ljava/lang/Long;

    .line 46
    iput-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;->hash:Ljava/lang/String;

    .line 47
    iput p3, p0, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;->musicFrom:I

    .line 48
    iput-object p4, p0, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;->fromTitle:Ljava/lang/String;

    .line 49
    iput-object p5, p0, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;->albumId:Ljava/lang/String;

    .line 50
    iput p6, p0, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;->type:I

    .line 51
    iput-object p7, p0, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;->musicJson:Ljava/lang/String;

    .line 52
    iput-object p8, p0, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;->songId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getFromTitle()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;->fromTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicFrom()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;->musicFrom:I

    return v0
.end method

.method public getMusicInfo()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 2

    .line 121
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;->getMusicJson()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    return-object v0
.end method

.method public getMusicJson()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;->musicJson:Ljava/lang/String;

    return-object v0
.end method

.method public getPkId()Ljava/lang/Long;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;->pkId:Ljava/lang/Long;

    return-object v0
.end method

.method public getSongId()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;->songId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;->type:I

    return v0
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;->albumId:Ljava/lang/String;

    return-void
.end method

.method public setFromTitle(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;->fromTitle:Ljava/lang/String;

    return-void
.end method

.method public setHash(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;->hash:Ljava/lang/String;

    return-void
.end method

.method public setMusicFrom(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;->musicFrom:I

    return-void
.end method

.method public setMusicJson(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;->musicJson:Ljava/lang/String;

    return-void
.end method

.method public setPkId(J)V
    .locals 0

    .line 97
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;->pkId:Ljava/lang/Long;

    return-void
.end method

.method public setPkId(Ljava/lang/Long;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;->pkId:Ljava/lang/Long;

    return-void
.end method

.method public setSongId(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;->songId:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/TempSheetMusicInfo;->type:I

    return-void
.end method
