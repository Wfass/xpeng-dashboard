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

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mPaddings:Ljava/util/List;

    const/4 v0, 0x0

    .line 199
    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mToggleEnable:Z

    const/16 v1, 0x7d0

    .line 228
    iput v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mDuration:I

    const/16 v1, 0x190

    .line 229
    iput v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mDefaultWidth:I

    .line 230
    iput v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mDefaultHeight:I

    const/4 v1, 0x1

    .line 231
    iput v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mType:I

    .line 232
    sget v2, Lbyg$g;->x_osd_background:I

    iput v2, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mBg:I

    .line 233
    iput v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mPosition:I

    .line 234
    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mAutoHeight:Z

    .line 235
    iput-boolean v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mAutoHide:Z

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 237
    iget-object v2, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mPaddings:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public create()Lcom/xiaopeng/xui/app/XPopPanel;
    .locals 20

    move-object/from16 v0, p0

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create: mContext = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  mWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mDefaultWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  mHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mDefaultHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mToggleWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mToggleWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mToggleHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mToggleHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mScreenId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mScreenId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  mDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  mScreenId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mScreenId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  mType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  mBg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mBg:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  mClickable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mClickable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  mItemView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mItemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XPopPanel"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    new-instance v1, Lcom/xiaopeng/xui/app/XPopPanel$TN;

    move-object v3, v1

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

    move/from16 v16, v2

    iget v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mScreenId:I

    move/from16 v17, v2

    iget v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mPosition:I

    move/from16 v18, v2

    iget-object v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mPaddings:Ljava/util/List;

    move-object/from16 v19, v2

    invoke-direct/range {v3 .. v19}, Lcom/xiaopeng/xui/app/XPopPanel$TN;-><init>(Landroid/content/Context;IIIIZIIIZLandroid/view/View;ZZIILjava/util/List;)V

    .line 342
    new-instance v2, Lcom/xiaopeng/xui/app/XPopPanel;

    iget-object v3, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mItemView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/xiaopeng/xui/app/XPopPanel;-><init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XPopPanel$TN;Landroid/view/View;Lcom/xiaopeng/xui/app/XPopPanel$1;)V

    return-object v2
.end method

.method public setAutoHide(Z)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;
    .locals 0

    .line 247
    iput-boolean p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mAutoHide:Z

    return-object p0
.end method

.method public setBackground(I)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;
    .locals 0

    .line 325
    iput p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mBg:I

    return-object p0
.end method

.method public setClickable(Z)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;
    .locals 0

    .line 330
    iput-boolean p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mClickable:Z

    return-object p0
.end method

.method public setContext(Landroid/content/Context;)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public setDefaultSize(II)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;
    .locals 0

    .line 269
    iput p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mDefaultWidth:I

    .line 270
    iput p2, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mDefaultHeight:I

    return-object p0
.end method

.method public setDurationLength(I)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;
    .locals 0

    .line 252
    iput p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mDuration:I

    return-object p0
.end method

.method public setHeight(I)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setItemView(Landroid/view/View;)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mItemView:Landroid/view/View;

    return-object p0
.end method

.method public setPadding(I)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;
    .locals 3

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mPaddings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mPaddings:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setPadding(IIII)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mPaddings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 291
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mPaddings:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mPaddings:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mPaddings:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mPaddings:Ljava/util/List;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setPosition(I)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;
    .locals 0

    .line 299
    iput p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mPosition:I

    return-object p0
.end method

.method public setRegionId(Ljava/lang/String;)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 315
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mRegionId:Ljava/lang/String;

    return-object p0
.end method

.method public setScreenId(I)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;
    .locals 0

    .line 304
    iput p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mScreenId:I

    return-object p0
.end method

.method public setSelfAdapterHeight(Z)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;
    .locals 0

    .line 335
    iput-boolean p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mAutoHeight:Z

    return-object p0
.end method

.method public setToggleSize(II)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 275
    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mToggleEnable:Z

    .line 276
    iput p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mToggleWidth:I

    .line 277
    iput p2, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mToggleHeight:I

    return-object p0
.end method

.method public setType(I)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;
    .locals 0

    .line 320
    iput p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->mType:I

    return-object p0
.end method

.method public setWidth(I)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method
