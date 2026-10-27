.class Lbcw$2;
.super Ljava/lang/Object;
.source "LiveDataProvider.java"

# interfaces
.implements Lbcw$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbcw;->a(Ljava/lang/String;Lbcw$b;)V
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

    .line 139
    iput-object p1, p0, Lbcw$2;->b:Lbcw;

    iput-object p2, p0, Lbcw$2;->a:Lbcw$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lbcw$2;->a:Lbcw$b;

    invoke-interface {v0, p1, p2}, Lbcw$b;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 2

    .line 142
    iget-object v0, p0, Lbcw$2;->b:Lbcw;

    iget-object v0, v0, Lbcw;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 143
    iget-object v0, p0, Lbcw$2;->b:Lbcw;

    iget-object v0, v0, Lbcw;->a:Ljava/util/List;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getProgramInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 144
    iget-object v0, p0, Lbcw$2;->b:Lbcw;

    iget-object v1, v0, Lbcw;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lbcw;->b:I

    .line 145
    iget-object v0, p0, Lbcw$2;->b:Lbcw;

    invoke-virtual {v0}, Lbcw;->j()V

    .line 147
    iget-object v0, p0, Lbcw$2;->a:Lbcw$b;

    invoke-interface {v0, p1}, Lbcw$b;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    if-eqz p1, :cond_0

    .line 149
    iget-object v0, p0, Lbcw$2;->b:Lbcw;

    invoke-static {v0, p1}, Lbcw;->a(Lbcw;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    .line 150
    iget-object v0, p0, Lbcw$2;->b:Lbcw;

    invoke-virtual {v0, p1}, Lbcw;->b(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    .line 151
    iget-object v0, p0, Lbcw$2;->b:Lbcw;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPlayingInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object p1

    invoke-static {v0, p1}, Lbcw;->a(Lbcw;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V

    .line 153
    :cond_0
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;

    const/4 v0, 0x6

    const-string v1, ""

    invoke-direct {p1, v0, v1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;-><init>(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method
