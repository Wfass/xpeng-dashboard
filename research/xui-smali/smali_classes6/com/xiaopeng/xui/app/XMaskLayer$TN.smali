.class Lcom/xiaopeng/xui/app/XMaskLayer$TN;
.super Lcom/xiaopeng/xuimanager/systemui/masklayer/IMaskLayerListener$Stub;
.source "XMaskLayer.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/app/XMaskLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TN"
.end annotation


# static fields
.field private static final HIDE:I = 0x1


# instance fields
.field private listener:Lcom/xiaopeng/xui/app/XMaskLayer$MaskLayerInterface;

.field private mBackgroundLayout:Lcom/xiaopeng/xui/app/XMaskLayer$BackgroundLayout;

.field private final mBg:I

.field private mClickable:Z

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIsStackWindow:Z

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field private final mScreenId:I

.field private final mWM:Landroid/view/WindowManager;

.field private mWindowState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIZIZLandroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "screenId"    # I
    .param p5, "isStackWindow"    # Z
    .param p6, "bg"    # I
    .param p7, "clickable"    # Z
    .param p8, "itemView"    # Landroid/view/View;

    .line 170
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/systemui/masklayer/IMaskLayerListener$Stub;-><init>()V

    .line 171
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mContext:Landroid/content/Context;

    .line 173
    iput-boolean p7, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mClickable:Z

    .line 174
    iput-boolean p5, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mIsStackWindow:Z

    .line 175
    iput p4, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mScreenId:I

    .line 176
    iput p6, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mBg:I

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mWindowState:Z

    .line 179
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 180
    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mWM:Landroid/view/WindowManager;

    .line 181
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 182
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 183
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput p3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 184
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 185
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 187
    iget-boolean v0, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mClickable:Z

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x1000028

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x1800038

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 200
    :goto_0
    invoke-direct {p0, p8, p2, p3}, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->setBackgroundLayout(Landroid/view/View;II)V

    .line 202
    new-instance v0, Lcom/xiaopeng/xui/app/XMaskLayer$TN$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/xiaopeng/xui/app/XMaskLayer$TN$1;-><init>(Lcom/xiaopeng/xui/app/XMaskLayer$TN;Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mHandler:Landroid/os/Handler;

    .line 213
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/app/XMaskLayer$TN;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/app/XMaskLayer$TN;

    .line 151
    iget v0, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mScreenId:I

    return v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/app/XMaskLayer$TN;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/app/XMaskLayer$TN;

    .line 151
    iget-boolean v0, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mIsStackWindow:Z

    return v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xui/app/XMaskLayer$TN;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/app/XMaskLayer$TN;

    .line 151
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->handleHide()V

    return-void
.end method

.method private handleHide()V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mWM:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 271
    const-string v0, "XMaskLayer"

    const-string v1, "dismissMaskLayer: \u9690\u85cf\u6c34\u5370"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XMaskLayer$BackgroundLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 274
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mWindowState:Z

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->listener:Lcom/xiaopeng/xui/app/XMaskLayer$MaskLayerInterface;

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->listener:Lcom/xiaopeng/xui/app/XMaskLayer$MaskLayerInterface;

    invoke-interface {v0}, Lcom/xiaopeng/xui/app/XMaskLayer$MaskLayerInterface;->onHide()V

    .line 278
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/masklayer/MaskLayerManager;->get()Lcom/xiaopeng/xuimanager/systemui/masklayer/MaskLayerManager;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mScreenId:I

    invoke-virtual {v0, p0, v1}, Lcom/xiaopeng/xuimanager/systemui/masklayer/MaskLayerManager;->notifyDismiss(Lcom/xiaopeng/xuimanager/systemui/masklayer/IMaskLayerListener;I)Z

    .line 279
    return-void
.end method

.method private handleShow()V
    .locals 8

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mWM:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 259
    const-string v0, "XMaskLayer"

    const-string v1, "showMaskLayer: \u5f39\u51fa\u6c34\u5370"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XMaskLayer$BackgroundLayout;

    iget-object v5, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mScreenId:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->addView(Landroid/content/Context;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;ILandroid/os/Bundle;)V

    .line 262
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mWindowState:Z

    .line 263
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->listener:Lcom/xiaopeng/xui/app/XMaskLayer$MaskLayerInterface;

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->listener:Lcom/xiaopeng/xui/app/XMaskLayer$MaskLayerInterface;

    invoke-interface {v0}, Lcom/xiaopeng/xui/app/XMaskLayer$MaskLayerInterface;->onShow()V

    .line 266
    :cond_1
    return-void
.end method

.method private setBackgroundLayout(Landroid/view/View;II)V
    .locals 3
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 216
    new-instance v0, Lcom/xiaopeng/xui/app/XMaskLayer$BackgroundLayout;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mBg:I

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xui/app/XMaskLayer$BackgroundLayout;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XMaskLayer$BackgroundLayout;

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XMaskLayer$BackgroundLayout;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/app/XMaskLayer$BackgroundLayout;->setTN(Lcom/xiaopeng/xui/app/XMaskLayer$TN;)V

    .line 219
    if-eqz p1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XMaskLayer$BackgroundLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/xui/app/XMaskLayer$BackgroundLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    :cond_0
    return-void
.end method

.method private static setXpFlags(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 8
    .param p0, "layoutParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "screenId"    # I

    .line 225
    const/16 v0, 0x20

    move v1, v0

    .line 228
    .local v1, "INTENT_FLAG_PHYSICAL_FULLSCREEN":I
    const/16 v2, 0x33

    :try_start_0
    const-class v3, Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v4, "xpFlags"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 229
    .local v3, "fieldXpFlags":Ljava/lang/reflect/Field;
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 230
    .local v4, "currentXpFlags":I
    const-string v5, "XMaskLayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currentXpFlags : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const-class v5, Landroid/view/WindowManager$LayoutParams;

    const-string v6, "intentFlags"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 232
    .local v5, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    .line 233
    .local v6, "currentIntentFlags":I
    or-int/2addr v0, v6

    .line 234
    .end local v6    # "currentIntentFlags":I
    .local v0, "currentIntentFlags":I
    invoke-virtual {v5, p0, v0}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 235
    if-nez p1, :cond_0

    .line 236
    or-int/lit8 v4, v4, 0x10

    .line 237
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    .line 238
    :cond_0
    const/4 v6, 0x1

    if-ne p1, v6, :cond_1

    .line 239
    or-int/lit8 v4, v4, 0x20

    .line 240
    const/16 v6, 0x35

    iput v6, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 242
    :cond_1
    :goto_0
    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v0    # "currentIntentFlags":I
    .end local v3    # "fieldXpFlags":Ljava/lang/reflect/Field;
    .end local v4    # "currentXpFlags":I
    .end local v5    # "field":Ljava/lang/reflect/Field;
    goto :goto_1

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "XMaskLayer"

    const-string/jumbo v4, "xpFlags is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_1
    const-class v0, Landroid/view/WindowManager$LayoutParams;

    const-string v3, "displayId"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 249
    .local v0, "displayIdFlags":Ljava/lang/reflect/Field;
    const-string v3, "XMaskLayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentDisplayId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 251
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 254
    .end local v0    # "displayIdFlags":Ljava/lang/reflect/Field;
    goto :goto_2

    .line 252
    :catch_1
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    const-string v2, "XMaskLayer"

    const-string v3, "displayId is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_2
    return-void
.end method


# virtual methods
.method public dismissMaskLayer()V
    .locals 2

    .line 293
    const-string v0, "XMaskLayer"

    const-string v1, "dismissMaskLayer: \u6536\u5230dismiss\u56de\u8c03"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->handleHide()V

    .line 295
    return-void
.end method

.method public getWindowState()Z
    .locals 1

    .line 282
    iget-boolean v0, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mWindowState:Z

    return v0
.end method

.method public showMaskLayer(I)V
    .locals 1
    .param p1, "windowParamsType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 288
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->handleShow()V

    .line 289
    return-void
.end method
