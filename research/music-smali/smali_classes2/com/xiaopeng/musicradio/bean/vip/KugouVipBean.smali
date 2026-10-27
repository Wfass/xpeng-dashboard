.class public Lcom/xiaopeng/musicradio/bean/vip/KugouVipBean;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "KugouVipBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/vip/KugouVipBean$VipInfoBean;,
        Lcom/xiaopeng/musicradio/bean/vip/KugouVipBean$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/xiaopeng/musicradio/bean/vip/KugouVipBean$DataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/vip/KugouVipBean$DataBean;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/vip/KugouVipBean;->data:Lcom/xiaopeng/musicradio/bean/vip/KugouVipBean$DataBean;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/vip/KugouVipBean$DataBean;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/vip/KugouVipBean;->data:Lcom/xiaopeng/musicradio/bean/vip/KugouVipBean$DataBean;

    return-void
.end method
