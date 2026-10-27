.class Layj$5;
.super Ljava/lang/Object;
.source "PlaybackViewModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layj;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/bluetooth/g;

.field final synthetic b:Z

.field final synthetic c:Layj;


# direct methods
.method constructor <init>(Layj;Lcom/xiaopeng/musicradio/model/bluetooth/g;Z)V
    .locals 0

    .line 488
    iput-object p1, p0, Layj$5;->c:Layj;

    iput-object p2, p0, Layj$5;->a:Lcom/xiaopeng/musicradio/model/bluetooth/g;

    iput-boolean p3, p0, Layj$5;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 491
    iget-object v0, p0, Layj$5;->a:Lcom/xiaopeng/musicradio/model/bluetooth/g;

    iget-boolean v1, p0, Layj$5;->b:Z

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/model/bluetooth/g;->a(Z)V

    return-void
.end method
