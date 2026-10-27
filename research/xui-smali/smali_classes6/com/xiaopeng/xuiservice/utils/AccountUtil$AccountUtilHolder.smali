.class Lcom/xiaopeng/xuiservice/utils/AccountUtil$AccountUtilHolder;
.super Ljava/lang/Object;
.source "AccountUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/utils/AccountUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountUtilHolder"
.end annotation


# static fields
.field private static final instance:Lcom/xiaopeng/xuiservice/utils/AccountUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 104
    new-instance v0, Lcom/xiaopeng/xuiservice/utils/AccountUtil;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/utils/AccountUtil;-><init>(Lcom/xiaopeng/xuiservice/utils/AccountUtil$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/AccountUtil$AccountUtilHolder;->instance:Lcom/xiaopeng/xuiservice/utils/AccountUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()Lcom/xiaopeng/xuiservice/utils/AccountUtil;
    .locals 1

    .line 103
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/AccountUtil$AccountUtilHolder;->instance:Lcom/xiaopeng/xuiservice/utils/AccountUtil;

    return-object v0
.end method
