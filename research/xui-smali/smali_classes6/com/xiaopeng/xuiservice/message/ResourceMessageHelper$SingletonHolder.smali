.class Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper$SingletonHolder;
.super Ljava/lang/Object;
.source "ResourceMessageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 67
    new-instance v0, Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper;-><init>(Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper$SingletonHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper;
    .locals 1

    .line 66
    sget-object v0, Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper$SingletonHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper;

    return-object v0
.end method
