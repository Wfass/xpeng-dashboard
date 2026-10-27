.class Lcom/xiaopeng/xuiservice/smart/NotificationHelper$InstanceHolder;
.super Ljava/lang/Object;
.source "NotificationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/NotificationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/xuiservice/smart/NotificationHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 130
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/NotificationHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/smart/NotificationHelper;-><init>(Lcom/xiaopeng/xuiservice/smart/NotificationHelper$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/NotificationHelper$InstanceHolder;->sInstance:Lcom/xiaopeng/xuiservice/smart/NotificationHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/xuiservice/smart/NotificationHelper;
    .locals 1

    .line 129
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/NotificationHelper$InstanceHolder;->sInstance:Lcom/xiaopeng/xuiservice/smart/NotificationHelper;

    return-object v0
.end method
