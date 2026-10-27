.class Lcom/xiaopeng/xuimanager/systemui/masklayer/MaskLayerManager$Holder;
.super Ljava/lang/Object;
.source "MaskLayerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/systemui/masklayer/MaskLayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/xuimanager/systemui/masklayer/MaskLayerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Lcom/xiaopeng/xuimanager/systemui/masklayer/MaskLayerManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/systemui/masklayer/MaskLayerManager;-><init>(Lcom/xiaopeng/xuimanager/systemui/masklayer/MaskLayerManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuimanager/systemui/masklayer/MaskLayerManager$Holder;->sInstance:Lcom/xiaopeng/xuimanager/systemui/masklayer/MaskLayerManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuimanager/systemui/masklayer/MaskLayerManager;
    .locals 1

    .line 48
    sget-object v0, Lcom/xiaopeng/xuimanager/systemui/masklayer/MaskLayerManager$Holder;->sInstance:Lcom/xiaopeng/xuimanager/systemui/masklayer/MaskLayerManager;

    return-object v0
.end method
