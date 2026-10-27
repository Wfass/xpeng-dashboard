.class public Lcom/xiaopeng/musicradio/bean/db/LocalLove;
.super Ljava/lang/Object;
.source "LocalLove.java"

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

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 22
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LocalLove;->hash:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LocalLove;->uid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 22
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LocalLove;->hash:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LocalLove;->uid:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/LocalLove;->cacheId:Ljava/lang/Long;

    .line 33
    iput-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/LocalLove;->hash:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/xiaopeng/musicradio/bean/db/LocalLove;->uid:Ljava/lang/String;

    .line 35
    iput-wide p4, p0, Lcom/xiaopeng/musicradio/bean/db/LocalLove;->cacheTime:J

    return-void
.end method


# virtual methods
.method public getCacheId()Ljava/lang/Long;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LocalLove;->cacheId:Ljava/lang/Long;

    return-object v0
.end method

.method public getCacheTime()J
    .locals 2

    .line 63
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/LocalLove;->cacheTime:J

    return-wide v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LocalLove;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LocalLove;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setCacheId(Ljava/lang/Long;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/LocalLove;->cacheId:Ljava/lang/Long;

    return-void
.end method

.method public setCacheTime(J)V
    .locals 0

    .line 67
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/LocalLove;->cacheTime:J

    return-void
.end method

.method public setHash(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/LocalLove;->hash:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/LocalLove;->uid:Ljava/lang/String;

    return-void
.end method
