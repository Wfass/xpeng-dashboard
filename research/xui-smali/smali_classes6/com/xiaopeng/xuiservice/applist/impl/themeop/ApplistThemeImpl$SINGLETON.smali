.class final Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl$SINGLETON;
.super Ljava/lang/Object;
.source "ApplistThemeImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SINGLETON"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl;-><init>(Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl$SINGLETON;->INSTANCE:Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl;
    .locals 1

    .line 49
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl$SINGLETON;->INSTANCE:Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl;

    return-object v0
.end method
