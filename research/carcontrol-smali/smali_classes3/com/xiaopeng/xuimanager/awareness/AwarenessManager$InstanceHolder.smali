.class Lcom/xiaopeng/xuimanager/awareness/AwarenessManager$InstanceHolder;
.super Ljava/lang/Object;
.source "AwarenessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 100
    new-instance v0, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;-><init>(Lcom/xiaopeng/xuimanager/awareness/AwarenessManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager$InstanceHolder;->INSTANCE:Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;
    .locals 1

    .line 99
    sget-object v0, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager$InstanceHolder;->INSTANCE:Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;

    return-object v0
.end method
