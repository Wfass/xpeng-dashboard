.class public abstract Landroid/support/transition/Visibility;
.super Landroid/support/transition/Transition;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/Visibility$DisappearListener;,
        Landroid/support/transition/Visibility$VisibilityInfo;,
        Landroid/support/transition/Visibility$Mode;
    }
.end annotation


# static fields
.field public static final MODE_IN:I = 0x1

.field public static final MODE_OUT:I = 0x2

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:visibility:parent"

.field private static final PROPNAME_SCREEN_LOCATION:Ljava/lang/String; = "android:visibility:screenLocation"

.field static final PROPNAME_VISIBILITY:Ljava/lang/String; = "android:visibility:visibility"

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 79
    const-string v0, "android:visibility:visibility"

    const-string v1, "android:visibility:parent"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 95
    invoke-direct {p0}, Landroid/support/transition/Transition;-><init>()V

    .line 93
    const/4 v0, 0x3

    iput v0, p0, Landroid/support/transition/Visibility;->mMode:I

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/support/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    const/4 v0, 0x3

    iput v0, p0, Landroid/support/transition/Visibility;->mMode:I

    .line 100
    sget-object v0, Landroid/support/transition/Styleable;->VISIBILITY_TRANSITION:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 102
    check-cast p2, Landroid/content/res/XmlResourceParser;

    const-string v0, "transitionVisibilityMode"

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result p2

    .line 105
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    if-eqz p2, :cond_0

    .line 107
    invoke-virtual {p0, p2}, Landroid/support/transition/Visibility;->setMode(I)V

    .line 109
    :cond_0
    return-void
.end method

.method private captureValues(Landroid/support/transition/TransitionValues;)V
    .locals 3

    .line 143
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 144
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:visibility:parent"

    iget-object v2, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 147
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 148
    iget-object p1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:visibility:screenLocation"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    return-void
.end method

