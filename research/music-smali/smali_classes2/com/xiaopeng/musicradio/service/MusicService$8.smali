.class Lcom/xiaopeng/musicradio/service/MusicService$8;
.super Ljava/lang/Object;
.source "MusicService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/service/MusicService;->a(Landroidx/lifecycle/r;Landroidx/lifecycle/s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/lifecycle/r;

.field final synthetic b:Landroidx/lifecycle/s;

.field final synthetic c:Lcom/xiaopeng/musicradio/service/MusicService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/service/MusicService;Landroidx/lifecycle/r;Landroidx/lifecycle/s;)V
    .locals 0

    .line 590
    iput-object p1, p0, Lcom/xiaopeng/musicradio/service/MusicService$8;->c:Lcom/xiaopeng/musicradio/service/MusicService;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/service/MusicService$8;->a:Landroidx/lifecycle/r;

    iput-object p3, p0, Lcom/xiaopeng/musicradio/service/MusicService$8;->b:Landroidx/lifecycle/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 593
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/MusicService$8;->a:Landroidx/lifecycle/r;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/service/MusicService$8;->b:Landroidx/lifecycle/s;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/r;->b(Landroidx/lifecycle/s;)V

    return-void
.end method
