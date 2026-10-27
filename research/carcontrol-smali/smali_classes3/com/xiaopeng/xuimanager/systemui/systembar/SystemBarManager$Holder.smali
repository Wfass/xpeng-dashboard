.class Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager$Holder;
.super Ljava/lang/Object;
.source "SystemBarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 252
    new-instance v0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;-><init>(Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager$Holder;->sInstance:Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$600()Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;
    .locals 1

    .line 251
    sget-object v0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager$Holder;->sInstance:Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;

    return-object v0
.end method