.method private getVisibilityChangeInfo(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/support/transition/Visibility$VisibilityInfo;
    .locals 6

    .line 188
    new-instance v0, Landroid/support/transition/Visibility$VisibilityInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/transition/Visibility$VisibilityInfo;-><init>(Landroid/support/transition/Visibility$1;)V

    .line 189
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 190
    iput-boolean v2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 191
    const/4 v3, -0x1

    if-eqz p1, :cond_0

    iget-object v4, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:visibility:visibility"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 192
    iget-object v4, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:visibility:visibility"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    .line 193
    iget-object v4, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:visibility:parent"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    goto :goto_0

    .line 195
    :cond_0
    iput v3, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    .line 196
    iput-object v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    .line 198
    :goto_0
    if-eqz p2, :cond_1

    iget-object v4, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:visibility:visibility"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 199
    iget-object v1, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:visibility"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    .line 200
    iget-object v1, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:parent"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    goto :goto_1

    .line 202
    :cond_1
    iput v3, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    .line 203
    iput-object v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    .line 205
    :goto_1
    const/4 v1, 0x1

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 206
    iget p1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget p2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-ne p1, p2, :cond_2

    iget-object p1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    iget-object p2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-ne p1, p2, :cond_2

    .line 208
    return-object v0

    .line 210
    :cond_2
    iget p1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget p2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-eq p1, p2, :cond_4

    .line 211
    iget p1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-nez p1, :cond_3

    .line 212
    iput-boolean v2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 213
    iput-boolean v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2

    .line 214
    :cond_3
    iget p1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez p1, :cond_8

    .line 215
    iput-boolean v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 216
    iput-boolean v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2

    .line 220
    :cond_4
    iget-object p1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-nez p1, :cond_5

    .line 221
    iput-boolean v2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 222
    iput-boolean v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2

    .line 223
    :cond_5
    iget-object p1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    if-nez p1, :cond_8

    .line 224
    iput-boolean v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 225
    iput-boolean v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2

    .line 229
    :cond_6
    if-nez p1, :cond_7

    iget p1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez p1, :cond_7

    .line 230
    iput-boolean v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 231
    iput-boolean v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2

    .line 232
    :cond_7
    if-nez p2, :cond_8

    iget p1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-nez p1, :cond_8

    .line 233
    iput-boolean v2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 234
    iput-boolean v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 236
    :cond_8
    :goto_2
    return-object v0
.end method


# virtual methods
.method public captureEndValues(Landroid/support/transition/TransitionValues;)V
    .locals 0
    .param p1    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 158
    invoke-direct {p0, p1}, Landroid/support/transition/Visibility;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 159
    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .locals 0
    .param p1    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 153
    invoke-direct {p0, p1}, Landroid/support/transition/Visibility;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 154
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 8
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 243
    invoke-direct {p0, p2, p3}, Landroid/support/transition/Visibility;->getVisibilityChangeInfo(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/support/transition/Visibility$VisibilityInfo;

    move-result-object v0

    .line 244
    iget-boolean v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 246
    :cond_0
    iget-boolean v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    if-eqz v1, :cond_1

    .line 247
    iget v5, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget v7, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/support/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    .line 250
    :cond_1
    iget v3, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget v5, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    .line 255
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMode()I
    .locals 1

    .line 133
    iget v0, p0, Landroid/support/transition/Visibility;->mMode:I

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 139
    sget-object v0, Landroid/support/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public isTransitionRequired(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Z
    .locals 4

    .line 459
    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 460
    return v0

    .line 462
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object v1, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    .line 463
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:visibility"

    .line 464
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eq v1, v2, :cond_1

    .line 467
    return v0

    .line 469
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/support/transition/Visibility;->getVisibilityChangeInfo(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/support/transition/Visibility$VisibilityInfo;

    move-result-object p1

    .line 470
    iget-boolean p2, p1, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-eqz p2, :cond_3

    iget p2, p1, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-eqz p2, :cond_2

    iget p1, p1, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    nop

    :cond_3
    return v0
.end method

.method public isVisible(Landroid/support/transition/TransitionValues;)Z
    .locals 3

    .line 177
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 178
    return v0

    .line 180
    :cond_0
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 181
    iget-object p1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:parent"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 183
    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 2

    .line 276
    iget p3, p0, Landroid/support/transition/Visibility;->mMode:I

    const/4 p5, 0x1

    and-int/2addr p3, p5

    const/4 v0, 0x0

    if-ne p3, p5, :cond_2

    if-nez p4, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    if-nez p2, :cond_1

    .line 280
    iget-object p3, p4, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 281
    const/4 p5, 0x0

    invoke-virtual {p0, p3, p5}, Landroid/support/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v1

    .line 283
    invoke-virtual {p0, p3, p5}, Landroid/support/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object p3

    .line 284
    nop

    .line 285
    invoke-direct {p0, v1, p3}, Landroid/support/transition/Visibility;->getVisibilityChangeInfo(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/support/transition/Visibility$VisibilityInfo;

    move-result-object p3

    .line 286
    iget-boolean p3, p3, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-eqz p3, :cond_1

    .line 287
    return-object v0

    .line 290
    :cond_1
    iget-object p3, p4, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, p1, p3, p2, p4}, Landroid/support/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    .line 277
    :cond_2
    :goto_0
    return-object v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    .line 312
    const/4 p1, 0x0

    return-object p1
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 6

    .line 333
    iget p3, p0, Landroid/support/transition/Visibility;->mMode:I

    const/4 v0, 0x2

    and-int/2addr p3, v0

    const/4 v1, 0x0

    if-eq p3, v0, :cond_0

    .line 334
    return-object v1

    .line 337
    :cond_0
    if-eqz p2, :cond_1

    iget-object p3, p2, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_0

    .line 338
    :cond_1
    move-object p3, v1

    :goto_0
    if-eqz p4, :cond_2

    iget-object v2, p4, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_1

    .line 339
    :cond_2
    move-object v2, v1

    .line 340
    :goto_1
    nop

    .line 341
    const/4 v3, 0x1

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_3

    .line 376
    :cond_3
    const/4 v4, 0x4

    if-ne p5, v4, :cond_4

    .line 377
    goto :goto_2

    .line 380
    :cond_4
    if-ne p3, v2, :cond_5

    .line 381
    nop

    .line 390
    :goto_2
    move-object p3, v1

    goto/16 :goto_6

    .line 382
    :cond_5
    iget-boolean v2, p0, Landroid/support/transition/Visibility;->mCanRemoveViews:Z

    if-eqz v2, :cond_6

    .line 383
    goto :goto_4

    .line 385
    :cond_6
    nop

    .line 386
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 385
    invoke-static {p1, p3, v2}, Landroid/support/transition/TransitionUtils;->copyViewImage(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object p3

    goto :goto_4

    .line 342
    :cond_7
    :goto_3
    if-eqz v2, :cond_8

    .line 344
    nop

    .line 390
    move-object p3, v2

    :goto_4
    move-object v2, v1

    goto :goto_6

    .line 345
    :cond_8
    if-eqz p3, :cond_c

    .line 349
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_9

    .line 351
    goto :goto_4

    .line 352
    :cond_9
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_c

    .line 353
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 354
    invoke-virtual {p0, v2, v3}, Landroid/support/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v4

    .line 355
    invoke-virtual {p0, v2, v3}, Landroid/support/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v5

    .line 357
    nop

    .line 358
    invoke-direct {p0, v4, v5}, Landroid/support/transition/Visibility;->getVisibilityChangeInfo(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/support/transition/Visibility$VisibilityInfo;

    move-result-object v4

    .line 359
    iget-boolean v4, v4, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-nez v4, :cond_a

    .line 360
    invoke-static {p1, p3, v2}, Landroid/support/transition/TransitionUtils;->copyViewImage(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object p3

    goto :goto_5

    .line 362
    :cond_a
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_b

    .line 363
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    .line 364
    const/4 v4, -0x1

    if-eq v2, v4, :cond_b

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Landroid/support/transition/Visibility;->mCanRemoveViews:Z

    if-eqz v2, :cond_b

    .line 369
    goto :goto_5

    .line 372
    :cond_b
    move-object p3, v1

    :goto_5
    goto :goto_4

    .line 390
    :cond_c
    move-object p3, v1

    move-object v2, p3

    .line 392
    :goto_6
    const/4 v4, 0x0

    if-eqz p3, :cond_e

    if-eqz p2, :cond_e

    .line 394
    iget-object p5, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:visibility:screenLocation"

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [I

    .line 395
    aget v1, p5, v4

    .line 396
    aget p5, p5, v3

    .line 397
    new-array v0, v0, [I

    .line 398
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 399
    aget v2, v0, v4

    sub-int/2addr v1, v2

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p3, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 400
    aget v0, v0, v3

    sub-int/2addr p5, v0

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr p5, v0

    invoke-virtual {p3, p5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 401
    invoke-static {p1}, Landroid/support/transition/ViewGroupUtils;->getOverlay(Landroid/view/ViewGroup;)Landroid/support/transition/ViewGroupOverlayImpl;

    move-result-object p5

    .line 402
    invoke-interface {p5, p3}, Landroid/support/transition/ViewGroupOverlayImpl;->add(Landroid/view/View;)V

    .line 403
    invoke-virtual {p0, p1, p3, p2, p4}, Landroid/support/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    .line 404
    if-nez p1, :cond_d

    .line 405
    invoke-interface {p5, p3}, Landroid/support/transition/ViewGroupOverlayImpl;->remove(Landroid/view/View;)V

    goto :goto_7

    .line 407
    :cond_d
    nop

    .line 408
    new-instance p2, Landroid/support/transition/Visibility$1;

    invoke-direct {p2, p0, p5, p3}, Landroid/support/transition/Visibility$1;-><init>(Landroid/support/transition/Visibility;Landroid/support/transition/ViewGroupOverlayImpl;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 415
    :goto_7
    return-object p1

    .line 418
    :cond_e
    if-eqz v2, :cond_10

    .line 419
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result p3

    .line 420
    invoke-static {v2, v4}, Landroid/support/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    .line 421
    invoke-virtual {p0, p1, v2, p2, p4}, Landroid/support/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    .line 422
    if-eqz p1, :cond_f

    .line 423
    new-instance p2, Landroid/support/transition/Visibility$DisappearListener;

    invoke-direct {p2, v2, p5, v3}, Landroid/support/transition/Visibility$DisappearListener;-><init>(Landroid/view/View;IZ)V

    .line 425
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 426
    invoke-static {p1, p2}, Landroid/support/transition/AnimatorUtils;->addPauseListener(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 427
    invoke-virtual {p0, p2}, Landroid/support/transition/Visibility;->addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    .line 428
    goto :goto_8

    .line 429
    :cond_f
    invoke-static {v2, p3}, Landroid/support/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    .line 431
    :goto_8
    return-object p1

    .line 433
    :cond_10
    return-object v1
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    .line 454
    const/4 p1, 0x0

    return-object p1
.end method

.method public setMode(I)V
    .locals 1

    .line 119
    and-int/lit8 v0, p1, -0x4

    if-nez v0, :cond_0

    .line 122
    iput p1, p0, Landroid/support/transition/Visibility;->mMode:I

    .line 123
    return-void

    .line 120
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only MODE_IN and MODE_OUT flags are allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
