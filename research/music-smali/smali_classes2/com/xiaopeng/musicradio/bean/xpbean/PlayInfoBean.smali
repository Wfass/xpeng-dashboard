.class public Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "PlayInfoBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean$DataBean;
    }
.end annotation


# instance fields
.field private mData:Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean$DataBean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean$DataBean;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean;->mData:Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean$DataBean;

    return-object v0
.end method
