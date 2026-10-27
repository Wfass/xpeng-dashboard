.class public final synthetic Lcom/xiaopeng/carcontrol/-$$Lambda$CapsuleMusicService$Lwn7m2sxJN6r2JdfVOudteWg4Rg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/carcontrol/-$$Lambda$CapsuleMusicService$Lwn7m2sxJN6r2JdfVOudteWg4Rg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/carcontrol/-$$Lambda$CapsuleMusicService$Lwn7m2sxJN6r2JdfVOudteWg4Rg;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/-$$Lambda$CapsuleMusicService$Lwn7m2sxJN6r2JdfVOudteWg4Rg;-><init>()V

    sput-object v0, Lcom/xiaopeng/carcontrol/-$$Lambda$CapsuleMusicService$Lwn7m2sxJN6r2JdfVOudteWg4Rg;->INSTANCE:Lcom/xiaopeng/carcontrol/-$$Lambda$CapsuleMusicService$Lwn7m2sxJN6r2JdfVOudteWg4Rg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->lambda$initAlarmPlayer$4(Landroid/media/MediaPlayer;II)Z

    move-result p1

    return p1
.end method
