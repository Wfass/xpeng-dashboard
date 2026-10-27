.class Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil$SharedPreferencesUtilHolder;
.super Ljava/lang/Object;
.source "SharedPreferencesUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SharedPreferencesUtilHolder"
.end annotation


# static fields
.field private static sInstance:Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;-><init>(Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil$SharedPreferencesUtilHolder;->sInstance:Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;
    .locals 1

    .line 32
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil$SharedPreferencesUtilHolder;->sInstance:Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;

    return-object v0
.end method
