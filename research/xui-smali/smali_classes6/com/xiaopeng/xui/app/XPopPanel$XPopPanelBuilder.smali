.class public Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;
.super Ljava/lang/Object;
.source "XPopPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/app/XPopPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XPopPanelBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder$Type;,
        Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder$Duration;,
        Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder$Position;
    }
.end annotation


# static fields
.field public static final LENGTH_LONG:I = 0x1388

.field public static final LENGTH_LONGER:I = 0x2710

.field public static final LENGTH_SHORT:I = 0x7d0

.field public static final POSITION_BOTTOM_LEFT:I = 0x2

.field public static final POSITION_BOTTOM_RIGHT:I = 0x3

.field public static final POSITION_TOP_LEFT:I = 0x0

.field public static final POSITION_TOP_RIGHT:I = 0x1

.field public static final TYPE_NORMAL_WINDOW:I = 0x1

.field public static final TYPE_STACK_WINDOW:I = 0x2


# instance fields
.field private mAutoHeight:Z

.field private mAutoHide:Z

.field private mBg:I

.field private mClickable:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultHeight:I

.field private mDefaultWidth:I

.field private mDuration:I

.field private mItemView:Landroid/view/View;

.field private mPaddings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPosition:I

.field private mRegionId:Ljava/lang/String;

.field private mScreenId:I

.field private mToggleEnable:Z

.field private mToggleHeight:I

.field private mToggleWidth:I

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mPaddings:Ljava/util/List;

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mToggleEnable:Z

    .line 224
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mDuration:I

    .line 225
    const/16 v1, 0x190

    iput v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mDefaultWidth:I

    .line 226
    iput v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mDefaultHeight:I

    .line 227
    const/4 v1, 0x1

    iput v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mType:I

    .line 228
    sget v2, Lcom/xiaopeng/xpui/R$drawable;->x_osd_background:I

    iput v2, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mBg:I

    .line 229
    iput v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mPosition:I

    .line 230
    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mAutoHeight:Z

    .line 231
    iput-boolean v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mAutoHide:Z

    .line 232
    move v1, v0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 233
    iget-object v2, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mPaddings:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public create()Lcom/xiaopeng/xui/app/XPopPanel;
    .locals 22

    .line 336
    move-object/from16 v0, p0

    const-string v1, "XPopPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create: mContext = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  mWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mDefaultWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  mHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mDefaultHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mToggleWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mToggleWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mToggleHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mToggleHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mScreenId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mScreenId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  mDuration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mDuration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  mScreenId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mScreenId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  mType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  mBg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mBg:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  mClickable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mClickable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "  mItemView = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mItemView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    new-instance v1, Lcom/xiaopeng/xui/app/XPopPanel$TN;

    iget-object v4, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mContext:Landroid/content/Context;

    iget v5, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mDefaultWidth:I

    iget v6, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mDefaultHeight:I

    iget v7, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mToggleWidth:I

    iget v8, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mToggleHeight:I

    iget-boolean v9, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mToggleEnable:Z

    iget v10, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mDuration:I

    iget v11, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mType:I

    iget v12, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mBg:I

    iget-boolean v13, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mClickable:Z

    iget-object v14, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mItemView:Landroid/view/View;

    iget-boolean v15, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mAutoHeight:Z

    iget-boolean v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mAutoHide:Z

    iget v3, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mScreenId:I

    move/from16 v20, v2

    iget v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mPosition:I

    move/from16 v21, v2

    iget-object v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mPaddings:Ljava/util/List;

    move/from16 v17, v3

    move-object v3, v1

    move/from16 v16, v20

    move/from16 v18, v21

    move-object/from16 v19, v2

    invoke-direct/range {v3 .. v19}, Lcom/xiaopeng/xui/app/XPopPanel$TN;-><init>(Landroid/content/Context;IIIIZIIIZLandroid/view/View;ZZIILjava/util/List;)V

    .line 338
    .local v1, "tn":Lcom/xiaopeng/xui/app/XPopPanel$TN;
    new-instance v2, Lcom/xiaopeng/xui/app/XPopPanel;

    iget-object v3, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mItemView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/xiaopeng/xui/app/XPopPanel;-><init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XPopPanel$TN;Landroid/view/View;Lcom/xiaopeng/xui/app/XPopPanel$1;)V

    return-object v2
.end method

.method public setAutoHide(Z)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;
    .locals 0
    .param p1, "autoHide"    # Z

    .line 243
    iput-boolean p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mAutoHide:Z

    .line 244
    return-object p0
.end method

.method public setBackground(I)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;
    .locals 0
    .param p1, "resource"    # I

    .line 321
    iput p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mBg:I

    .line 322
    return-object p0
.end method

.method public setClickable(Z)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;
    .locals 0
    .param p1, "clickable"    # Z

    .line 326
    iput-boolean p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mClickable:Z

    .line 327
    return-object p0
.end method

.method public setContext(Landroid/content/Context;)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 238
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mContext:Landroid/content/Context;

    .line 239
    return-object p0
.end method

.method public setDefaultSize(II)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 265
    iput p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mDefaultWidth:I

    .line 266
    iput p2, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mDefaultHeight:I

    .line 267
    return-object p0
.end method

.method public setDurationLength(I)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;
    .locals 0
    .param p1, "duration"    # I

    .line 248
    iput p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mDuration:I

    .line 249
    return-object p0
.end method

.method public setHeight(I)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;
    .locals 0
    .param p1, "height"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 261
    return-object p0
.end method

.method public setItemView(Landroid/view/View;)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .line 305
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mItemView:Landroid/view/View;

    .line 306
    return-object p0
.end method

.method public setPadding(I)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;
    .locals 3
    .param p1, "padding"    # I

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mPaddings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 279
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mPaddings:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    .end local v0    # "i":I
    :cond_0
    return-object p0
.end method

.method public setPadding(IIII)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 286
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mPaddings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 287
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mPaddings:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mPaddings:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mPaddings:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mPaddings:Ljava/util/List;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    return-object p0
.end method

.method public setPosition(I)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;
    .locals 0
    .param p1, "position"    # I

    .line 295
    iput p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mPosition:I

    .line 296
    return-object p0
.end method

.method public setRegionId(Ljava/lang/String;)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;
    .locals 0
    .param p1, "regionId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 311
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mRegionId:Ljava/lang/String;

    .line 312
    return-object p0
.end method

.method public setScreenId(I)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;
    .locals 0
    .param p1, "screenId"    # I

    .line 300
    iput p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mScreenId:I

    .line 301
    return-object p0
.end method

.method public setSelfAdapterHeight(Z)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;
    .locals 0
    .param p1, "autoHeight"    # Z

    .line 331
    iput-boolean p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mAutoHeight:Z

    .line 332
    return-object p0
.end method

.method public setToggleSize(II)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mToggleEnable:Z

    .line 272
    iput p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mToggleWidth:I

    .line 273
    iput p2, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mToggleHeight:I

    .line 274
    return-object p0
.end method

.method public setType(I)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;
    .locals 0
    .param p1, "type"    # I

    .line 316
    iput p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mType:I

    .line 317
    return-object p0
.end method

.method public setWidth(I)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;
    .locals 0
    .param p1, "width"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 255
    return-object p0
.end method
