.class public Lcom/xiaopeng/musicradio/bean/VipUrlResult;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "VipUrlResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/VipUrlResult;->data:Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/VipUrlResult;->data:Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean;

    return-void
.end method
