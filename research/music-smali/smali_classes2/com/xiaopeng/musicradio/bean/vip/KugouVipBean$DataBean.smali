.class public Lcom/xiaopeng/musicradio/bean/vip/KugouVipBean$DataBean;
.super Ljava/lang/Object;
.source "KugouVipBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/vip/KugouVipBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private vipInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/vip/KugouVipBean$VipInfoBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getVipInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/vip/KugouVipBean$VipInfoBean;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/vip/KugouVipBean$DataBean;->vipInfos:Ljava/util/List;

    return-object v0
.end method

.method public setVipInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/vip/KugouVipBean$VipInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/vip/KugouVipBean$DataBean;->vipInfos:Ljava/util/List;

    return-void
.end method
