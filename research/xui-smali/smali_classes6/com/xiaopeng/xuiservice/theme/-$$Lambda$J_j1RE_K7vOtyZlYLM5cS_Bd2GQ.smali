.class public final synthetic Lcom/xiaopeng/xuiservice/theme/-$$Lambda$J_j1RE_K7vOtyZlYLM5cS_Bd2GQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuiservice/theme/-$$Lambda$J_j1RE_K7vOtyZlYLM5cS_Bd2GQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$J_j1RE_K7vOtyZlYLM5cS_Bd2GQ;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$J_j1RE_K7vOtyZlYLM5cS_Bd2GQ;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$J_j1RE_K7vOtyZlYLM5cS_Bd2GQ;->INSTANCE:Lcom/xiaopeng/xuiservice/theme/-$$Lambda$J_j1RE_K7vOtyZlYLM5cS_Bd2GQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/xiaopeng/xuiservice/theme/Themes;->loadThemes()V

    return-void
.end method
