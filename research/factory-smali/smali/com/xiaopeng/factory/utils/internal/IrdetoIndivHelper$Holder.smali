.class final Lcom/xiaopeng/factory/utils/internal/IrdetoIndivHelper$Holder;
.super Ljava/lang/Object;
.source "IrdetoIndivHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/factory/utils/internal/IrdetoIndivHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/factory/utils/internal/IrdetoIndivHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 202
    new-instance v0, Lcom/xiaopeng/factory/utils/internal/IrdetoIndivHelper;

    invoke-direct {v0}, Lcom/xiaopeng/factory/utils/internal/IrdetoIndivHelper;-><init>()V

    sput-object v0, Lcom/xiaopeng/factory/utils/internal/IrdetoIndivHelper$Holder;->INSTANCE:Lcom/xiaopeng/factory/utils/internal/IrdetoIndivHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/factory/utils/internal/IrdetoIndivHelper;
    .locals 1

    .line 201
    sget-object v0, Lcom/xiaopeng/factory/utils/internal/IrdetoIndivHelper$Holder;->INSTANCE:Lcom/xiaopeng/factory/utils/internal/IrdetoIndivHelper;

    return-object v0
.end method
