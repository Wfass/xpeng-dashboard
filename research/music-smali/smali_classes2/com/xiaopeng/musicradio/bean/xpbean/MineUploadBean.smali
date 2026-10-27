.class public Lcom/xiaopeng/musicradio/bean/xpbean/MineUploadBean;
.super Ljava/lang/Object;
.source "MineUploadBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/xpbean/MineUploadBean$Bean;
    }
.end annotation


# instance fields
.field private collectId:Ljava/lang/String;

.field private collectSongIds:Ljava/lang/String;

.field private songs:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCollectId()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MineUploadBean;->collectId:Ljava/lang/String;

    return-object v0
.end method

.method public getCollectSongIds()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MineUploadBean;->collectSongIds:Ljava/lang/String;

    return-object v0
.end method

.method public getSongs()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MineUploadBean;->songs:Ljava/lang/String;

    return-object v0
.end method

.method public setCollectId(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MineUploadBean;->collectId:Ljava/lang/String;

    return-void
.end method

.method public setCollectSongIds(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MineUploadBean;->collectSongIds:Ljava/lang/String;

    return-void
.end method

.method public setSongs(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MineUploadBean;->songs:Ljava/lang/String;

    return-void
.end method
