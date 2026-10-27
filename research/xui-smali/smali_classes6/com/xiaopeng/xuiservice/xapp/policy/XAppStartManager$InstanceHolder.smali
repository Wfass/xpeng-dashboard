.class Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$InstanceHolder;
.super Ljava/lang/Object;
.source "XAppStartManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final sService:Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 748
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;

    .line 749
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;-><init>(Landroid/content/Context;Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$InstanceHolder;->sService:Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;

    .line 748
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;
    .locals 1

    .line 747
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$InstanceHolder;->sService:Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;

    return-object v0
.end method
