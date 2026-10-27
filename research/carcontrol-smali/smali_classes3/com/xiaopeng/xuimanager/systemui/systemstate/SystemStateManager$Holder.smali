.class Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager$Holder;
.super Ljava/lang/Object;
.source "SystemStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 213
    new-instance v0, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;-><init>(Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager$Holder;->sInstance:Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$500()Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;
    .locals 1

    .line 212
    sget-object v0, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager$Holder;->sInstance:Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;

    return-object v0
.end method
