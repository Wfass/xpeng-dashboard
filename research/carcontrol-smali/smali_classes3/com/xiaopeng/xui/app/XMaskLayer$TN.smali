.class Lcom/xiaopeng/xui/app/XMaskLayer$TN;
.super Lcom/xiaopeng/xuimanager/systemui/masklayer/IMaskLayerListener$Stub;
.source "XMaskLayer.java"


# annotations
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
    .locals 0

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

    const/4 p4, 0x0

    .line 177
    iput-boolean p4, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mWindowState:Z

    .line 179
    new-instance p5, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p5}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p5, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo p6, "window"

    .line 180
    invoke-virtual {p1, p6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mWM:Landroid/view/WindowManager;

    const/4 p1, -0x2

    .line 181
    iput p1, p5, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 182
    iput p2, p5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 183
    iput p3, p5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 184
    iput p4, p5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 185
    iput p4, p5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 187
    iget-boolean p1, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mClickable:Z

    if-eqz p1, :cond_0

    const p1, 0x1000028

    .line 188
    iput p1, p5, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_0
    const p1, 0x1800038

    .line 192
    iput p1, p5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 200
    :goto_0
    invoke-direct {p0, p8, p2, p3}, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->setBackgroundLayout(Landroid/view/View;II)V

    .line 202
    new-instance p1, Lcom/xiaopeng/xui/app/XMaskLayer$TN$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p1, p0, p2, p3}, Lcom/xiaopeng/xui/app/XMaskLayer$TN$1;-><init>(Lcom/xiaopeng/xui/app/XMaskLayer$TN;Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/app/XMaskLayer$TN;)I
    .locals 0

    .line 151
    iget p0, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mScreenId:I

    return p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/app/XMaskLayer$TN;)Z
    .locals 0

    .line 151
    iget-boolean p0, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mIsStackWindow:Z

    return p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xui/app/XMaskLayer$TN;)V
    .locals 0

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

    const-string v0, "XMaskLayer"

    const-string v1, "dismissMaskLayer: \u9690\u85cf\u6c34\u5370"

    .line 271
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XMaskLayer$BackgroundLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 274
    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mWindowState:Z

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->listener:Lcom/xiaopeng/xui/app/XMaskLayer$MaskLayerInterface;

    if-eqz v0, :cond_1

    .line 276
    invoke-interface {v0}, Lcom/xiaopeng/xui/app/XMaskLayer$MaskLayerInterface;->onHide()V

    .line 278
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/masklayer/MaskLayerManager;->get()Lcom/xiaopeng/xuimanager/systemui/masklayer/MaskLayerManager;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mScreenId:I

    invoke-virtual {v0, p0, v1}, Lcom/xiaopeng/xuimanager/systemui/masklayer/MaskLayerManager;->notifyDismiss(Lcom/xiaopeng/xuimanager/systemui/masklayer/IMaskLayerListener;I)Z

    return-void
.end method

.method private handleShow()V
    .locals 8

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mWM:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    const-string v0, "XMaskLayer"

    const-string v1, "showMaskLayer: \u5f39\u51fa\u6c34\u5370"

    .line 259
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

    :cond_0
    const/4 v0, 0x1

    .line 262
    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mWindowState:Z

    .line 263
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->listener:Lcom/xiaopeng/xui/app/XMaskLayer$MaskLayerInterface;

    if-eqz v0, :cond_1

    .line 264
    invoke-interface {v0}, Lcom/xiaopeng/xui/app/XMaskLayer$MaskLayerInterface;->onShow()V

    :cond_1
    return-void
.end method

.method private setBackgroundLayout(Landroid/view/View;II)V
    .locals 3

    .line 216
    new-instance v0, Lcom/xiaopeng/xui/app/XMaskLayer$BackgroundLayout;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mBg:I

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xui/app/XMaskLayer$BackgroundLayout;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XMaskLayer$BackgroundLayout;

    .line 217
    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/app/XMaskLayer$BackgroundLayout;->setTN(Lcom/xiaopeng/xui/app/XMaskLayer$TN;)V

    if-eqz p1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XMaskLayer$BackgroundLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/xui/app/XMaskLayer$BackgroundLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private static setXpFlags(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 6

    const-string v0, "XMaskLayer"

    const/16 v1, 0x33

    .line 228
    :try_start_0
    const-class v2, Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v3, "xpFlags"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 229
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 230
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentXpFlags : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const-class v4, Landroid/view/WindowManager$LayoutParams;

    const-string v5, "intentFlags"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 232
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    or-int/lit8 v5, v5, 0x20

    .line 234
    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    if-nez p1, :cond_0

    or-int/lit8 v3, v3, 0x10

    .line 237
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    or-int/lit8 v3, v3, 0x20

    const/16 v4, 0x35

    .line 240
    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 242
    :cond_1
    :goto_0
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string/jumbo v2, "xpFlags is null"

    .line 244
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :goto_1
    :try_start_1
    const-class v2, Landroid/view/WindowManager$LayoutParams;

    const-string v3, "displayId"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentDisplayId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {v2, p0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 251
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    const-string p0, "displayId is null"

    .line 253
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method


# virtual methods
.method public dismissMaskLayer()V
    .locals 2

    const-string v0, "XMaskLayer"

    const-string v1, "dismissMaskLayer: \u6536\u5230dismiss\u56de\u8c03"

    .line 293
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->handleHide()V

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

    return-void
.end method
