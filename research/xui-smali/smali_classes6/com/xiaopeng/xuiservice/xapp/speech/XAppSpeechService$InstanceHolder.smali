.class Lcom/xiaopeng/xuiservice/xapp/speech/XAppSpeechService$InstanceHolder;
.super Ljava/lang/Object;
.source "XAppSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/speech/XAppSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final sService:Lcom/xiaopeng/xuiservice/xapp/speech/XAppSpeechService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/speech/XAppSpeechService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/speech/XAppSpeechService;-><init>(Lcom/xiaopeng/xuiservice/xapp/speech/XAppSpeechService$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/speech/XAppSpeechService$InstanceHolder;->sService:Lcom/xiaopeng/xuiservice/xapp/speech/XAppSpeechService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/xuiservice/xapp/speech/XAppSpeechService;
    .locals 1

    .line 27
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/speech/XAppSpeechService$InstanceHolder;->sService:Lcom/xiaopeng/xuiservice/xapp/speech/XAppSpeechService;

    return-object v0
.end method
