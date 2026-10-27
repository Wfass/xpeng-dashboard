.class Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager$AppStoreEventManagerHolder;
.super Ljava/lang/Object;
.source "AppStoreEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppStoreEventManagerHolder"
.end annotation


# static fields
.field private static final instance:Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager;-><init>(Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager$AppStoreEventManagerHolder;->instance:Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager;
    .locals 1

    .line 40
    sget-object v0, Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager$AppStoreEventManagerHolder;->instance:Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager;

    return-object v0
.end method
