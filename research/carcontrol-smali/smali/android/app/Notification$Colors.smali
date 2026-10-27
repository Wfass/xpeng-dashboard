.class public Landroid/app/Notification$Colors;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Colors"
.end annotation


# instance fields
.field private mBackgroundColor:I

.field private mContrastColor:I

.field private mErrorColor:I

.field private mOnAccentTextColor:I

.field private mPaletteIsForColorized:Z

.field private mPaletteIsForNightMode:Z

.field private mPaletteIsForRawColor:I

.field private mPrimaryAccentColor:I

.field private mPrimaryTextColor:I

.field private mProtectionColor:I

.field private mRippleAlpha:I

.field private mSecondaryAccentColor:I

.field private mSecondaryTextColor:I

.field private mTertiaryAccentColor:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12957
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 12958
    iput v0, p0, Landroid/app/Notification$Colors;->mPaletteIsForRawColor:I

    const/4 v1, 0x0

    .line 12959
    iput-boolean v1, p0, Landroid/app/Notification$Colors;->mPaletteIsForColorized:Z

    .line 12960
    iput-boolean v1, p0, Landroid/app/Notification$Colors;->mPaletteIsForNightMode:Z

    .line 12962
    iput v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 12963
    iput v0, p0, Landroid/app/Notification$Colors;->mProtectionColor:I

    .line 12964
    iput v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    .line 12965
    iput v0, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    .line 12966
    iput v0, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    .line 12967
    iput v0, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    .line 12968
    iput v0, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    .line 12969
    iput v0, p0, Landroid/app/Notification$Colors;->mOnAccentTextColor:I

    .line 12970
    iput v0, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    .line 12971
    iput v0, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    const/16 v0, 0x33

    .line 12972
    iput v0, p0, Landroid/app/Notification$Colors;->mRippleAlpha:I

    return-void
.end method

.method static synthetic access$2100(II)I
    .locals 0

    .line 12957
    invoke-static {p0, p1}, Landroid/app/Notification$Colors;->flattenAlpha(II)I

    move-result p0

    return p0
.end method

