.class Lcom/xiaopeng/musicradio/player/m$14;
.super Ljava/lang/Object;
.source "PlayerClient.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/player/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/player/m;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/xiaopeng/musicradio/player/m;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/player/m;II)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/m$14;->c:Lcom/xiaopeng/musicradio/player/m;

    iput p2, p0, Lcom/xiaopeng/musicradio/player/m$14;->a:I

    iput p3, p0, Lcom/xiaopeng/musicradio/player/m$14;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/m$14;->c:Lcom/xiaopeng/musicradio/player/m;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/player/m;->a(Lcom/xiaopeng/musicradio/player/m;)Lcom/xiaopeng/musicradio/player/e;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/player/m$14;->a:I

    iget v2, p0, Lcom/xiaopeng/musicradio/player/m$14;->b:I

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/musicradio/player/e;->a(II)V

    return-void
.end method
