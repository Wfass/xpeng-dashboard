.class Lcom/xiaopeng/xuiservice/xapp/policy/XAppTransferManager$Holder;
.super Ljava/lang/Object;
.source "XAppTransferManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/policy/XAppTransferManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Holder"
.end annotation


# static fields
.field static instance:Lcom/xiaopeng/xuiservice/xapp/policy/XAppTransferManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppTransferManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppTransferManager;-><init>(Lcom/xiaopeng/xuiservice/xapp/policy/XAppTransferManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppTransferManager$Holder;->instance:Lcom/xiaopeng/xuiservice/xapp/policy/XAppTransferManager;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
