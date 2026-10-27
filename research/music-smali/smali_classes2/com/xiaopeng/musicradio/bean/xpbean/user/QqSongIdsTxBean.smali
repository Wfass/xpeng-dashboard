.class public Lcom/xiaopeng/musicradio/bean/xpbean/user/QqSongIdsTxBean;
.super Ljava/lang/Object;
.source "QqSongIdsTxBean.java"


# instance fields
.field public songExtraId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "songExtraId"
    .end annotation
.end field

.field public songExtraIds:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "songExtraIds"
    .end annotation
.end field

.field public songId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "songId"
    .end annotation
.end field

.field public songIds:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "songIds"
    .end annotation
.end field

.field public versions:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "versions"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/QqSongIdsTxBean;->songIds:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/QqSongIdsTxBean;->songExtraIds:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSongExtraId()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/QqSongIdsTxBean;->songExtraId:Ljava/lang/String;

    return-object v0
.end method

.method public getSongExtraIds()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/QqSongIdsTxBean;->songExtraIds:Ljava/lang/String;

    return-object v0
.end method

.method public getSongId()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/QqSongIdsTxBean;->songId:Ljava/lang/String;

    return-object v0
.end method

.method public getSongIds()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/QqSongIdsTxBean;->songIds:Ljava/lang/String;

    return-object v0
.end method

.method public getVersions()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/QqSongIdsTxBean;->versions:Ljava/lang/String;

    return-object v0
.end method

.method public setSongExtraId(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/QqSongIdsTxBean;->songExtraId:Ljava/lang/String;

    return-void
.end method

.method public setSongExtraIds(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/QqSongIdsTxBean;->songExtraIds:Ljava/lang/String;

    return-void
.end method

.method public setSongId(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/QqSongIdsTxBean;->songId:Ljava/lang/String;

    return-void
.end method

.method public setSongIds(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/QqSongIdsTxBean;->songIds:Ljava/lang/String;

    return-void
.end method

.method public setVersions(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/QqSongIdsTxBean;->versions:Ljava/lang/String;

    return-void
.end method
