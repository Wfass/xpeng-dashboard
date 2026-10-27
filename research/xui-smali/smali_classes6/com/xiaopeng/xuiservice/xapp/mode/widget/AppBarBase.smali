.class public abstract Lcom/xiaopeng/xuiservice/xapp/mode/widget/AppBarBase;
.super Ljava/lang/Object;
.source "AppBarBase.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper$Callback;


# instance fields
.field final areaType:Ljava/lang/String;

.field final context:Landroid/content/Context;

.field final navigationBar:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

.field final screenId:I

.field final xpPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;ILjava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "navigationBar"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;
    .param p3, "screenId"    # I
    .param p4, "areaType"    # Ljava/lang/String;
    .param p5, "xpPackageInfo"    # Lcom/xiaopeng/app/xpPackageInfo;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/AppBarBase;->context:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/AppBarBase;->navigationBar:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

    .line 20
    iput p3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/AppBarBase;->screenId:I

    .line 21
    iput-object p4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/AppBarBase;->areaType:Ljava/lang/String;

    .line 22
    iput-object p5, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/AppBarBase;->xpPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    .line 23
    return-void
.end method


# virtual methods
.method public abstract getDefaultPosition(Landroid/graphics/Rect;)[I
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onDockVisibilityChanged(IZ)V
.end method

.method public abstract update(Ljava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)Z
.end method
