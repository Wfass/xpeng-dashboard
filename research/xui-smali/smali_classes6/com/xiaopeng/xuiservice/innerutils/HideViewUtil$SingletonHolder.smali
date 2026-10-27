.class Lcom/xiaopeng/xuiservice/innerutils/HideViewUtil$SingletonHolder;
.super Ljava/lang/Object;
.source "HideViewUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/innerutils/HideViewUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/xuiservice/innerutils/HideViewUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 83
    new-instance v0, Lcom/xiaopeng/xuiservice/innerutils/HideViewUtil;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/innerutils/HideViewUtil;-><init>(Lcom/xiaopeng/xuiservice/innerutils/HideViewUtil$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/innerutils/HideViewUtil$SingletonHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/innerutils/HideViewUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuiservice/innerutils/HideViewUtil;
    .locals 1

    .line 82
    sget-object v0, Lcom/xiaopeng/xuiservice/innerutils/HideViewUtil$SingletonHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/innerutils/HideViewUtil;

    return-object v0
.end method
