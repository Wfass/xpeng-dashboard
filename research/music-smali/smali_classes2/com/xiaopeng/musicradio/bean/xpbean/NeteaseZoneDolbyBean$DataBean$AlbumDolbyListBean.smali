.class public Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$AlbumDolbyListBean;
.super Ljava/lang/Object;
.source "NeteaseZoneDolbyBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumDolbyListBean"
.end annotation


# instance fields
.field private desc:Ljava/lang/String;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;"
        }
    .end annotation
.end field

.field private page:Lcom/xiaopeng/musicradio/bean/common/PageBean;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$AlbumDolbyListBean;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$AlbumDolbyListBean;->list:Ljava/util/List;

    return-object v0
.end method

.method public getPage()Lcom/xiaopeng/musicradio/bean/common/PageBean;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$AlbumDolbyListBean;->page:Lcom/xiaopeng/musicradio/bean/common/PageBean;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$AlbumDolbyListBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$AlbumDolbyListBean;->desc:Ljava/lang/String;

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;)V"
        }
    .end annotation

    .line 161
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$AlbumDolbyListBean;->list:Ljava/util/List;

    return-void
.end method

.method public setPage(Lcom/xiaopeng/musicradio/bean/common/PageBean;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$AlbumDolbyListBean;->page:Lcom/xiaopeng/musicradio/bean/common/PageBean;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$AlbumDolbyListBean;->type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlbumDolbyListBean{list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$AlbumDolbyListBean;->list:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$AlbumDolbyListBean;->page:Lcom/xiaopeng/musicradio/bean/common/PageBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$AlbumDolbyListBean;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", desc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$AlbumDolbyListBean;->desc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
