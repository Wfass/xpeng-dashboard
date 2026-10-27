.class Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl$InstanceHolder;
.super Ljava/lang/Object;
.source "MusicRecognizeEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final sService:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 71
    new-instance v0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;-><init>(Landroid/content/Context;ILcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl$InstanceHolder;->sService:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;
    .locals 1

    .line 70
    sget-object v0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl$InstanceHolder;->sService:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;

    return-object v0
.end method
