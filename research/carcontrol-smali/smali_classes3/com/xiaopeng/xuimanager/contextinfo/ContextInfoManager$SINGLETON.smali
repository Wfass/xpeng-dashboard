.class Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$SINGLETON;
.super Ljava/lang/Object;
.source "ContextInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SINGLETON"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 102
    new-instance v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;-><init>(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$SINGLETON;->INSTANCE:Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;
    .locals 1

    .line 101
    sget-object v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$SINGLETON;->INSTANCE:Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    return-object v0
.end method
