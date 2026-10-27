.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;
.super Ljava/lang/Object;
.source "MainHotSingerResultBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListBean"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private allLogos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private logo:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private position:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 127
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 130
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAllLogos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;->allLogos:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;->position:I

    return v0
.end method

.method public setAllLogos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;->allLogos:Ljava/util/List;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;->logo:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 114
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;->position:I

    return-void
.end method
