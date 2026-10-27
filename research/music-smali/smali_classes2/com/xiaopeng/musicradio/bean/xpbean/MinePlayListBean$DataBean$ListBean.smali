.class public Lcom/xiaopeng/musicradio/bean/xpbean/MinePlayListBean$DataBean$ListBean;
.super Ljava/lang/Object;
.source "MinePlayListBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/xpbean/MinePlayListBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListBean"
.end annotation


# instance fields
.field private createTime:J

.field private deleted:I

.field private id:Ljava/lang/String;

.field private img:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private uid:Ljava/lang/String;

.field private updateTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreateTime()J
    .locals 2

    .line 101
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MinePlayListBean$DataBean$ListBean;->createTime:J

    return-wide v0
.end method

.method public getDeleted()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MinePlayListBean$DataBean$ListBean;->deleted:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MinePlayListBean$DataBean$ListBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MinePlayListBean$DataBean$ListBean;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MinePlayListBean$DataBean$ListBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MinePlayListBean$DataBean$ListBean;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()J
    .locals 2

    .line 109
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MinePlayListBean$DataBean$ListBean;->updateTime:J

    return-wide v0
.end method

.method public setCreateTime(J)V
    .locals 0

    .line 105
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MinePlayListBean$DataBean$ListBean;->createTime:J

    return-void
.end method

.method public setDeleted(I)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MinePlayListBean$DataBean$ListBean;->deleted:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MinePlayListBean$DataBean$ListBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MinePlayListBean$DataBean$ListBean;->img:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MinePlayListBean$DataBean$ListBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MinePlayListBean$DataBean$ListBean;->uid:Ljava/lang/String;

    return-void
.end method

.method public setUpdateTime(J)V
    .locals 0

    .line 113
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MinePlayListBean$DataBean$ListBean;->updateTime:J

    return-void
.end method
