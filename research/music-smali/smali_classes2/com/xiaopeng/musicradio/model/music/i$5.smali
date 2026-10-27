.class Lcom/xiaopeng/musicradio/model/music/i$5;
.super Ljava/lang/Object;
.source "MusicControlModel.java"

# interfaces
.implements Lask$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/model/music/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/music/i;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/music/i;)V
    .locals 0

    .line 1236
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i$5;->a:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public focusPause()V
    .locals 2

    .line 1239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "focusPause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/i$5;->a:Lcom/xiaopeng/musicradio/model/music/i;

    iget v1, v1, Lcom/xiaopeng/musicradio/model/music/i;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicControlModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1240
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i$5;->a:Lcom/xiaopeng/musicradio/model/music/i;

    iget v0, v0, Lcom/xiaopeng/musicradio/model/music/i;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i$5;->a:Lcom/xiaopeng/musicradio/model/music/i;

    iget v0, v0, Lcom/xiaopeng/musicradio/model/music/i;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1241
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i$5;->a:Lcom/xiaopeng/musicradio/model/music/i;

    const-string v1, "interrupt"

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/model/music/i;->a(Lcom/xiaopeng/musicradio/model/music/i;Ljava/lang/String;)Ljava/lang/String;

    .line 1242
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i$5;->a:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->pauseByLogic()V

    :cond_1
    return-void
.end method

.method public focusPlay()V
    .locals 2

    .line 1270
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i$5;->a:Lcom/xiaopeng/musicradio/model/music/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/model/music/i;->b(Lcom/xiaopeng/musicradio/model/music/i;Z)V

    return-void
.end method

.method public lowerVolume()V
    .locals 2

    .line 1248
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i$5;->a:Lcom/xiaopeng/musicradio/model/music/i;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/music/i;->a:Lask;

    new-instance v1, Lcom/xiaopeng/musicradio/model/music/i$5$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/model/music/i$5$1;-><init>(Lcom/xiaopeng/musicradio/model/music/i$5;)V

    invoke-virtual {v0, v1}, Lask;->a(Lask$c;)V

    return-void
.end method

.method public riseVolume()V
    .locals 2

    .line 1259
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i$5;->a:Lcom/xiaopeng/musicradio/model/music/i;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/music/i;->a:Lask;

    new-instance v1, Lcom/xiaopeng/musicradio/model/music/i$5$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/model/music/i$5$2;-><init>(Lcom/xiaopeng/musicradio/model/music/i$5;)V

    invoke-virtual {v0, v1}, Lask;->b(Lask$c;)V

    return-void
.end method
