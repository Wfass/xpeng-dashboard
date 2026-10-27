.class Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$Holder;
.super Ljava/lang/Object;
.source "ScreenManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Holder"
.end annotation


# static fields
.field static instance:Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 488
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;-><init>(Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$Holder;->instance:Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
