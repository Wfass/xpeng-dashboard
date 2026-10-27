.class public final synthetic Lcom/xiaopeng/xuiservice/theme/handler/-$$Lambda$ThemeResourceHandler$onkZqel6x-cKRH21KuM47w_knsk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;

.field private final synthetic f$1:Lcom/xiaopeng/xuimanager/theme/Theme;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/theme/handler/-$$Lambda$ThemeResourceHandler$onkZqel6x-cKRH21KuM47w_knsk;->f$0:Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/theme/handler/-$$Lambda$ThemeResourceHandler$onkZqel6x-cKRH21KuM47w_knsk;->f$1:Lcom/xiaopeng/xuimanager/theme/Theme;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/handler/-$$Lambda$ThemeResourceHandler$onkZqel6x-cKRH21KuM47w_knsk;->f$0:Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/theme/handler/-$$Lambda$ThemeResourceHandler$onkZqel6x-cKRH21KuM47w_knsk;->f$1:Lcom/xiaopeng/xuimanager/theme/Theme;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;->lambda$onThemeUpdated$2(Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;Lcom/xiaopeng/xuimanager/theme/Theme;)V

    return-void
.end method
