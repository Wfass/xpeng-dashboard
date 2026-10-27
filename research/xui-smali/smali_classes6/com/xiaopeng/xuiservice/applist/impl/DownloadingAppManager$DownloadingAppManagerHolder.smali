.class Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager$DownloadingAppManagerHolder;
.super Ljava/lang/Object;
.source "DownloadingAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadingAppManagerHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;-><init>(Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager$DownloadingAppManagerHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;
    .locals 1

    .line 44
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager$DownloadingAppManagerHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;

    return-object v0
.end method
