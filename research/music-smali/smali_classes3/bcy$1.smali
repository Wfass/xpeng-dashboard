.class Lbcy$1;
.super Ljava/lang/Object;
.source "NetRadioHistoryOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbcy;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;

.field final synthetic b:Lbcy;


# direct methods
.method constructor <init>(Lbcy;Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lbcy$1;->b:Lbcy;

    iput-object p2, p0, Lbcy$1;->a:Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 65
    iget-object v0, p0, Lbcy$1;->b:Lbcy;

    invoke-static {v0}, Lbcy;->a(Lbcy;)Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao;

    move-result-object v0

    iget-object v1, p0, Lbcy$1;->a:Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao;->insertOrReplace(Ljava/lang/Object;)J

    .line 66
    iget-object v0, p0, Lbcy$1;->b:Lbcy;

    invoke-static {v0}, Lbcy;->b(Lbcy;)V

    .line 67
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$y;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$y;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method
