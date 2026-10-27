.class Lcom/xiaopeng/musicradio/service/MusicService$4;
.super Ljava/lang/Object;
.source "MusicService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/service/MusicService;->clearUserData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/service/MusicService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/service/MusicService;I)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/xiaopeng/musicradio/service/MusicService$4;->b:Lcom/xiaopeng/musicradio/service/MusicService;

    iput p2, p0, Lcom/xiaopeng/musicradio/service/MusicService$4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 383
    invoke-static {}, Layr;->a()Layr;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/service/MusicService$4;->a:I

    invoke-virtual {v0, v1}, Layr;->a(I)Layq;

    move-result-object v0

    invoke-virtual {v0}, Layq;->k()V

    return-void
.end method
