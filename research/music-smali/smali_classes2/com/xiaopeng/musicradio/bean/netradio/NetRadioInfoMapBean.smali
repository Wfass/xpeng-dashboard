.class public Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoMapBean;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "NetRadioInfoMapBean.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private data:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoMapBean;->data:Ljava/util/HashMap;

    return-object v0
.end method

.method public setData(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
            ">;)V"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoMapBean;->data:Ljava/util/HashMap;

    return-void
.end method
