.class Lcom/xiaopeng/musicradio/player/m$11;
.super Ljava/lang/Object;
.source "PlayerClient.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/player/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/player/m;->a(ILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Lcom/xiaopeng/musicradio/player/m;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/player/m;ILjava/lang/String;Z)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/m$11;->d:Lcom/xiaopeng/musicradio/player/m;

    iput p2, p0, Lcom/xiaopeng/musicradio/player/m$11;->a:I

    iput-object p3, p0, Lcom/xiaopeng/musicradio/player/m$11;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/xiaopeng/musicradio/player/m$11;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/m$11;->d:Lcom/xiaopeng/musicradio/player/m;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/player/m;->a(Lcom/xiaopeng/musicradio/player/m;)Lcom/xiaopeng/musicradio/player/e;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/player/m$11;->a:I

    iget-object v2, p0, Lcom/xiaopeng/musicradio/player/m$11;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/xiaopeng/musicradio/player/m$11;->c:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/player/e;->a(ILjava/lang/String;Z)V

    return-void
.end method
