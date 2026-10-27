.class Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$InstanceHolder;
.super Ljava/lang/Object;
.source "XpSpeechTtsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final sService:Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 79
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$InstanceHolder;->sService:Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;
    .locals 1

    .line 78
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$InstanceHolder;->sService:Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    return-object v0
.end method
