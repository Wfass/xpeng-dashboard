.class Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLocationUtils;
.super Ljava/lang/Object;
.source "VuiFloatingLocationUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VuiFloatingLocation"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getLocation(ILcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;II)[I
    .locals 7

    const/4 v0, 0x2

    .line 14
    new-array v1, v0, [I

    if-nez p1, :cond_0

    return-object v1

    .line 19
    :cond_0
    iget-object v2, p1, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;->location:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const-string v4, "offset more or less than current view width"

    const/4 v5, 0x1

    if-eqz p0, :cond_4

    if-eq p0, v5, :cond_1

    goto :goto_0

    .line 35
    :cond_1
    iget p0, p1, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;->targetWidth:I

    div-int/2addr p0, v0

    add-int/2addr p0, v2

    div-int/2addr p2, v0

    sub-int/2addr p0, p2

    .line 36
    iget-object p2, p1, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;->location:[I

    aget p2, p2, v5

    sub-int/2addr p2, p3

    add-int/lit8 p2, p2, 0x23

    .line 37
    iget p3, p1, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;->mCenterOffsetX:I

    add-int/2addr p0, p3

    .line 38
    iget p3, p1, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;->mCenterOffsetY:I

    add-int/2addr p2, p3

    if-lt p0, v2, :cond_2

    .line 39
    iget p1, p1, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;->targetWidth:I

    add-int/2addr v2, p1

    if-le p0, v2, :cond_3

    .line 41
    :cond_2
    invoke-static {v4}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLocationUtils;->log(Ljava/lang/String;)V

    :cond_3
    aput p0, v1, v3

    aput p2, v1, v5

    goto :goto_0

    .line 22
    :cond_4
    iget p0, p1, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;->targetWidth:I

    div-int/2addr p0, v0

    add-int/2addr p0, v2

    div-int/2addr p2, v0

    sub-int/2addr p0, p2

    .line 23
    iget-object p2, p1, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;->location:[I

    aget p2, p2, v5

    iget v6, p1, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;->targetHeight:I

    div-int/2addr v6, v0

    add-int/2addr p2, v6

    div-int/2addr p3, v0

    sub-int/2addr p2, p3

    .line 24
    iget p3, p1, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;->mCenterOffsetX:I

    add-int/2addr p0, p3

    .line 25
    iget p3, p1, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;->mCenterOffsetY:I

    add-int/2addr p2, p3

    if-lt p0, v2, :cond_5

    .line 26
    iget p1, p1, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;->targetWidth:I

    add-int/2addr v2, p1

    if-le p0, v2, :cond_6

    .line 28
    :cond_5
    invoke-static {v4}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLocationUtils;->log(Ljava/lang/String;)V

    :cond_6
    aput p0, v1, v3

    aput p2, v1, v5

    :goto_0
    return-object v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "VuiFloatingLocation"

    .line 52
    invoke-static {v0, p0}, Lcom/xiaopeng/xui/utils/XLogUtils;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
