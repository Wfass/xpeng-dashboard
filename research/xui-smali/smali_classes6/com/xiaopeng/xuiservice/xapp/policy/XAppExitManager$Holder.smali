.class Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager$Holder;
.super Ljava/lang/Object;
.source "XAppExitManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Holder"
.end annotation


# static fields
.field static instance:Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;-><init>(Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager$Holder;->instance:Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
