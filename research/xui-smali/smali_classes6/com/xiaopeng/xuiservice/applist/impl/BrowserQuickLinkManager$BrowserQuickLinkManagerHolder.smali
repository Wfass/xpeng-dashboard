.class Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager$BrowserQuickLinkManagerHolder;
.super Ljava/lang/Object;
.source "BrowserQuickLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BrowserQuickLinkManagerHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 84
    new-instance v0, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;-><init>(Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager$BrowserQuickLinkManagerHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;
    .locals 1

    .line 83
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager$BrowserQuickLinkManagerHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;

    return-object v0
.end method
