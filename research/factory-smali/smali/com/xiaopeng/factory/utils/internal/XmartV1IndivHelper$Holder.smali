.class final Lcom/xiaopeng/factory/utils/internal/XmartV1IndivHelper$Holder;
.super Ljava/lang/Object;
.source "XmartV1IndivHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/factory/utils/internal/XmartV1IndivHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/factory/utils/internal/XmartV1IndivHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 134
    new-instance v0, Lcom/xiaopeng/factory/utils/internal/XmartV1IndivHelper;

    invoke-direct {v0}, Lcom/xiaopeng/factory/utils/internal/XmartV1IndivHelper;-><init>()V

    sput-object v0, Lcom/xiaopeng/factory/utils/internal/XmartV1IndivHelper$Holder;->INSTANCE:Lcom/xiaopeng/factory/utils/internal/XmartV1IndivHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/factory/utils/internal/XmartV1IndivHelper;
    .locals 1

    .line 133
    sget-object v0, Lcom/xiaopeng/factory/utils/internal/XmartV1IndivHelper$Holder;->INSTANCE:Lcom/xiaopeng/factory/utils/internal/XmartV1IndivHelper;

    return-object v0
.end method
