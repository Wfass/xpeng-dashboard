.class Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$VisualizerServiceHolder;
.super Ljava/lang/Object;
.source "LegacyVisualizerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisualizerServiceHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$VisualizerServiceHolder;->sInstance:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;
    .locals 1

    .line 60
    sget-object v0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$VisualizerServiceHolder;->sInstance:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;

    return-object v0
.end method
