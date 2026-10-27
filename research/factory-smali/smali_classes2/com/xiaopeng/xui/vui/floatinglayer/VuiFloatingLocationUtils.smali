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
    .locals 9
    .param p0, "type"    # I
    .param p1, "info"    # Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;
    .param p2, "viewWidth"    # I
    .param p3, "viewHeight"    # I

    .line 14
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 15
    .local v1, "location":[I
    if-nez p1, :cond_0

    .line 16
    return-object v1

    .line 19
    :cond_0
    iget-object v2, p1, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;->location:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 20
    .local v2, "left":I
    const/4 v4, 0x1

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 35
    :pswitch_0
    iget v5, p1, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;->targetWidth:I

    div-int/2addr v5, v0

    add-int/2addr v5, v2

    div-int/lit8 v0, p2, 0x2

    sub-int/2addr v5, v0

    .line 36
    .local v5, "marginStart":I
    iget-object v0, p1, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;->location:[I

    aget v0, v0, v4

    sub-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x23

    .line 37
    .local v0, "marginTop":I
    iget v6, p1, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;->mCenterOffsetX:I

    add-int/2addr v6, v5

    .line 38
    .local v6, "offsetStart":I
    iget v7, p1, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;->mCenterOffsetY:I

    add-int/2addr v7, v0

    .line 39
    .local v7, "offsetTop":I
    if-lt v6, v2, :cond_1

    iget v8, p1, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;->targetWidth:I

    add-int/2addr v8, v2

    if-le v6, v8, :cond_2

    .line 41
    :cond_1
    const-string v8, "offset more or less than current view width"

    invoke-static {v8}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLocationUtils;->log(Ljava/lang/String;)V

    .line 43
    :cond_2
    aput v6, v1, v3

    .line 44
    aput v7, v1, v4

    .end local v0    # "marginTop":I
    .end local v5    # "marginStart":I
    .end local v6    # "offsetStart":I
    .end local v7    # "offsetTop":I
    goto :goto_0

    .line 22
    :pswitch_1
    iget v5, p1, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;->targetWidth:I

    div-int/2addr v5, v0

    add-int/2addr v5, v2

    div-int/lit8 v6, p2, 0x2

    sub-int/2addr v5, v6

    .line 23
    .restart local v5    # "marginStart":I
    iget-object v6, p1, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;->location:[I

    aget v6, v6, v4

    iget v7, p1, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;->targetHeight:I

    div-int/2addr v7, v0

    add-int/2addr v6, v7

    div-int/lit8 v0, p3, 0x2

    sub-int/2addr v6, v0

    .line 24
    .local v6, "marginTop":I
    iget v0, p1, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;->mCenterOffsetX:I

    add-int/2addr v0, v5

    .line 25
    .local v0, "offsetStart":I
    iget v7, p1, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;->mCenterOffsetY:I

    add-int/2addr v7, v6

    .line 26
    .restart local v7    # "offsetTop":I
    if-lt v0, v2, :cond_3

    iget v8, p1, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;->targetWidth:I

    add-int/2addr v8, v2

    if-le v0, v8, :cond_4

    .line 28
    :cond_3
    const-string v8, "offset more or less than current view width"

    invoke-static {v8}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLocationUtils;->log(Ljava/lang/String;)V

    .line 30
    :cond_4
    aput v0, v1, v3

    .line 31
    aput v7, v1, v4

    .line 33
    .end local v0    # "offsetStart":I
    .end local v5    # "marginStart":I
    .end local v6    # "marginTop":I
    .end local v7    # "offsetTop":I
    nop

    .line 48
    :goto_0
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 52
    const-string v0, "VuiFloatingLocation"

    invoke-static {v0, p0}, Lcom/xiaopeng/xui/utils/XLogUtils;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    return-void
.end method
