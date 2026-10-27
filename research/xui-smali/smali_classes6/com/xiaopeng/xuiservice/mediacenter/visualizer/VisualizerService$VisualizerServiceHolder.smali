.class Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$VisualizerServiceHolder;
.super Ljava/lang/Object;
.source "VisualizerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisualizerServiceHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$VisualizerServiceHolder;->sInstance:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;
    .locals 1

    .line 43
    sget-object v0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$VisualizerServiceHolder;->sInstance:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    return-object v0
.end method
