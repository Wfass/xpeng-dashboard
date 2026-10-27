.class public final synthetic Lcom/xiaopeng/xuiservice/xapp/mode/view/-$$Lambda$XAppModeViewManager$VkfS3Ewe_l7RbM_7qrsbcawgEqk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

.field private final synthetic f$1:I

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Lcom/xiaopeng/app/xpPackageInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;ILjava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/-$$Lambda$XAppModeViewManager$VkfS3Ewe_l7RbM_7qrsbcawgEqk;->f$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    iput p2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/-$$Lambda$XAppModeViewManager$VkfS3Ewe_l7RbM_7qrsbcawgEqk;->f$1:I

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/-$$Lambda$XAppModeViewManager$VkfS3Ewe_l7RbM_7qrsbcawgEqk;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/-$$Lambda$XAppModeViewManager$VkfS3Ewe_l7RbM_7qrsbcawgEqk;->f$3:Lcom/xiaopeng/app/xpPackageInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/-$$Lambda$XAppModeViewManager$VkfS3Ewe_l7RbM_7qrsbcawgEqk;->f$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/-$$Lambda$XAppModeViewManager$VkfS3Ewe_l7RbM_7qrsbcawgEqk;->f$1:I

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/-$$Lambda$XAppModeViewManager$VkfS3Ewe_l7RbM_7qrsbcawgEqk;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/-$$Lambda$XAppModeViewManager$VkfS3Ewe_l7RbM_7qrsbcawgEqk;->f$3:Lcom/xiaopeng/app/xpPackageInfo;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->lambda$showNavigationBar$1(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;ILjava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V

    return-void
.end method
