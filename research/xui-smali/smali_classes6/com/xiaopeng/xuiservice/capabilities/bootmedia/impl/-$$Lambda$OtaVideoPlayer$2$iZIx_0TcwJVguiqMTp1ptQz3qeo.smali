.class public final synthetic Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$2$iZIx_0TcwJVguiqMTp1ptQz3qeo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$2;

.field private final synthetic f$1:Landroid/view/SurfaceHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$2;Landroid/view/SurfaceHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$2$iZIx_0TcwJVguiqMTp1ptQz3qeo;->f$0:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$2;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$2$iZIx_0TcwJVguiqMTp1ptQz3qeo;->f$1:Landroid/view/SurfaceHolder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$2$iZIx_0TcwJVguiqMTp1ptQz3qeo;->f$0:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$2;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$2$iZIx_0TcwJVguiqMTp1ptQz3qeo;->f$1:Landroid/view/SurfaceHolder;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$2;->lambda$surfaceCreated$0(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$2;Landroid/view/SurfaceHolder;)V

    return-void
.end method
