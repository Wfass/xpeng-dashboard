.class Lcom/xiaopeng/xuimanager/download/XPDownloadManager$SINGLETON;
.super Ljava/lang/Object;
.source "XPDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/download/XPDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SINGLETON"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/xuimanager/download/XPDownloadManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;-><init>(Lcom/xiaopeng/xuimanager/download/XPDownloadManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuimanager/download/XPDownloadManager$SINGLETON;->INSTANCE:Lcom/xiaopeng/xuimanager/download/XPDownloadManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuimanager/download/XPDownloadManager;
    .locals 1

    .line 43
    sget-object v0, Lcom/xiaopeng/xuimanager/download/XPDownloadManager$SINGLETON;->INSTANCE:Lcom/xiaopeng/xuimanager/download/XPDownloadManager;

    return-object v0
.end method
