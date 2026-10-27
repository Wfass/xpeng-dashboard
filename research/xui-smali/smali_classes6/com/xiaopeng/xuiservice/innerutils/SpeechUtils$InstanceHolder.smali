.class Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils$InstanceHolder;
.super Ljava/lang/Object;
.source "SpeechUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final sService:Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 75
    new-instance v0, Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils$InstanceHolder;->sService:Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils;
    .locals 1

    .line 74
    sget-object v0, Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils$InstanceHolder;->sService:Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils;

    return-object v0
.end method
