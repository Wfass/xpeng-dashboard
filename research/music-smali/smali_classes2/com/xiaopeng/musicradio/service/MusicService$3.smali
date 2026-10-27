.class Lcom/xiaopeng/musicradio/service/MusicService$3;
.super Ljava/lang/Object;
.source "MusicService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/service/MusicService;->clearUserData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/service/MusicService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/service/MusicService;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/xiaopeng/musicradio/service/MusicService$3;->a:Lcom/xiaopeng/musicradio/service/MusicService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 365
    invoke-static {}, Layr;->a()Layr;

    move-result-object v0

    invoke-virtual {v0}, Layr;->b()Layq;

    move-result-object v0

    invoke-virtual {v0}, Layq;->k()V

    return-void
.end method
