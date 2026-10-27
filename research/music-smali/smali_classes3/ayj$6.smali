.class Layj$6;
.super Ljava/lang/Object;
.source "PlaybackViewModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layj;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/bluetooth/i;

.field final synthetic b:J

.field final synthetic c:Layj;


# direct methods
.method constructor <init>(Layj;Lcom/xiaopeng/musicradio/model/bluetooth/i;J)V
    .locals 0

    .line 501
    iput-object p1, p0, Layj$6;->c:Layj;

    iput-object p2, p0, Layj$6;->a:Lcom/xiaopeng/musicradio/model/bluetooth/i;

    iput-wide p3, p0, Layj$6;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 505
    iget-object v0, p0, Layj$6;->a:Lcom/xiaopeng/musicradio/model/bluetooth/i;

    iget-wide v1, p0, Layj$6;->b:J

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/musicradio/model/bluetooth/i;->a(J)V

    return-void
.end method
