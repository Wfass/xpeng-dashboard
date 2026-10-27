.class public final synthetic Lcom/xiaopeng/xuiservice/theme/-$$Lambda$KLmmAK0zQXScgrrzC8_w5phij4c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuiservice/theme/-$$Lambda$KLmmAK0zQXScgrrzC8_w5phij4c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$KLmmAK0zQXScgrrzC8_w5phij4c;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$KLmmAK0zQXScgrrzC8_w5phij4c;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$KLmmAK0zQXScgrrzC8_w5phij4c;->INSTANCE:Lcom/xiaopeng/xuiservice/theme/-$$Lambda$KLmmAK0zQXScgrrzC8_w5phij4c;

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

    invoke-static {}, Lcom/xiaopeng/xuiservice/theme/Themes;->loadSelectedTheme()V

    return-void
.end method
