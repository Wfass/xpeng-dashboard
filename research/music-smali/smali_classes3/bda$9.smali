.class Lbda$9;
.super Ljava/lang/Object;
.source "NetRadioOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbda;->a(Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;

.field final synthetic b:Lbda;


# direct methods
.method constructor <init>(Lbda;Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lbda$9;->b:Lbda;

    iput-object p2, p0, Lbda$9;->a:Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 349
    iget-object v0, p0, Lbda$9;->b:Lbda;

    invoke-static {v0}, Lbda;->a(Lbda;)Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao;

    move-result-object v0

    iget-object v1, p0, Lbda$9;->a:Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao;->deleteByKey(Ljava/lang/Object;)V

    return-void
.end method
