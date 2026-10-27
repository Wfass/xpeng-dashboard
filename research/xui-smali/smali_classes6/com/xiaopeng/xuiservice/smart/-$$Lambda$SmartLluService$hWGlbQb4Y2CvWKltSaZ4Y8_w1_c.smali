.class public final synthetic Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartLluService$hWGlbQb4Y2CvWKltSaZ4Y8_w1_c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartLluService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartLluService$hWGlbQb4Y2CvWKltSaZ4Y8_w1_c;->f$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartLluService$hWGlbQb4Y2CvWKltSaZ4Y8_w1_c;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartLluService$hWGlbQb4Y2CvWKltSaZ4Y8_w1_c;->f$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartLluService$hWGlbQb4Y2CvWKltSaZ4Y8_w1_c;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->lambda$preloadAndPlay$1(Lcom/xiaopeng/xuiservice/smart/SmartLluService;Ljava/lang/String;Landroid/media/MediaPlayer;)V

    return-void
.end method
