.class public final synthetic Lcom/xiaopeng/xuiservice/theme/-$$Lambda$sgYpkfFePzBG5jzvn09aIugJUkk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuiservice/theme/-$$Lambda$sgYpkfFePzBG5jzvn09aIugJUkk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$sgYpkfFePzBG5jzvn09aIugJUkk;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$sgYpkfFePzBG5jzvn09aIugJUkk;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$sgYpkfFePzBG5jzvn09aIugJUkk;->INSTANCE:Lcom/xiaopeng/xuiservice/theme/-$$Lambda$sgYpkfFePzBG5jzvn09aIugJUkk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/theme/Themes;->resourceInfoToTheme(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object p1

    return-object p1
.end method
