.class public Lcom/xiaopeng/musicradio/bean/push/PushUserBean$DataBean;
.super Ljava/lang/Object;
.source "PushUserBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/push/PushUserBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field public expireTime:J

.field public openId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpireTime()J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/push/PushUserBean$DataBean;->expireTime:J

    return-wide v0
.end method

.method public getOpenId()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/push/PushUserBean$DataBean;->openId:Ljava/lang/String;

    return-object v0
.end method

.method public setExpireTime(J)V
    .locals 0

    .line 69
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/push/PushUserBean$DataBean;->expireTime:J

    return-void
.end method

.method public setOpenId(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/push/PushUserBean$DataBean;->openId:Ljava/lang/String;

    return-void
.end method
