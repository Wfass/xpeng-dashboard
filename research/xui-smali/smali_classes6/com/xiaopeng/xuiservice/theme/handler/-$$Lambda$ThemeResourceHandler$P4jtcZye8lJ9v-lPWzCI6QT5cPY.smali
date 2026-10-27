.class public final synthetic Lcom/xiaopeng/xuiservice/theme/handler/-$$Lambda$ThemeResourceHandler$P4jtcZye8lJ9v-lPWzCI6QT5cPY;
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

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/theme/handler/-$$Lambda$ThemeResourceHandler$P4jtcZye8lJ9v-lPWzCI6QT5cPY;->f$0:Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/theme/handler/-$$Lambda$ThemeResourceHandler$P4jtcZye8lJ9v-lPWzCI6QT5cPY;->f$1:Lcom/xiaopeng/xuimanager/theme/Theme;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/handler/-$$Lambda$ThemeResourceHandler$P4jtcZye8lJ9v-lPWzCI6QT5cPY;->f$0:Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/theme/handler/-$$Lambda$ThemeResourceHandler$P4jtcZye8lJ9v-lPWzCI6QT5cPY;->f$1:Lcom/xiaopeng/xuimanager/theme/Theme;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;->lambda$onThemeSelected$3(Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;Lcom/xiaopeng/xuimanager/theme/Theme;)V

    return-void
.end method
