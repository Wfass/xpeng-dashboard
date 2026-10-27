.class Lcom/xiaopeng/xuiservice/theme/ThemeLocalService$SingleInstanceHolder;
.super Ljava/lang/Object;
.source "ThemeLocalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleInstanceHolder"
.end annotation


# static fields
.field static INSTANCE:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;-><init>(Lcom/xiaopeng/xuiservice/theme/ThemeLocalService$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService$SingleInstanceHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
