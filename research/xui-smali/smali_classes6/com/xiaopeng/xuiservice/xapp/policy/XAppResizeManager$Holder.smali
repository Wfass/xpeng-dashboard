.class Lcom/xiaopeng/xuiservice/xapp/policy/XAppResizeManager$Holder;
.super Ljava/lang/Object;
.source "XAppResizeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/policy/XAppResizeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Holder"
.end annotation


# static fields
.field static instance:Lcom/xiaopeng/xuiservice/xapp/policy/XAppResizeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppResizeManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppResizeManager;-><init>(Lcom/xiaopeng/xuiservice/xapp/policy/XAppResizeManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppResizeManager$Holder;->instance:Lcom/xiaopeng/xuiservice/xapp/policy/XAppResizeManager;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
