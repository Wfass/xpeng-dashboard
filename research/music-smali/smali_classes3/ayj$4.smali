.class Layj$4;
.super Ljava/lang/Object;
.source "PlaybackViewModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layj;->a(ILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/bluetooth/h;

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Layj;


# direct methods
.method constructor <init>(Layj;Lcom/xiaopeng/musicradio/model/bluetooth/h;IZ)V
    .locals 0

    .line 471
    iput-object p1, p0, Layj$4;->d:Layj;

    iput-object p2, p0, Layj$4;->a:Lcom/xiaopeng/musicradio/model/bluetooth/h;

    iput p3, p0, Layj$4;->b:I

    iput-boolean p4, p0, Layj$4;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 474
    iget-object v0, p0, Layj$4;->a:Lcom/xiaopeng/musicradio/model/bluetooth/h;

    iget v1, p0, Layj$4;->b:I

    iget-boolean v2, p0, Layj$4;->c:Z

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/musicradio/model/bluetooth/h;->a(IZ)V

    return-void
.end method
