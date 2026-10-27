.class public Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean;
.super Ljava/lang/Object;
.source "VipUrlResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/VipUrlResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean$BuyUrlListBean;
    }
.end annotation


# instance fields
.field private buyUrlList:Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean$BuyUrlListBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuyUrlList()Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean$BuyUrlListBean;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean;->buyUrlList:Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean$BuyUrlListBean;

    return-object v0
.end method

.method public setBuyUrlList(Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean$BuyUrlListBean;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean;->buyUrlList:Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean$BuyUrlListBean;

    return-void
.end method
