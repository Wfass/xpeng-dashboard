.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectVersionBean;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "CollectVersionBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectVersionBean$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectVersionBean$DataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectVersionBean$DataBean;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectVersionBean;->data:Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectVersionBean$DataBean;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectVersionBean$DataBean;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectVersionBean;->data:Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectVersionBean$DataBean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CollectVersionBean{data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectVersionBean;->data:Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectVersionBean$DataBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
