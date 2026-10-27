.class public Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "NetScheduleListBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private data:Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean;->data:Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean;->data:Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean;

    return-void
.end method
