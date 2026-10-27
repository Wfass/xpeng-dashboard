.class Lcom/xiaopeng/musicradio/player/m$16;
.super Ljava/lang/Object;
.source "PlayerClient.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/player/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/player/m;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/player/m;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/player/m;I)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/m$16;->b:Lcom/xiaopeng/musicradio/player/m;

    iput p2, p0, Lcom/xiaopeng/musicradio/player/m$16;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/m$16;->b:Lcom/xiaopeng/musicradio/player/m;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/player/m;->a(Lcom/xiaopeng/musicradio/player/m;)Lcom/xiaopeng/musicradio/player/e;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/player/m$16;->a:I

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/player/e;->b(I)V

    return-void
.end method
