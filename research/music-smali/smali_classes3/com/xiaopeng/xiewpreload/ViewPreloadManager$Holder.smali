.class Lcom/xiaopeng/xiewpreload/ViewPreloadManager$Holder;
.super Ljava/lang/Object;
.source "ViewPreloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xiewpreload/ViewPreloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/xiewpreload/ViewPreloadManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 112
    new-instance v0, Lcom/xiaopeng/xiewpreload/ViewPreloadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xiewpreload/ViewPreloadManager;-><init>(Lcom/xiaopeng/xiewpreload/ViewPreloadManager$1;)V

    sput-object v0, Lcom/xiaopeng/xiewpreload/ViewPreloadManager$Holder;->INSTANCE:Lcom/xiaopeng/xiewpreload/ViewPreloadManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/xiewpreload/ViewPreloadManager;
    .locals 1

    .line 111
    sget-object v0, Lcom/xiaopeng/xiewpreload/ViewPreloadManager$Holder;->INSTANCE:Lcom/xiaopeng/xiewpreload/ViewPreloadManager;

    return-object v0
.end method
