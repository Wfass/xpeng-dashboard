.class Lcom/xiaopeng/xuiservice/operation/CommonResourceService$SingletonHolder;
.super Ljava/lang/Object;
.source "CommonResourceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/operation/CommonResourceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field static INSTANCE:Lcom/xiaopeng/xuiservice/operation/CommonResourceService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/CommonResourceService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/operation/CommonResourceService;-><init>(Lcom/xiaopeng/xuiservice/operation/CommonResourceService$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/operation/CommonResourceService$SingletonHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/operation/CommonResourceService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
