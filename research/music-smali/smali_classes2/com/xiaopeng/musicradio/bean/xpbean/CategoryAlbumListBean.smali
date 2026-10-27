.class public Lcom/xiaopeng/musicradio/bean/xpbean/CategoryAlbumListBean;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "CategoryAlbumListBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/xpbean/CategoryAlbumListBean$DataBean;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1e42343847a4e898L


# instance fields
.field private data:Lcom/xiaopeng/musicradio/bean/xpbean/CategoryAlbumListBean$DataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/xpbean/CategoryAlbumListBean$DataBean;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/CategoryAlbumListBean;->data:Lcom/xiaopeng/musicradio/bean/xpbean/CategoryAlbumListBean$DataBean;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/xpbean/CategoryAlbumListBean$DataBean;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/CategoryAlbumListBean;->data:Lcom/xiaopeng/musicradio/bean/xpbean/CategoryAlbumListBean$DataBean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/CategoryAlbumListBean;->data:Lcom/xiaopeng/musicradio/bean/xpbean/CategoryAlbumListBean$DataBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
