.class Lcom/xiaopeng/musicradio/player/m$13;
.super Ljava/lang/Object;
.source "PlayerClient.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/player/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/player/m;->a(ILjava/lang/String;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Z

.field final synthetic f:Lcom/xiaopeng/musicradio/player/m;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/player/m;Ljava/lang/String;IZZZ)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/m$13;->f:Lcom/xiaopeng/musicradio/player/m;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/player/m$13;->a:Ljava/lang/String;

    iput p3, p0, Lcom/xiaopeng/musicradio/player/m$13;->b:I

    iput-boolean p4, p0, Lcom/xiaopeng/musicradio/player/m$13;->c:Z

    iput-boolean p5, p0, Lcom/xiaopeng/musicradio/player/m$13;->d:Z

    iput-boolean p6, p0, Lcom/xiaopeng/musicradio/player/m$13;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preparePlayWhenReady: url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/player/m$13;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/m$13;->f:Lcom/xiaopeng/musicradio/player/m;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/player/m;->a(Lcom/xiaopeng/musicradio/player/m;)Lcom/xiaopeng/musicradio/player/e;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/musicradio/player/m$13;->b:I

    iget-object v3, p0, Lcom/xiaopeng/musicradio/player/m$13;->a:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/xiaopeng/musicradio/player/m$13;->c:Z

    iget-boolean v5, p0, Lcom/xiaopeng/musicradio/player/m$13;->d:Z

    iget-boolean v6, p0, Lcom/xiaopeng/musicradio/player/m$13;->e:Z

    invoke-interface/range {v1 .. v6}, Lcom/xiaopeng/musicradio/player/e;->a(ILjava/lang/String;ZZZ)V

    return-void
.end method
