.class public Lcom/xiaopeng/musicradio/bean/vip/KugouVipBean$VipInfoBean;
.super Ljava/lang/Object;
.source "KugouVipBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/vip/KugouVipBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VipInfoBean"
.end annotation


# instance fields
.field private kugouUid:Ljava/lang/String;

.field private xpVip:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKugouUid()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/vip/KugouVipBean$VipInfoBean;->kugouUid:Ljava/lang/String;

    return-object v0
.end method

.method public isXpVip()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/vip/KugouVipBean$VipInfoBean;->xpVip:Z

    return v0
.end method

.method public setKugouUid(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/vip/KugouVipBean$VipInfoBean;->kugouUid:Ljava/lang/String;

    return-void
.end method

.method public setXpVip(Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/vip/KugouVipBean$VipInfoBean;->xpVip:Z

    return-void
.end method
