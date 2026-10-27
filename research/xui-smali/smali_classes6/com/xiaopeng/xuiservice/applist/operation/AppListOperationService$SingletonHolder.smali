.class Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService$SingletonHolder;
.super Ljava/lang/Object;
.source "AppListOperationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field static final INSTANCE:Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;-><init>(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService$SingletonHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
