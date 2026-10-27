.class Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalServiceHolder;
.super Ljava/lang/Object;
.source "MediaCenterHalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaCenterHalServiceHolder"
.end annotation


# static fields
.field private static final instance:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 77
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    .line 78
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;-><init>(Landroid/content/Context;Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalServiceHolder;->instance:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    .line 77
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;
    .locals 1

    .line 76
    sget-object v0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalServiceHolder;->instance:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    return-object v0
.end method
