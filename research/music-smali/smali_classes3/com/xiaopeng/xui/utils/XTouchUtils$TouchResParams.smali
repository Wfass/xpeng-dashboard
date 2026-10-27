.class public Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams;
.super Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParamsParent;
.source "XTouchUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/utils/XTouchUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TouchResParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams$TouchResParamsBulider;
    }
.end annotation


# instance fields
.field private mDownRes:I

.field private mUpRes:I


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams$TouchResParamsBulider;)V
    .locals 1

    const/4 v0, 0x0

    .line 255
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParamsParent;-><init>(Lcom/xiaopeng/xui/utils/XTouchUtils$1;)V

    .line 256
    invoke-static {p1}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams$TouchResParamsBulider;->access$1300(Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams$TouchResParamsBulider;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams;->mDownRes:I

    .line 257
    invoke-static {p1}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams$TouchResParamsBulider;->access$1400(Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams$TouchResParamsBulider;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams;->mUpRes:I

    .line 258
    invoke-static {p1}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams$TouchResParamsBulider;->access$1500(Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams$TouchResParamsBulider;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams;->mTarget:Landroid/view/View;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams$TouchResParamsBulider;Lcom/xiaopeng/xui/utils/XTouchUtils$1;)V
    .locals 0

    .line 251
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams;-><init>(Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams$TouchResParamsBulider;)V

    return-void
.end method


# virtual methods
.method public getDownRes()I
    .locals 1

    .line 287
    iget v0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams;->mDownRes:I

    return v0
.end method

.method public bridge synthetic getTarget()Landroid/view/View;
    .locals 1

    .line 251
    invoke-super {p0}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParamsParent;->getTarget()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getUpRes()I
    .locals 1

    .line 291
    iget v0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchResParams;->mUpRes:I

    return v0
.end method
