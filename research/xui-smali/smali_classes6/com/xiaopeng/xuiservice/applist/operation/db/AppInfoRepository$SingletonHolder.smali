.class final Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository$SingletonHolder;
.super Ljava/lang/Object;
.source "AppInfoRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingletonHolder"
.end annotation


# static fields
.field private static INSTANCE:Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository;

    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->getInstance()Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository;-><init>(Landroid/content/Context;Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository$SingletonHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository;
    .locals 1

    .line 15
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository$SingletonHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository;

    return-object v0
.end method
