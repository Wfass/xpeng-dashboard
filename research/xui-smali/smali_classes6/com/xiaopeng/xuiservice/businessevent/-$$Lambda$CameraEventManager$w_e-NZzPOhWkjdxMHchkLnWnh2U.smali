.class public final synthetic Lcom/xiaopeng/xuiservice/businessevent/-$$Lambda$CameraEventManager$w_e-NZzPOhWkjdxMHchkLnWnh2U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuiservice/businessevent/-$$Lambda$CameraEventManager$w_e-NZzPOhWkjdxMHchkLnWnh2U;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuiservice/businessevent/-$$Lambda$CameraEventManager$w_e-NZzPOhWkjdxMHchkLnWnh2U;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/businessevent/-$$Lambda$CameraEventManager$w_e-NZzPOhWkjdxMHchkLnWnh2U;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/businessevent/-$$Lambda$CameraEventManager$w_e-NZzPOhWkjdxMHchkLnWnh2U;->INSTANCE:Lcom/xiaopeng/xuiservice/businessevent/-$$Lambda$CameraEventManager$w_e-NZzPOhWkjdxMHchkLnWnh2U;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;->lambda$init$1(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
