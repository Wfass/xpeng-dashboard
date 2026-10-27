.class public Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "FlexboxLayout.java"

# interfaces
.implements Lcom/google/android/material/internal/FlexItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/FlexboxLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private flexBasisPercent:F

.field private flexGrow:F

.field private flexShrink:F

.field private maxHeight:I

.field private maxWidth:I

.field private minHeight:I

.field private minWidth:I

.field private order:I

.field private wrapBefore:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1190
    new-instance v0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams$1;

    invoke-direct {v0}, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams$1;-><init>()V

    sput-object v0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1008
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-direct {p0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 939
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->order:I

    .line 942
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->flexGrow:F

    .line 945
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->flexShrink:F

    .line 948
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->flexBasisPercent:F

    .line 957
    const v0, 0xffffff

    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->maxWidth:I

    .line 960
    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->maxHeight:I

    .line 1009
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 966
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 939
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->order:I

    .line 942
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->flexGrow:F

    .line 945
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->flexShrink:F

    .line 948
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->flexBasisPercent:F

    .line 957
    const v4, 0xffffff

    iput v4, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->maxWidth:I

    .line 960
    iput v4, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->maxHeight:I

    .line 968
    sget-object v5, Lcom/google/android/material/R$styleable;->FlexboxLayout_Layout:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 969
    .local v5, "a":Landroid/content/res/TypedArray;
    sget v6, Lcom/google/android/material/R$styleable;->FlexboxLayout_Layout_layout_order:I

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->order:I

    .line 970
    sget v6, Lcom/google/android/material/R$styleable;->FlexboxLayout_Layout_layout_flexGrow:I

    invoke-virtual {v5, v6, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->flexGrow:F

    .line 971
    sget v1, Lcom/google/android/material/R$styleable;->FlexboxLayout_Layout_layout_flexShrink:I

    .line 972
    invoke-virtual {v5, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->flexShrink:F

    .line 973
    sget v1, Lcom/google/android/material/R$styleable;->FlexboxLayout_Layout_layout_flexBasisPercent:I

    .line 974
    invoke-virtual {v5, v1, v0, v0, v3}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->flexBasisPercent:F

    .line 979
    sget v0, Lcom/google/android/material/R$styleable;->FlexboxLayout_Layout_layout_minWidth:I

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->minWidth:I

    .line 980
    sget v0, Lcom/google/android/material/R$styleable;->FlexboxLayout_Layout_layout_minHeight:I

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->minHeight:I

    .line 981
    sget v0, Lcom/google/android/material/R$styleable;->FlexboxLayout_Layout_layout_maxWidth:I

    .line 982
    invoke-virtual {v5, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->maxWidth:I

    .line 983
    sget v0, Lcom/google/android/material/R$styleable;->FlexboxLayout_Layout_layout_maxHeight:I

    .line 984
    invoke-virtual {v5, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->maxHeight:I

    .line 985
    sget v0, Lcom/google/android/material/R$styleable;->FlexboxLayout_Layout_layout_wrapBefore:I

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->wrapBefore:Z

    .line 986
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 987
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1018
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 939
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->order:I

    .line 942
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->flexGrow:F

    .line 945
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->flexShrink:F

    .line 948
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->flexBasisPercent:F

    .line 957
    const v2, 0xffffff

    iput v2, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->maxWidth:I

    .line 960
    iput v2, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->maxHeight:I

    .line 1019
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->order:I

    .line 1020
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->flexGrow:F

    .line 1021
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->flexShrink:F

    .line 1022
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->flexBasisPercent:F

    .line 1023
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->minWidth:I

    .line 1024
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->minHeight:I

    .line 1025
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->maxWidth:I

    .line 1026
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->maxHeight:I

    .line 1027
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    nop

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->wrapBefore:Z

    .line 1028
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->bottomMargin:I

    .line 1029
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->leftMargin:I

    .line 1030
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->rightMargin:I

    .line 1031
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->topMargin:I

    .line 1032
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->height:I

    .line 1033
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->width:I

    .line 1034
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1004
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 939
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->order:I

    .line 942
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->flexGrow:F

    .line 945
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->flexShrink:F

    .line 948
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->flexBasisPercent:F

    .line 957
    const v0, 0xffffff

    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->maxWidth:I

    .line 960
    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->maxHeight:I

    .line 1005
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1012
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 939
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->order:I

    .line 942
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->flexGrow:F

    .line 945
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->flexShrink:F

    .line 948
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->flexBasisPercent:F

    .line 957
    const v0, 0xffffff

    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->maxWidth:I

    .line 960
    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->maxHeight:I

    .line 1013
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;

    .line 990
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 939
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->order:I

    .line 942
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->flexGrow:F

    .line 945
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->flexShrink:F

    .line 948
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->flexBasisPercent:F

    .line 957
    const v0, 0xffffff

    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->maxWidth:I

    .line 960
    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->maxHeight:I

    .line 992
    iget v0, p1, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->order:I

    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->order:I

    .line 993
    iget v0, p1, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->flexGrow:F

    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->flexGrow:F

    .line 994
    iget v0, p1, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->flexShrink:F

    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->flexShrink:F

    .line 995
    iget v0, p1, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->flexBasisPercent:F

    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->flexBasisPercent:F

    .line 996
    iget v0, p1, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->minWidth:I

    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->minWidth:I

    .line 997
    iget v0, p1, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->minHeight:I

    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->minHeight:I

    .line 998
    iget v0, p1, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->maxWidth:I

    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->maxWidth:I

    .line 999
    iget v0, p1, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->maxHeight:I

    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->maxHeight:I

    .line 1000
    iget-boolean v0, p1, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->wrapBefore:Z

    iput-boolean v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->wrapBefore:Z

    .line 1001
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 1168
    const/4 v0, 0x0

    return v0
.end method

.method public getFlexBasisPercent()F
    .locals 1

    .line 1138
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->flexBasisPercent:F

    return v0
.end method

.method public getFlexGrow()F
    .locals 1

    .line 1068
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->flexGrow:F

    return v0
.end method

.method public getFlexShrink()F
    .locals 1

    .line 1078
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->flexShrink:F

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1048
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->height:I

    return v0
.end method

.method public getMarginBottom()I
    .locals 1

    .line 1163
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->bottomMargin:I

    return v0
.end method

.method public getMarginLeft()I
    .locals 1

    .line 1148
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->leftMargin:I

    return v0
.end method

.method public getMarginRight()I
    .locals 1

    .line 1158
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->rightMargin:I

    return v0
.end method

.method public getMarginTop()I
    .locals 1

    .line 1153
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->topMargin:I

    return v0
.end method

.method public getMaxHeight()I
    .locals 1

    .line 1118
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->maxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 1108
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->maxWidth:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .line 1098
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->minHeight:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 1088
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->minWidth:I

    return v0
.end method

.method public getOrder()I
    .locals 1

    .line 1058
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->order:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1038
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->width:I

    return v0
.end method

.method public isWrapBefore()Z
    .locals 1

    .line 1128
    iget-boolean v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->wrapBefore:Z

    return v0
.end method

.method public setFlexBasisPercent(F)V
    .locals 0
    .param p1, "flexBasisPercent"    # F

    .line 1143
    iput p1, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->flexBasisPercent:F

    .line 1144
    return-void
.end method

.method public setFlexGrow(F)V
    .locals 0
    .param p1, "flexGrow"    # F

    .line 1073
    iput p1, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->flexGrow:F

    .line 1074
    return-void
.end method

.method public setFlexShrink(F)V
    .locals 0
    .param p1, "flexShrink"    # F

    .line 1083
    iput p1, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->flexShrink:F

    .line 1084
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 1053
    iput p1, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->height:I

    .line 1054
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0
    .param p1, "maxHeight"    # I

    .line 1123
    iput p1, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->maxHeight:I

    .line 1124
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1, "maxWidth"    # I

    .line 1113
    iput p1, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->maxWidth:I

    .line 1114
    return-void
.end method

.method public setMinHeight(I)V
    .locals 0
    .param p1, "minHeight"    # I

    .line 1103
    iput p1, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->minHeight:I

    .line 1104
    return-void
.end method

.method public setMinWidth(I)V
    .locals 0
    .param p1, "minWidth"    # I

    .line 1093
    iput p1, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->minWidth:I

    .line 1094
    return-void
.end method

.method public setOrder(I)V
    .locals 0
    .param p1, "order"    # I

    .line 1063
    iput p1, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->order:I

    .line 1064
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 1043
    iput p1, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->width:I

    .line 1044
    return-void
.end method

.method public setWrapBefore(Z)V
    .locals 0
    .param p1, "wrapBefore"    # Z

    .line 1133
    iput-boolean p1, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->wrapBefore:Z

    .line 1134
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1173
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->order:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1174
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->flexGrow:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1175
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->flexShrink:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1176
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->flexBasisPercent:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1177
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->minWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1178
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->minHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1179
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->maxWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1180
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->maxHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1181
    iget-boolean v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->wrapBefore:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1182
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1183
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1184
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1185
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1186
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1187
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1188
    return-void
.end method
