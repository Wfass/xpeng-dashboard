.class Lcom/xiaopeng/xuiservice/xapp/XAppHalService$XAppHalServiceHolder;
.super Ljava/lang/Object;
.source "XAppHalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/XAppHalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XAppHalServiceHolder"
.end annotation


# static fields
.field public static final sInstance:Lcom/xiaopeng/xuiservice/xapp/XAppHalService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;-><init>(Lcom/xiaopeng/xuiservice/xapp/XAppHalService$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/XAppHalService$XAppHalServiceHolder;->sInstance:Lcom/xiaopeng/xuiservice/xapp/XAppHalService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
