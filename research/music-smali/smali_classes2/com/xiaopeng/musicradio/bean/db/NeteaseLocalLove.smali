.class public Lcom/xiaopeng/musicradio/bean/db/NeteaseLocalLove;
.super Ljava/lang/Object;
.source "NeteaseLocalLove.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private cacheId:Ljava/lang/Long;

.field private cacheTime:J

.field private hash:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 22
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLocalLove;->hash:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLocalLove;->uid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 22
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLocalLove;->hash:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLocalLove;->uid:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLocalLove;->cacheId:Ljava/lang/Long;

    .line 30
    iput-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLocalLove;->hash:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLocalLove;->uid:Ljava/lang/String;

    .line 32
    iput-wide p4, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLocalLove;->cacheTime:J

    return-void
.end method


# virtual methods
.method public copyTo(Lcom/xiaopeng/musicradio/bean/db/LocalLove;)V
    .locals 2

    .line 73
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLocalLove;->getHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LocalLove;->setHash(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLocalLove;->getCacheId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LocalLove;->setCacheId(Ljava/lang/Long;)V

    .line 75
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLocalLove;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LocalLove;->setUid(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLocalLove;->getCacheTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/LocalLove;->setCacheTime(J)V

    return-void
.end method

.method public getCacheId()Ljava/lang/Long;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLocalLove;->cacheId:Ljava/lang/Long;

    return-object v0
.end method

.method public getCacheTime()J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLocalLove;->cacheTime:J

    return-wide v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLocalLove;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLocalLove;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setCacheId(Ljava/lang/Long;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLocalLove;->cacheId:Ljava/lang/Long;

    return-void
.end method

.method public setCacheTime(J)V
    .locals 0

    .line 69
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLocalLove;->cacheTime:J

    return-void
.end method

.method public setHash(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLocalLove;->hash:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLocalLove;->uid:Ljava/lang/String;

    return-void
.end method
