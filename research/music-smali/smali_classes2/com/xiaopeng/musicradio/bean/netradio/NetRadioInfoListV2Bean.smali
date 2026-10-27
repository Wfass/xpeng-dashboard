.class public Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "NetRadioInfoListV2Bean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean$DataBean;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mData:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean$DataBean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getmData()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean$DataBean;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean;->mData:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean$DataBean;

    return-object v0
.end method

.method public setmData(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean$DataBean;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean;->mData:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean$DataBean;

    return-void
.end method
