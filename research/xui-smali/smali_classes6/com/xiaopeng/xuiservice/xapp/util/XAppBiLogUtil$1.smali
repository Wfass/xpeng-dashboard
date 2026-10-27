.class Lcom/xiaopeng/xuiservice/xapp/util/XAppBiLogUtil$1;
.super Ljava/lang/Object;
.source "XAppBiLogUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/util/XAppBiLogUtil;->sendAppUseDeniedDataLog(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$deniedType:I

.field final synthetic val$pkgName:Ljava/lang/String;

.field final synthetic val$source:I


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/util/XAppBiLogUtil$1;->val$pkgName:Ljava/lang/String;

    iput p2, p0, Lcom/xiaopeng/xuiservice/xapp/util/XAppBiLogUtil$1;->val$source:I

    iput p3, p0, Lcom/xiaopeng/xuiservice/xapp/util/XAppBiLogUtil$1;->val$deniedType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 22
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/util/XAppBiLogUtil$1;->val$pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "appName":Ljava/lang/String;
    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/util/XAppBiLogUtil$1;->val$source:I

    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/util/XAppBiLogUtil$1;->val$deniedType:I

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/util/XAppBiLogUtil$1;->val$pkgName:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/xiaopeng/xuiservice/xapp/util/XAppBiLogUtil;->sendAppUseDeniedDataLog(IILjava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method
