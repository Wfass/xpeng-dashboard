.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;
.super Ljava/lang/Object;
.source "XpPlayInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private categoryId:Ljava/lang/String;

.field private collectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategoryId()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;->categoryId:Ljava/lang/String;

    return-object v0
.end method

.method public getCollectList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;->collectList:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setCategoryId(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;->categoryId:Ljava/lang/String;

    return-void
.end method

.method public setCollectList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;)V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;->collectList:Ljava/util/List;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;->name:Ljava/lang/String;

    return-void
.end method
