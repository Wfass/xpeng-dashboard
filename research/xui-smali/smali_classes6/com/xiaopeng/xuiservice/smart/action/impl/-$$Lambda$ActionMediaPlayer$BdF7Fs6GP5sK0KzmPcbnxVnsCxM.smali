.class public final synthetic Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionMediaPlayer$BdF7Fs6GP5sK0KzmPcbnxVnsCxM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionMediaPlayer$BdF7Fs6GP5sK0KzmPcbnxVnsCxM;->f$0:Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionMediaPlayer$BdF7Fs6GP5sK0KzmPcbnxVnsCxM;->f$0:Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;

    invoke-static {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->lambda$initMediaPlayer$2(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;Landroid/media/MediaPlayer;II)Z

    move-result p1

    return p1
.end method
