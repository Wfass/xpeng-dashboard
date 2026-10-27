.class public abstract Lcom/xiaopeng/xuiservice/carcontrol/HalServiceBaseCarListener;
.super Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;
.source "HalServiceBaseCarListener.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 10
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;-><init>(Landroid/content/Context;)V

    .line 11
    return-void
.end method


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method protected needConnectCar()Z
    .locals 1

    .line 15
    const/4 v0, 0x0

    return v0
.end method
