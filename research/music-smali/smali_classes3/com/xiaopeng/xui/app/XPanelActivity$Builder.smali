.class public final Lcom/xiaopeng/xui/app/XPanelActivity$Builder;
.super Ljava/lang/Object;
.source "XPanelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/app/XPanelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private flags:I

.field private gravity:I

.field private height:I

.field private final mActivity:Landroid/app/Activity;

.field private systemUiVisibility:I

.field private width:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->mActivity:Landroid/app/Activity;

    .line 299
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, p0, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->x:I

    .line 307
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v1, p0, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->y:I

    .line 308
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v1, p0, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->flags:I

    .line 309
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, p0, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->width:I

    .line 310
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v1, p0, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->height:I

    .line 311
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v1, p0, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->gravity:I

    .line 312
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iput v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->systemUiVisibility:I

    :cond_0
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 3

    .line 318
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    iget v1, p0, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->x:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 322
    iget v1, p0, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->y:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 323
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, p0, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->flags:I

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 324
    iget v1, p0, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 325
    iget v1, p0, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->height:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 326
    iget v1, p0, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->gravity:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 327
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v2, p0, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->systemUiVisibility:I

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 328
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setFlags(I)Lcom/xiaopeng/xui/app/XPanelActivity$Builder;
    .locals 0

    .line 344
    iput p1, p0, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->flags:I

    return-object p0
.end method

.method public setGravity(I)Lcom/xiaopeng/xui/app/XPanelActivity$Builder;
    .locals 0

    .line 359
    iput p1, p0, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->gravity:I

    return-object p0
.end method

.method public setHeight(I)Lcom/xiaopeng/xui/app/XPanelActivity$Builder;
    .locals 0

    .line 354
    iput p1, p0, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->height:I

    return-object p0
.end method

.method public setSystemUiVisibility(I)Lcom/xiaopeng/xui/app/XPanelActivity$Builder;
    .locals 0

    .line 364
    iput p1, p0, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->systemUiVisibility:I

    return-object p0
.end method

.method public setWidth(I)Lcom/xiaopeng/xui/app/XPanelActivity$Builder;
    .locals 0

    .line 349
    iput p1, p0, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->width:I

    return-object p0
.end method

.method public setX(I)Lcom/xiaopeng/xui/app/XPanelActivity$Builder;
    .locals 0

    .line 334
    iput p1, p0, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->x:I

    return-object p0
.end method

.method public setY(I)Lcom/xiaopeng/xui/app/XPanelActivity$Builder;
    .locals 0

    .line 339
    iput p1, p0, Lcom/xiaopeng/xui/app/XPanelActivity$Builder;->y:I

    return-object p0
.end method
