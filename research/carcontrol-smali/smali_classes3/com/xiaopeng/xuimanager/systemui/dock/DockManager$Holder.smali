.class Lcom/xiaopeng/xuimanager/systemui/dock/DockManager$Holder;
.super Ljava/lang/Object;
.source "DockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 344
    new-instance v0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;-><init>(Lcom/xiaopeng/xuimanager/systemui/dock/DockManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager$Holder;->sInstance:Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;
    .locals 1

    .line 343
    sget-object v0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager$Holder;->sInstance:Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;

    return-object v0
.end method
