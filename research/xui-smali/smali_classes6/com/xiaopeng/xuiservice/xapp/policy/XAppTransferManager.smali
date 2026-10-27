.class public Lcom/xiaopeng/xuiservice/xapp/policy/XAppTransferManager;
.super Ljava/lang/Object;
.source "XAppTransferManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/xapp/policy/XAppTransferManager$Holder;
    }
.end annotation


# static fields
.field private static DENIED:I = 0x0

.field private static SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "XAppTransferManager"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const/4 v0, 0x0

    sput v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppTransferManager;->SUCCESS:I

    .line 12
    const/16 v0, 0xfa0

    sput v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppTransferManager;->DENIED:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppTransferManager;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/xapp/policy/XAppTransferManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/xapp/policy/XAppTransferManager$1;

    .line 8
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppTransferManager;-><init>()V

    return-void
.end method

.method public static get()Lcom/xiaopeng/xuiservice/xapp/policy/XAppTransferManager;
    .locals 1

    .line 19
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppTransferManager$Holder;->instance:Lcom/xiaopeng/xuiservice/xapp/policy/XAppTransferManager;

    return-object v0
.end method


# virtual methods
.method public transfer(ILjava/lang/String;)I
    .locals 3
    .param p1, "screenId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 27
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->handleShareEvent(Ljava/lang/String;I)V

    .line 28
    const-string v0, "XAppTransferManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transfer success screenId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &pkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    sget v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppTransferManager;->DENIED:I

    return v0
.end method
