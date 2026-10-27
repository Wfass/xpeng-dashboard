.class Lbdb$1;
.super Ljava/lang/Object;
.source "RadioDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbdb;->a(Lbdb$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbdb$a;

.field final synthetic b:Lbdb;


# direct methods
.method constructor <init>(Lbdb;Lbdb$a;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lbdb$1;->b:Lbdb;

    iput-object p2, p0, Lbdb$1;->a:Lbdb$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 61
    iget-object v0, p0, Lbdb$1;->b:Lbdb;

    invoke-virtual {v0}, Lbdb;->m()Lcom/xiaopeng/musicradio/utils/bm;

    move-result-object v0

    const-string v1, "SP_CURRENT_DATA_RPOVIDER"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/utils/bm;->b(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x2

    const-string v4, ""

    if-eq v0, v2, :cond_0

    .line 64
    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    const-string v6, "SP_RADIO_CURRENT_INFO"

    aput-object v6, v5, v0

    const-string v0, "%d_%s"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 65
    iget-object v5, p0, Lbdb$1;->b:Lbdb;

    invoke-virtual {v5}, Lbdb;->m()Lcom/xiaopeng/musicradio/utils/bm;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Lcom/xiaopeng/musicradio/utils/bm;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 66
    iget-object v6, p0, Lbdb$1;->b:Lbdb;

    invoke-virtual {v6}, Lbdb;->m()Lcom/xiaopeng/musicradio/utils/bm;

    move-result-object v6

    invoke-virtual {v6, v0, v4}, Lcom/xiaopeng/musicradio/utils/bm;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 67
    iget-object v0, p0, Lbdb$1;->b:Lbdb;

    invoke-virtual {v0}, Lbdb;->m()Lcom/xiaopeng/musicradio/utils/bm;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/utils/bm;->a(Ljava/lang/String;I)Z

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lbdb$1;->b:Lbdb;

    invoke-virtual {v0}, Lbdb;->m()Lcom/xiaopeng/musicradio/utils/bm;

    move-result-object v0

    iget-object v1, p0, Lbdb$1;->b:Lbdb;

    invoke-static {v1}, Lbdb;->a(Lbdb;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/xiaopeng/musicradio/utils/bm;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 71
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "run: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " playIndex = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbdb$1;->b:Lbdb;

    invoke-virtual {v2}, Lbdb;->k()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RadioDataProvider"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-static {v5}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 73
    const-class v0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-static {v5, v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    .line 74
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPlayingInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 75
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPlayingInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->setType(I)V

    .line 77
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getProgramInfos()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 79
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getProgramInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    .line 80
    invoke-virtual {v2, v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->setParentInfo(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    goto :goto_1

    .line 84
    :cond_2
    new-instance v1, Lbdb$1$1;

    invoke-direct {v1, p0, v0}, Lbdb$1$1;-><init>(Lbdb$1;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    invoke-static {v1}, Lbql;->g(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 93
    :cond_3
    invoke-static {}, Lbcz;->k()Lbcz;

    move-result-object v0

    invoke-virtual {v0}, Lbcz;->postInfoEvent()V

    :goto_2
    return-void
.end method
