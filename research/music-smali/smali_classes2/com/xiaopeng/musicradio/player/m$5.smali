.class Lcom/xiaopeng/musicradio/player/m$5;
.super Ljava/lang/Object;
.source "PlayerClient.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/player/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/player/m;->c(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/xiaopeng/musicradio/player/m;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/player/m;ILjava/lang/String;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/m$5;->c:Lcom/xiaopeng/musicradio/player/m;

    iput p2, p0, Lcom/xiaopeng/musicradio/player/m$5;->a:I

    iput-object p3, p0, Lcom/xiaopeng/musicradio/player/m$5;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/m$5;->c:Lcom/xiaopeng/musicradio/player/m;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/player/m;->a(Lcom/xiaopeng/musicradio/player/m;)Lcom/xiaopeng/musicradio/player/e;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/player/m$5;->a:I

    iget-object v2, p0, Lcom/xiaopeng/musicradio/player/m$5;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/musicradio/player/e;->c(ILjava/lang/String;)V

    return-void
.end method
