.class public Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams$TouchResParamsBulider;
.super Ljava/lang/Object;
.source "XTouchUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TouchResParamsBulider"
.end annotation


# instance fields
.field private mDownRes:I

.field private mTarget:Landroid/view/View;

.field private mUpRes:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1300(Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams$TouchResParamsBulider;)I
    .locals 0

    .line 261
    iget p0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams$TouchResParamsBulider;->mDownRes:I

    return p0
.end method

.method static synthetic access$1400(Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams$TouchResParamsBulider;)I
    .locals 0

    .line 261
    iget p0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams$TouchResParamsBulider;->mUpRes:I

    return p0
.end method

.method static synthetic access$1500(Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams$TouchResParamsBulider;)Landroid/view/View;
    .locals 0

    .line 261
    iget-object p0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams$TouchResParamsBulider;->mTarget:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams;
    .locals 2

    .line 282
    new-instance v0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams;-><init>(Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams$TouchResParamsBulider;Lcom/xiaopeng/xui/utils/XTouchUtils$1;)V

    return-object v0
.end method

.method public setDownRes(I)Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams$TouchResParamsBulider;
    .locals 0

    .line 267
    iput p1, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams$TouchResParamsBulider;->mDownRes:I

    return-object p0
.end method

.method public setTarget(Landroid/view/View;)Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams$TouchResParamsBulider;
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams$TouchResParamsBulider;->mTarget:Landroid/view/View;

    return-object p0
.end method

.method public setUpRes(I)Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams$TouchResParamsBulider;
    .locals 0

    .line 272
    iput p1, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams$TouchResParamsBulider;->mUpRes:I

    return-object p0
.end method
