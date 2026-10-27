.class Lcom/xiaopeng/commonfunc/utils/MemoryUtil$SingleInstance;
.super Ljava/lang/Object;
.source "MemoryUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/commonfunc/utils/MemoryUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleInstance"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/commonfunc/utils/MemoryUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 177
    new-instance v0, Lcom/xiaopeng/commonfunc/utils/MemoryUtil;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/commonfunc/utils/MemoryUtil;-><init>(Lcom/xiaopeng/commonfunc/utils/MemoryUtil$1;)V

    sput-object v0, Lcom/xiaopeng/commonfunc/utils/MemoryUtil$SingleInstance;->INSTANCE:Lcom/xiaopeng/commonfunc/utils/MemoryUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/commonfunc/utils/MemoryUtil;
    .locals 1

    .line 176
    sget-object v0, Lcom/xiaopeng/commonfunc/utils/MemoryUtil$SingleInstance;->INSTANCE:Lcom/xiaopeng/commonfunc/utils/MemoryUtil;

    return-object v0
.end method
