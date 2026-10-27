.class public final synthetic Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$sF4C4ygpAN9YDaBDl_rG3dgao_w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;

.field private final synthetic f$1:Landroid/media/MediaPlayer;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$sF4C4ygpAN9YDaBDl_rG3dgao_w;->f$0:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$sF4C4ygpAN9YDaBDl_rG3dgao_w;->f$1:Landroid/media/MediaPlayer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$sF4C4ygpAN9YDaBDl_rG3dgao_w;->f$0:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$sF4C4ygpAN9YDaBDl_rG3dgao_w;->f$1:Landroid/media/MediaPlayer;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->lambda$prepareMediaPlay$7(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;Landroid/media/MediaPlayer;)V

    return-void
.end method
