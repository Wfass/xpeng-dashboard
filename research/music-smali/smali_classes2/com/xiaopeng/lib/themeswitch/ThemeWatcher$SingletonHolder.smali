.class Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$SingletonHolder;
.super Ljava/lang/Object;
.source "ThemeWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field static sInstance:Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 87
    new-instance v0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;-><init>(Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$1;)V

    sput-object v0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$SingletonHolder;->sInstance:Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
