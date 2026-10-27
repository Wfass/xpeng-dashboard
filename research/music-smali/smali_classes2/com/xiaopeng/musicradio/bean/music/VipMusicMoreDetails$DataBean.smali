.class public Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails$DataBean;
.super Ljava/lang/Object;
.source "VipMusicMoreDetails.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails$CollectBean;",
            ">;"
        }
    .end annotation
.end field

.field private page:Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails$PageBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails$CollectBean;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails$DataBean;->list:Ljava/util/List;

    return-object v0
.end method

.method public getPage()Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails$PageBean;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails$DataBean;->page:Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails$PageBean;

    return-object v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails$CollectBean;",
            ">;)V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails$DataBean;->list:Ljava/util/List;

    return-void
.end method

.method public setPage(Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails$PageBean;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails$DataBean;->page:Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails$PageBean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataBean{list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails$DataBean;->list:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails$DataBean;->page:Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreDetails$PageBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
