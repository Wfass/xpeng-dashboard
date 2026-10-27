.class Lcom/xiaopeng/xuiservice/utils/SysUtils$Holder;
.super Ljava/lang/Object;
.source "SysUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/utils/SysUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/xuiservice/utils/SysUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lcom/xiaopeng/xuiservice/utils/SysUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/utils/SysUtils;-><init>(Lcom/xiaopeng/xuiservice/utils/SysUtils$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/SysUtils$Holder;->INSTANCE:Lcom/xiaopeng/xuiservice/utils/SysUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuiservice/utils/SysUtils;
    .locals 1

    .line 16
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/SysUtils$Holder;->INSTANCE:Lcom/xiaopeng/xuiservice/utils/SysUtils;

    return-object v0
.end method
