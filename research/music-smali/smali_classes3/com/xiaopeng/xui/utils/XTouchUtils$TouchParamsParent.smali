.class Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParamsParent;
.super Ljava/lang/Object;
.source "XTouchUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/utils/XTouchUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TouchParamsParent"
.end annotation


# instance fields
.field protected mTarget:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xui/utils/XTouchUtils$1;)V
    .locals 0

    .line 297
    invoke-direct {p0}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParamsParent;-><init>()V

    return-void
.end method


# virtual methods
.method public getTarget()Landroid/view/View;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParamsParent;->mTarget:Landroid/view/View;

    return-object v0
.end method
