.class public Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$BasePackageInfo;
.super Ljava/lang/Object;
.source "XAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BasePackageInfo"
.end annotation


# instance fields
.field public appType:I

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;
    .param p2, "appTypeValue"    # I

    .line 977
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$BasePackageInfo;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 978
    iput p2, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$BasePackageInfo;->appType:I

    .line 979
    return-void
.end method
