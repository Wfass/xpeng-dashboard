.class Lbcz$2;
.super Ljava/lang/Object;
.source "NetRadioModel.java"

# interfaces
.implements Lbcw$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbcz;->a(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lbcz;


# direct methods
.method constructor <init>(Lbcz;Z)V
    .locals 0

    .line 134
    iput-object p1, p0, Lbcz$2;->b:Lbcz;

    iput-boolean p2, p0, Lbcz$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lbcz$2;->b:Lbcz;

    invoke-virtual {v0}, Lbcz;->pauseByLogic()V

    .line 152
    iget-object v0, p0, Lbcz$2;->b:Lbcz;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/by;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lbcz;->a(Ljava/lang/String;)V

    .line 154
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFail: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NetRadioModel"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 5

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbcz$2;->b:Lbcz;

    invoke-static {v1}, Lbcz;->a(Lbcz;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetRadioModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 138
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPlayingInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPlayingInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getPlayUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 139
    invoke-static {}, Lbcy;->a()Lbcy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbcy;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    .line 140
    iget-object v0, p0, Lbcz$2;->b:Lbcz;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPlayingInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object p1

    iget-boolean v1, p0, Lbcz$2;->a:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbcz$2;->b:Lbcz;

    invoke-static {v1}, Lbcz;->b(Lbcz;)I

    move-result v1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    iget-object v1, p0, Lbcz$2;->b:Lbcz;

    invoke-static {v1}, Lbcz;->c(Lbcz;)I

    move-result v1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    invoke-static {v0, p1, v3, v2}, Lbcz;->a(Lbcz;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;ZZ)V

    goto :goto_1

    .line 142
    :cond_2
    iget-object p1, p0, Lbcz$2;->b:Lbcz;

    invoke-static {p1}, Lbcz;->d(Lbcz;)Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->reset()V

    .line 143
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v0, Lbud$a;->netradio_no_program:I

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/as;->b(Landroid/content/Context;I)V

    .line 144
    iget-object p1, p0, Lbcz$2;->b:Lbcz;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lbcz;->dealPlayState(I)V

    .line 146
    :goto_1
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ao;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ao;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method
