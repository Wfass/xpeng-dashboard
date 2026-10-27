.class Lbcy$2;
.super Ljava/lang/Object;
.source "NetRadioHistoryOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbcy;->b(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

.field final synthetic b:Lbcy;


# direct methods
.method constructor <init>(Lbcy;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lbcy$2;->b:Lbcy;

    iput-object p2, p0, Lbcy$2;->a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 76
    iget-object v0, p0, Lbcy$2;->b:Lbcy;

    invoke-static {v0}, Lbcy;->a(Lbcy;)Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao;

    move-result-object v0

    iget-object v1, p0, Lbcy$2;->a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao;->deleteByKey(Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lbcy$2;->b:Lbcy;

    invoke-static {v0}, Lbcy;->c(Lbcy;)Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lbcy$2;->a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result v0

    iget-object v1, p0, Lbcy$2;->b:Lbcy;

    invoke-static {v1}, Lbcy;->c(Lbcy;)Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lbcy$2;->b:Lbcy;

    invoke-virtual {v0}, Lbcy;->c()V

    .line 82
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$y;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$y;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method
