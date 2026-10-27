.class public Lcom/xiaopeng/xui/app/XMaskLayer$XMaskLayerBuilder;
.super Ljava/lang/Object;
.source "XMaskLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/app/XMaskLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XMaskLayerBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/app/XMaskLayer$XMaskLayerBuilder$ScreenId;
    }
.end annotation


# static fields
.field public static final ID_SHARED_PRIMARY:I = 0x0

.field public static final ID_SHARED_SECONDARY:I = 0x1


# instance fields
.field private mBg:I

.field private mClickable:Z

.field private mContext:Landroid/content/Context;

.field private mHeight:I

.field private mIsStackWindow:Z

.field private mItemView:Landroid/view/View;

.field private mScreenId:I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/XMaskLayer$XMaskLayerBuilder;->mClickable:Z

    .line 84
    iput v0, p0, Lcom/xiaopeng/xui/app/XMaskLayer$XMaskLayerBuilder;->mScreenId:I

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/XMaskLayer$XMaskLayerBuilder;->mIsStackWindow:Z

    .line 86
    const/16 v0, 0x960

    iput v0, p0, Lcom/xiaopeng/xui/app/XMaskLayer$XMaskLayerBuilder;->mWidth:I

    .line 87
    const/16 v0, 0x4b0

    iput v0, p0, Lcom/xiaopeng/xui/app/XMaskLayer$XMaskLayerBuilder;->mHeight:I

    .line 88
    return-void
.end method


# virtual methods
.method public create()Lcom/xiaopeng/xui/app/XMaskLayer;
    .locals 10

    .line 144
    new-instance v9, Lcom/xiaopeng/xui/app/XMaskLayer$TN;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XMaskLayer$XMaskLayerBuilder;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/xiaopeng/xui/app/XMaskLayer$XMaskLayerBuilder;->mWidth:I

    iget v3, p0, Lcom/xiaopeng/xui/app/XMaskLayer$XMaskLayerBuilder;->mHeight:I

    iget v4, p0, Lcom/xiaopeng/xui/app/XMaskLayer$XMaskLayerBuilder;->mScreenId:I

    iget-boolean v5, p0, Lcom/xiaopeng/xui/app/XMaskLayer$XMaskLayerBuilder;->mIsStackWindow:Z

    iget v6, p0, Lcom/xiaopeng/xui/app/XMaskLayer$XMaskLayerBuilder;->mBg:I

    iget-boolean v7, p0, Lcom/xiaopeng/xui/app/XMaskLayer$XMaskLayerBuilder;->mClickable:Z

    iget-object v8, p0, Lcom/xiaopeng/xui/app/XMaskLayer$XMaskLayerBuilder;->mItemView:Landroid/view/View;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/xiaopeng/xui/app/XMaskLayer$TN;-><init>(Landroid/content/Context;IIIZIZLandroid/view/View;)V

    .line 145
    .local v0, "tn":Lcom/xiaopeng/xui/app/XMaskLayer$TN;
    const-string v1, "XMaskLayer"

    const-string v2, "create: TN : \u6784\u9020TN"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v1, Lcom/xiaopeng/xui/app/XMaskLayer;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/XMaskLayer$XMaskLayerBuilder;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/xiaopeng/xui/app/XMaskLayer;-><init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XMaskLayer$TN;Lcom/xiaopeng/xui/app/XMaskLayer$1;)V

    return-object v1
.end method

.method public getHeight()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/xiaopeng/xui/app/XMaskLayer$XMaskLayerBuilder;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/xiaopeng/xui/app/XMaskLayer$XMaskLayerBuilder;->mWidth:I

    return v0
.end method

.method public setBackground(I)Lcom/xiaopeng/xui/app/XMaskLayer$XMaskLayerBuilder;
    .locals 0
    .param p1, "Resource"    # I

    .line 131
    iput p1, p0, Lcom/xiaopeng/xui/app/XMaskLayer$XMaskLayerBuilder;->mBg:I

    .line 132
    return-object p0
.end method

.method public setClickable(Z)Lcom/xiaopeng/xui/app/XMaskLayer$XMaskLayerBuilder;
    .locals 0
    .param p1, "clickable"    # Z

    .line 111
    iput-boolean p1, p0, Lcom/xiaopeng/xui/app/XMaskLayer$XMaskLayerBuilder;->mClickable:Z

    .line 112
    return-object p0
.end method

.method public setContext(Landroid/content/Context;)Lcom/xiaopeng/xui/app/XMaskLayer$XMaskLayerBuilder;
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 91
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XMaskLayer$XMaskLayerBuilder;->mContext:Landroid/content/Context;

    .line 92
    return-object p0
.end method

.method public setHeight(I)Lcom/xiaopeng/xui/app/XMaskLayer$XMaskLayerBuilder;
    .locals 0
    .param p1, "height"    # I

    .line 101
    iput p1, p0, Lcom/xiaopeng/xui/app/XMaskLayer$XMaskLayerBuilder;->mHeight:I

    .line 102
    return-object p0
.end method

.method public setItemView(Landroid/view/View;)Lcom/xiaopeng/xui/app/XMaskLayer$XMaskLayerBuilder;
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .line 126
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XMaskLayer$XMaskLayerBuilder;->mItemView:Landroid/view/View;

    .line 127
    return-object p0
.end method

.method public setScreenId(I)Lcom/xiaopeng/xui/app/XMaskLayer$XMaskLayerBuilder;
    .locals 0
    .param p1, "screenId"    # I

    .line 121
    iput p1, p0, Lcom/xiaopeng/xui/app/XMaskLayer$XMaskLayerBuilder;->mScreenId:I

    .line 122
    return-object p0
.end method

.method public setStackWindow(Z)Lcom/xiaopeng/xui/app/XMaskLayer$XMaskLayerBuilder;
    .locals 0
    .param p1, "state"    # Z

    .line 116
    iput-boolean p1, p0, Lcom/xiaopeng/xui/app/XMaskLayer$XMaskLayerBuilder;->mIsStackWindow:Z

    .line 117
    return-object p0
.end method

.method public setWidth(I)Lcom/xiaopeng/xui/app/XMaskLayer$XMaskLayerBuilder;
    .locals 0
    .param p1, "width"    # I

    .line 96
    iput p1, p0, Lcom/xiaopeng/xui/app/XMaskLayer$XMaskLayerBuilder;->mWidth:I

    .line 97
    return-object p0
.end method
