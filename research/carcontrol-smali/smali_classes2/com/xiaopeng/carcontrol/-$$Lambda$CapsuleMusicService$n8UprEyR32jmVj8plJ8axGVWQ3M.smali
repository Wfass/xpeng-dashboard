.class public final synthetic Lcom/xiaopeng/carcontrol/-$$Lambda$CapsuleMusicService$n8UprEyR32jmVj8plJ8axGVWQ3M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/CapsuleMusicService;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/CapsuleMusicService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/-$$Lambda$CapsuleMusicService$n8UprEyR32jmVj8plJ8axGVWQ3M;->f$0:Lcom/xiaopeng/carcontrol/CapsuleMusicService;

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/-$$Lambda$CapsuleMusicService$n8UprEyR32jmVj8plJ8axGVWQ3M;->f$0:Lcom/xiaopeng/carcontrol/CapsuleMusicService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->lambda$initMediaPlayer$2$CapsuleMusicService(Landroid/media/MediaPlayer;)V

    return-void
.end method
