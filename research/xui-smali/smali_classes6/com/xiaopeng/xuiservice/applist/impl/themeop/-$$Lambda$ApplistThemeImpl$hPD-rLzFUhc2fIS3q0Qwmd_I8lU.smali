.class public final synthetic Lcom/xiaopeng/xuiservice/applist/impl/themeop/-$$Lambda$ApplistThemeImpl$hPD-rLzFUhc2fIS3q0Qwmd_I8lU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuimanager/theme/Theme;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/impl/themeop/-$$Lambda$ApplistThemeImpl$hPD-rLzFUhc2fIS3q0Qwmd_I8lU;->f$0:Lcom/xiaopeng/xuimanager/theme/Theme;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/themeop/-$$Lambda$ApplistThemeImpl$hPD-rLzFUhc2fIS3q0Qwmd_I8lU;->f$0:Lcom/xiaopeng/xuimanager/theme/Theme;

    check-cast p1, Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl$ApplistThemeListener;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl;->lambda$doOnThemeDeleted$2(Lcom/xiaopeng/xuimanager/theme/Theme;Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl$ApplistThemeListener;)V

    return-void
.end method
