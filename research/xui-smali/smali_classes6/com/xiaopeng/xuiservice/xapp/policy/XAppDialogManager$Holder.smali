.class Lcom/xiaopeng/xuiservice/xapp/policy/XAppDialogManager$Holder;
.super Ljava/lang/Object;
.source "XAppDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/policy/XAppDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Holder"
.end annotation


# static fields
.field static instance:Lcom/xiaopeng/xuiservice/xapp/policy/XAppDialogManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppDialogManager;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppDialogManager;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppDialogManager$Holder;->instance:Lcom/xiaopeng/xuiservice/xapp/policy/XAppDialogManager;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
