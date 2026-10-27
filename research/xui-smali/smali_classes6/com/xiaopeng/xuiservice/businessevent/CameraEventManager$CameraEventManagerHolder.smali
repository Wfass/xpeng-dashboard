.class Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager$CameraEventManagerHolder;
.super Ljava/lang/Object;
.source "CameraEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraEventManagerHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;-><init>(Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager$CameraEventManagerHolder;->sInstance:Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;
    .locals 1

    .line 43
    sget-object v0, Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager$CameraEventManagerHolder;->sInstance:Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;

    return-object v0
.end method
