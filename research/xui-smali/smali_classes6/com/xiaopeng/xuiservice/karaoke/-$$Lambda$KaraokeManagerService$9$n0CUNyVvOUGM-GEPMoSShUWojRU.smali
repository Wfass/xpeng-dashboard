.class public final synthetic Lcom/xiaopeng/xuiservice/karaoke/-$$Lambda$KaraokeManagerService$9$n0CUNyVvOUGM-GEPMoSShUWojRU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$9;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:I

.field private final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$9;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/karaoke/-$$Lambda$KaraokeManagerService$9$n0CUNyVvOUGM-GEPMoSShUWojRU;->f$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$9;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/karaoke/-$$Lambda$KaraokeManagerService$9$n0CUNyVvOUGM-GEPMoSShUWojRU;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/xiaopeng/xuiservice/karaoke/-$$Lambda$KaraokeManagerService$9$n0CUNyVvOUGM-GEPMoSShUWojRU;->f$2:I

    iput p4, p0, Lcom/xiaopeng/xuiservice/karaoke/-$$Lambda$KaraokeManagerService$9$n0CUNyVvOUGM-GEPMoSShUWojRU;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/-$$Lambda$KaraokeManagerService$9$n0CUNyVvOUGM-GEPMoSShUWojRU;->f$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$9;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/-$$Lambda$KaraokeManagerService$9$n0CUNyVvOUGM-GEPMoSShUWojRU;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/xiaopeng/xuiservice/karaoke/-$$Lambda$KaraokeManagerService$9$n0CUNyVvOUGM-GEPMoSShUWojRU;->f$2:I

    iget v3, p0, Lcom/xiaopeng/xuiservice/karaoke/-$$Lambda$KaraokeManagerService$9$n0CUNyVvOUGM-GEPMoSShUWojRU;->f$3:I

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$9;->lambda$onNewAudioStart$0(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$9;Ljava/lang/String;II)V

    return-void
.end method
