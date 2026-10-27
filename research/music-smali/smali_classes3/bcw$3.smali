.class Lbcw$3;
.super Ljava/lang/Object;
.source "LiveDataProvider.java"

# interfaces
.implements Lbcw$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbcw;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;Lbcw$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbcw$b;

.field final synthetic b:Lbcw;


# direct methods
.method constructor <init>(Lbcw;Lbcw$b;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lbcw$3;->b:Lbcw;

    iput-object p2, p0, Lbcw$3;->a:Lbcw$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .line 194
    iget-object v0, p0, Lbcw$3;->a:Lbcw$b;

    if-eqz v0, :cond_0

    .line 195
    invoke-interface {v0, p1, p2}, Lbcw$b;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 3

    const-string v0, "LiveDataProvider"

    const-string v1, "play onSuccess: ==="

    .line 178
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v1, p0, Lbcw$3;->b:Lbcw;

    iget-object v1, v1, Lbcw;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 180
    iget-object v1, p0, Lbcw$3;->b:Lbcw;

    iget-object v1, v1, Lbcw;->a:Ljava/util/List;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getProgramInfos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 181
    iget-object v1, p0, Lbcw$3;->b:Lbcw;

    iget-object v2, v1, Lbcw;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lbcw;->b:I

    .line 182
    iget-object v1, p0, Lbcw$3;->b:Lbcw;

    invoke-virtual {v1}, Lbcw;->j()V

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " playIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbcw$3;->b:Lbcw;

    iget v2, v2, Lbcw;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " programInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPlayingInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lbcw$3;->a:Lbcw$b;

    if-eqz v0, :cond_0

    .line 185
    invoke-interface {v0, p1}, Lbcw$b;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    .line 187
    :cond_0
    iget-object v0, p0, Lbcw$3;->b:Lbcw;

    invoke-virtual {v0, p1}, Lbcw;->b(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    .line 188
    iget-object v0, p0, Lbcw$3;->b:Lbcw;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPlayingInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object p1

    invoke-static {v0, p1}, Lbcw;->a(Lbcw;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V

    .line 189
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;

    const/4 v0, 0x6

    const-string v1, ""

    invoke-direct {p1, v0, v1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;-><init>(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method
