.class public final synthetic Lcom/xiaopeng/carcontrol/-$$Lambda$CapsuleMusicService$tw5EBxoiZYfTG1MtyLBlTLYghi0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/carcontrol/-$$Lambda$CapsuleMusicService$tw5EBxoiZYfTG1MtyLBlTLYghi0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/carcontrol/-$$Lambda$CapsuleMusicService$tw5EBxoiZYfTG1MtyLBlTLYghi0;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/-$$Lambda$CapsuleMusicService$tw5EBxoiZYfTG1MtyLBlTLYghi0;-><init>()V

    sput-object v0, Lcom/xiaopeng/carcontrol/-$$Lambda$CapsuleMusicService$tw5EBxoiZYfTG1MtyLBlTLYghi0;->INSTANCE:Lcom/xiaopeng/carcontrol/-$$Lambda$CapsuleMusicService$tw5EBxoiZYfTG1MtyLBlTLYghi0;

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

    invoke-static {p1, p2, p3}, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->lambda$initMediaPlayer$1(Landroid/media/MediaPlayer;II)Z

    move-result p1

    return p1
.end method
