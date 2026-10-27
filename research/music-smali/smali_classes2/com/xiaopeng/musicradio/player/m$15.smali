.class Lcom/xiaopeng/musicradio/player/m$15;
.super Ljava/lang/Object;
.source "PlayerClient.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/player/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/player/m;->a(IFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:Lcom/xiaopeng/musicradio/player/m;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/player/m;IFF)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/m$15;->d:Lcom/xiaopeng/musicradio/player/m;

    iput p2, p0, Lcom/xiaopeng/musicradio/player/m$15;->a:I

    iput p3, p0, Lcom/xiaopeng/musicradio/player/m$15;->b:F

    iput p4, p0, Lcom/xiaopeng/musicradio/player/m$15;->c:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/m$15;->d:Lcom/xiaopeng/musicradio/player/m;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/player/m;->a(Lcom/xiaopeng/musicradio/player/m;)Lcom/xiaopeng/musicradio/player/e;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/player/m$15;->a:I

    iget v2, p0, Lcom/xiaopeng/musicradio/player/m$15;->b:F

    iget v3, p0, Lcom/xiaopeng/musicradio/player/m$15;->c:F

    invoke-interface {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/player/e;->a(IFF)V

    return-void
.end method
