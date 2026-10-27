.class public final synthetic Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$c_8Mifmo-GVgwB6IUF_kZ5vX_9g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$AppIconFetchedCallback;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$c_8Mifmo-GVgwB6IUF_kZ5vX_9g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$c_8Mifmo-GVgwB6IUF_kZ5vX_9g;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$c_8Mifmo-GVgwB6IUF_kZ5vX_9g;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$c_8Mifmo-GVgwB6IUF_kZ5vX_9g;->INSTANCE:Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$c_8Mifmo-GVgwB6IUF_kZ5vX_9g;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAppIconReady(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->lambda$handlePreLoadApp$4(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;Landroid/graphics/Bitmap;)V

    return-void
.end method
