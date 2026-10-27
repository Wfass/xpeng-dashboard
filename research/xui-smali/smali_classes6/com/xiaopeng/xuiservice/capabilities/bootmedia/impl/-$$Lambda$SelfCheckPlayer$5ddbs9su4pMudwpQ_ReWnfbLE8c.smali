.class public final synthetic Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$SelfCheckPlayer$5ddbs9su4pMudwpQ_ReWnfbLE8c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$SelfCheckPlayer$5ddbs9su4pMudwpQ_ReWnfbLE8c;->f$0:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$SelfCheckPlayer$5ddbs9su4pMudwpQ_ReWnfbLE8c;->f$0:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;

    invoke-static {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->lambda$createAndPrepareMediaPlayer$3(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;Landroid/media/MediaPlayer;II)Z

    move-result p1

    return p1
.end method