.method private static calculateContrastColor(Landroid/content/Context;IIIZ)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 13116
    invoke-static {p0, p3, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolveDefaultColor(Landroid/content/Context;IZ)I

    move-result p2

    goto :goto_0

    .line 13119
    :cond_0
    invoke-static {p0, p1, p3, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolveContrastColor(Landroid/content/Context;IIZ)I

    move-result p2

    .line 13122
    :cond_1
    :goto_0
    invoke-static {p2, p3}, Landroid/app/Notification$Colors;->flattenAlpha(II)I

    move-result p0

    return p0
.end method

.method private static flattenAlpha(II)I
    .locals 2

    .line 13127
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 13128
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/util/ContrastColorUtil;->compositeColors(II)I

    move-result p0

    :goto_0
    return p0
.end method

.method private static getColor(Landroid/content/res/TypedArray;II)I
    .locals 0

    if-nez p0, :cond_0

    goto :goto_0

    .line 12999
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    :goto_0
    return p2
.end method

.method private static obtainDayNightAttributes(Landroid/content/Context;[I)Landroid/content/res/TypedArray;
    .locals 2

    .line 12988
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 12991
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x10302e3

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 12992
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    .line 12993
    invoke-virtual {p0, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    .line 13133
    iget v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    return v0
.end method

.method public getContrastColor()I
    .locals 1

    .line 13179
    iget v0, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    return v0
.end method

.method public getErrorColor()I
    .locals 1

    .line 13184
    iget v0, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    return v0
.end method

.method public getOnAccentTextColor()I
    .locals 1

    .line 13171
    iget v0, p0, Landroid/app/Notification$Colors;->mOnAccentTextColor:I

    return v0
.end method

.method public getPrimaryAccentColor()I
    .locals 1

    .line 13156
    iget v0, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    return v0
.end method

.method public getPrimaryTextColor()I
    .locals 1

    .line 13146
    iget v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    return v0
.end method

.method public getProtectionColor()I
    .locals 1

    .line 13141
    iget v0, p0, Landroid/app/Notification$Colors;->mProtectionColor:I

    return v0
.end method

.method public getRippleAlpha()I
    .locals 1

    .line 13189
    iget v0, p0, Landroid/app/Notification$Colors;->mRippleAlpha:I

    return v0
.end method

.method public getSecondaryAccentColor()I
    .locals 1

    .line 13161
    iget v0, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    return v0
.end method

.method public getSecondaryTextColor()I
    .locals 1

    .line 13151
    iget v0, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    return v0
.end method

.method public getTertiaryAccentColor()I
    .locals 1

    .line 13166
    iget v0, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    return v0
.end method

.method public resolvePalette(Landroid/content/Context;IZZ)V
    .locals 3

    .line 13016
    iget v0, p0, Landroid/app/Notification$Colors;->mPaletteIsForRawColor:I

    if-ne v0, p2, :cond_0

    iget-boolean v0, p0, Landroid/app/Notification$Colors;->mPaletteIsForColorized:Z

    if-ne v0, p3, :cond_0

    iget-boolean v0, p0, Landroid/app/Notification$Colors;->mPaletteIsForNightMode:Z

    if-ne v0, p4, :cond_0

    return-void

    .line 13021
    :cond_0
    iput p2, p0, Landroid/app/Notification$Colors;->mPaletteIsForRawColor:I

    .line 13022
    iput-boolean p3, p0, Landroid/app/Notification$Colors;->mPaletteIsForColorized:Z

    .line 13023
    iput-boolean p4, p0, Landroid/app/Notification$Colors;->mPaletteIsForNightMode:Z

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_4

    if-nez p2, :cond_2

    new-array p2, v2, [I

    const p3, 0x1120026

    aput p3, p2, v1

    .line 13028
    invoke-static {p1, p2}, Landroid/app/Notification$Colors;->obtainDayNightAttributes(Landroid/content/Context;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 13029
    :try_start_0
    invoke-static {p2, v1, v0}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result p3

    iput p3, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_3

    .line 13030
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_1

    .line 13028
    :try_start_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1

    .line 13032
    :cond_2
    iput p2, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 13034
    :cond_3
    :goto_1
    iput v2, p0, Landroid/app/Notification$Colors;->mProtectionColor:I

    .line 13035
    iget p2, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 13036
    invoke-static {p1, p2, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolvePrimaryColor(Landroid/content/Context;IZ)I

    move-result p2

    iget p3, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    const-wide/high16 v0, 0x4012000000000000L    # 4.5

    .line 13035
    invoke-static {p2, p3, v0, v1}, Lcom/android/internal/util/ContrastColorUtil;->findAlphaToMeetContrast(IID)I

    move-result p2

    iput p2, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    .line 13038
    iget p2, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 13039
    invoke-static {p1, p2, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolveSecondaryColor(Landroid/content/Context;IZ)I

    move-result p1

    iget p2, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 13038
    invoke-static {p1, p2, v0, v1}, Lcom/android/internal/util/ContrastColorUtil;->findAlphaToMeetContrast(IID)I

    move-result p1

    iput p1, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    .line 13041
    iget p2, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iput p2, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    .line 13042
    iput p2, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    .line 13043
    iput p1, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    .line 13044
    iget p1, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {p2, p1}, Landroid/app/Notification$Colors;->flattenAlpha(II)I

    move-result p1

    iput p1, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    .line 13045
    iget p1, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    iput p1, p0, Landroid/app/Notification$Colors;->mOnAccentTextColor:I

    .line 13046
    iget p1, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iput p1, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    const/16 p1, 0x33

    .line 13047
    iput p1, p0, Landroid/app/Notification$Colors;->mRippleAlpha:I

    goto/16 :goto_2

    :cond_4
    const/16 p3, 0xa

    new-array p3, p3, [I

    .line 13049
    fill-array-data p3, :array_0

    .line 13061
    invoke-static {p1, p3}, Landroid/app/Notification$Colors;->obtainDayNightAttributes(Landroid/content/Context;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    if-eqz p4, :cond_5

    const/high16 v0, -0x1000000

    .line 13062
    :cond_5
    :try_start_2
    invoke-static {p3, v1, v0}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 13063
    invoke-static {p3, v2, v2}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mProtectionColor:I

    const/4 v0, 0x2

    .line 13064
    invoke-static {p3, v0, v2}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    const/4 v0, 0x3

    .line 13065
    invoke-static {p3, v0, v2}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    const/4 v0, 0x4

    .line 13066
    invoke-static {p3, v0, v2}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    const/4 v0, 0x5

    .line 13067
    invoke-static {p3, v0, v2}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    const/4 v0, 0x6

    .line 13068
    invoke-static {p3, v0, v2}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    const/4 v0, 0x7

    .line 13069
    invoke-static {p3, v0, v2}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mOnAccentTextColor:I

    const/16 v0, 0x8

    .line 13070
    invoke-static {p3, v0, v2}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    const/16 v0, 0x9

    const v1, 0x33ffffff

    .line 13071
    invoke-static {p3, v0, v1}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mRippleAlpha:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p3, :cond_6

    .line 13072
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->close()V

    .line 13073
    :cond_6
    iget p3, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    iget v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {p1, p2, p3, v0, p4}, Landroid/app/Notification$Colors;->calculateContrastColor(Landroid/content/Context;IIIZ)I

    move-result p2

    iput p2, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    .line 13077
    iget p2, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    if-ne p2, v2, :cond_7

    .line 13078
    iget p2, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {p1, p2, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolvePrimaryColor(Landroid/content/Context;IZ)I

    move-result p2

    iput p2, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    .line 13081
    :cond_7
    iget p2, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    if-ne p2, v2, :cond_8

    .line 13082
    iget p2, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {p1, p2, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolveSecondaryColor(Landroid/content/Context;IZ)I

    move-result p2

    iput p2, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    .line 13085
    :cond_8
    iget p2, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    if-ne p2, v2, :cond_9

    .line 13086
    iget p2, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    iput p2, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    .line 13088
    :cond_9
    iget p2, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    if-ne p2, v2, :cond_a

    .line 13089
    iget p2, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    iput p2, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    .line 13091
    :cond_a
    iget p2, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    if-ne p2, v2, :cond_b

    .line 13092
    iget p2, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    iput p2, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    .line 13094
    :cond_b
    iget p2, p0, Landroid/app/Notification$Colors;->mOnAccentTextColor:I

    if-ne p2, v2, :cond_c

    .line 13095
    iget p2, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    .line 13096
    invoke-static {p1, p2, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolvePrimaryColor(Landroid/content/Context;IZ)I

    move-result p1

    const/16 p2, 0xff

    .line 13095
    invoke-static {p1, p2}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    iput p1, p0, Landroid/app/Notification$Colors;->mOnAccentTextColor:I

    .line 13099
    :cond_c
    iget p1, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    if-ne p1, v2, :cond_d

    .line 13100
    iget p1, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iput p1, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    .line 13104
    :cond_d
    :goto_2
    iget p1, p0, Landroid/app/Notification$Colors;->mProtectionColor:I

    if-ne p1, v2, :cond_e

    .line 13105
    iget p1, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iget p2, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    const p3, 0x3f4ccccd    # 0.8f

    invoke-static {p1, p2, p3}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    iput p1, p0, Landroid/app/Notification$Colors;->mProtectionColor:I

    :cond_e
    return-void

    :catchall_2
    move-exception p1

    if-eqz p3, :cond_f

    .line 13061
    :try_start_3
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f
    :goto_3
    throw p1

    :array_0
    .array-data 4
        0x112002d
        0x10104e2
        0x1010036
        0x1010038
        0x1010435
        0x1120026
        0x1120028
        0x11200ee
        0x1010543
        0x101042c
    .end array-data
.end method
