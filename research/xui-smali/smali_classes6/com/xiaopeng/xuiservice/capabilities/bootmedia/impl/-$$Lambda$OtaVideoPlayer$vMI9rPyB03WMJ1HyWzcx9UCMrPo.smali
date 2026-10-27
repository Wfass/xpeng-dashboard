.class public final synthetic Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$vMI9rPyB03WMJ1HyWzcx9UCMrPo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$vMI9rPyB03WMJ1HyWzcx9UCMrPo;->f$0:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$vMI9rPyB03WMJ1HyWzcx9UCMrPo;->f$0:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;

    invoke-static {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->lambda$prepareMediaPlay$4(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;Landroid/media/MediaPlayer;II)Z

    move-result p1

    return p1
.end method
