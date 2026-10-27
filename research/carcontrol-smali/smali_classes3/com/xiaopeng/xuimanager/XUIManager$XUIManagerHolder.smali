.class Lcom/xiaopeng/xuimanager/XUIManager$XUIManagerHolder;
.super Ljava/lang/Object;
.source "XUIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/XUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XUIManagerHolder"
.end annotation


# static fields
.field private static final instance:Lcom/xiaopeng/xuimanager/XUIManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 534
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/XUIManager;-><init>(Lcom/xiaopeng/xuimanager/XUIManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuimanager/XUIManager$XUIManagerHolder;->instance:Lcom/xiaopeng/xuimanager/XUIManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1500()Lcom/xiaopeng/xuimanager/XUIManager;
    .locals 1

    .line 533
    sget-object v0, Lcom/xiaopeng/xuimanager/XUIManager$XUIManagerHolder;->instance:Lcom/xiaopeng/xuimanager/XUIManager;

    return-object v0
.end method
