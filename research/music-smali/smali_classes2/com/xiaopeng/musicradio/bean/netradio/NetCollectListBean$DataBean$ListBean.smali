.class public Lcom/xiaopeng/musicradio/bean/netradio/NetCollectListBean$DataBean$ListBean;
.super Ljava/lang/Object;
.source "NetCollectListBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/netradio/NetCollectListBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListBean"
.end annotation


# instance fields
.field private bizId:Ljava/lang/String;

.field private createTime:J

.field private radioDto:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBizId()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetCollectListBean$DataBean$ListBean;->bizId:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .line 125
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetCollectListBean$DataBean$ListBean;->createTime:J

    return-wide v0
.end method

.method public getRadioDto()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetCollectListBean$DataBean$ListBean;->radioDto:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetCollectListBean$DataBean$ListBean;->uid:I

    return v0
.end method

.method public setBizId(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetCollectListBean$DataBean$ListBean;->bizId:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(J)V
    .locals 0

    .line 129
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetCollectListBean$DataBean$ListBean;->createTime:J

    return-void
.end method

.method public setRadioDto(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetCollectListBean$DataBean$ListBean;->radioDto:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetCollectListBean$DataBean$ListBean;->uid:I

    return-void
.end method
