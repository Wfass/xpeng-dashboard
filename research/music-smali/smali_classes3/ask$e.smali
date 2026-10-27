.class Lask$e;
.super Ljava/lang/Object;
.source "AudioFocusModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lask;

.field private b:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field private c:Landroid/animation/ValueAnimator;

.field private d:Landroid/animation/ValueAnimator;

.field private e:Landroid/animation/ValueAnimator;

.field private f:F

.field private g:F


# direct methods
.method private constructor <init>(Lask;)V
    .locals 0

    .line 838
    iput-object p1, p0, Lask$e;->a:Lask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 844
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lask$e;->b:Landroid/view/animation/AccelerateDecelerateInterpolator;

    const/4 p1, 0x0

    .line 846
    iput-object p1, p0, Lask$e;->c:Landroid/animation/ValueAnimator;

    .line 847
    iput-object p1, p0, Lask$e;->d:Landroid/animation/ValueAnimator;

    .line 848
    iput-object p1, p0, Lask$e;->e:Landroid/animation/ValueAnimator;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 849
    iput p1, p0, Lask$e;->f:F

    .line 850
    iput p1, p0, Lask$e;->g:F

    return-void
.end method

.method synthetic constructor <init>(Lask;Lask$1;)V
    .locals 0

    .line 838
    invoke-direct {p0, p1}, Lask$e;-><init>(Lask;)V

    return-void
.end method

.method static synthetic a(Lask$e;)F
    .locals 0

    .line 838
    iget p0, p0, Lask$e;->g:F

    return p0
.end method

.method static synthetic a(Lask$e;F)F
    .locals 0

    .line 838
    iput p1, p0, Lask$e;->g:F

    return p1
.end method

.method static synthetic b(Lask$e;F)F
    .locals 0

    .line 838
    iput p1, p0, Lask$e;->f:F

    return p1
.end method

.method static synthetic b(Lask$e;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 838
    iget-object p0, p0, Lask$e;->e:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic c(Lask$e;)F
    .locals 0

    .line 838
    iget p0, p0, Lask$e;->f:F

    return p0
.end method


# virtual methods
.method a()F
    .locals 8

    const-string v0, "AudioFocusModel"

    const/4 v1, 0x3

    .line 930
    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/g;->b(I)I

    move-result v1

    const/16 v2, 0x9

    const/high16 v3, 0x3f800000    # 1.0f

    .line 933
    :try_start_0
    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/g;->b(I)I

    move-result v2

    const/16 v4, 0xa

    .line 934
    invoke-static {v4}, Lcom/xiaopeng/musicradio/utils/g;->b(I)I

    move-result v4

    const/4 v5, 0x0

    if-lez v2, :cond_0

    if-lez v4, :cond_0

    .line 938
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_0

    :cond_0
    if-lez v2, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    if-lez v4, :cond_2

    move v5, v4

    :cond_2
    :goto_0
    if-le v5, v1, :cond_3

    move v5, v1

    .line 947
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u5bfc\u822a(stream 9)\u97f3\u91cf: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", TTS(stream 10)\u64ad\u62a5\u97f3\u91cf: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", \u5f53\u524d\u97f3\u4e50\u97f3\u91cf(stream 3)\uff1a "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", minRef: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez v5, :cond_4

    if-lez v1, :cond_4

    int-to-float v0, v5

    float-to-double v4, v0

    const-wide v6, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v4, v6

    int-to-double v0, v1

    div-double/2addr v4, v0

    double-to-float v0, v4

    goto :goto_2

    :cond_4
    const-string/jumbo v1, "\u6761\u4ef6\u4e0d\u6ee1\u8db3\uff0c\u4fdd\u6301\u97f3\u4e50\u97f3\u91cf"

    .line 967
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 970
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    move v0, v3

    :goto_2
    cmpl-float v1, v0, v3

    if-lez v1, :cond_5

    move v0, v3

    :cond_5
    return v0
.end method

.method a(Lask$c;)V
    .locals 4

    .line 860
    invoke-virtual {p0}, Lask$e;->c()V

    .line 861
    iget v0, p0, Lask$e;->g:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 862
    :goto_0
    invoke-virtual {p0}, Lask$e;->a()F

    move-result v1

    .line 863
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lvf "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AudioFocusModel"

    invoke-static {v3, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    cmpl-float v2, v0, v1

    if-nez v2, :cond_1

    .line 865
    iput v1, p0, Lask$e;->g:F

    .line 866
    invoke-interface {p1, v1}, Lask$c;->updateSoundVolume(F)V

    return-void

    :cond_1
    const/4 v2, 0x2

    .line 869
    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lask$e;->c:Landroid/animation/ValueAnimator;

    .line 870
    iget-object v0, p0, Lask$e;->c:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 871
    iget-object v0, p0, Lask$e;->c:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lask$e;->b:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 872
    iget-object v0, p0, Lask$e;->c:Landroid/animation/ValueAnimator;

    new-instance v2, Lask$e$1;

    invoke-direct {v2, p0, p1}, Lask$e$1;-><init>(Lask$e;Lask$c;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 879
    iget-object p1, p0, Lask$e;->c:Landroid/animation/ValueAnimator;

    new-instance v0, Lask$e$2;

    invoke-direct {v0, p0, v1}, Lask$e$2;-><init>(Lask$e;F)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 885
    iget-object p1, p0, Lask$e;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method a(Lask$d;)V
    .locals 5

    .line 1002
    invoke-virtual {p0}, Lask$e;->d()V

    .line 1005
    iget v0, p0, Lask$e;->f:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v2, :cond_0

    cmpg-float v2, v0, v3

    if-gez v2, :cond_0

    .line 1006
    iget v2, p0, Lask$e;->g:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0

    .line 1008
    :cond_0
    iget v0, p0, Lask$e;->g:F

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1010
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fvd() called: start = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " end = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AudioFocusModel"

    invoke-static {v3, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1011
    iget-object v2, p0, Lask$e;->a:Lask;

    invoke-static {v2}, Lask;->n(Lask;)Z

    move-result v2

    if-nez v2, :cond_2

    cmpl-float v2, v0, v1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    .line 1016
    new-array v2, v2, [F

    const/4 v4, 0x0

    aput v0, v2, v4

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lask$e;->e:Landroid/animation/ValueAnimator;

    .line 1017
    iget-object v0, p0, Lask$e;->e:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1018
    iget-object v0, p0, Lask$e;->e:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lask$e;->b:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1019
    iget-object v0, p0, Lask$e;->e:Landroid/animation/ValueAnimator;

    new-instance v1, Lask$e$5;

    invoke-direct {v1, p0, p1}, Lask$e$5;-><init>(Lask$e;Lask$d;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1026
    iget-object v0, p0, Lask$e;->e:Landroid/animation/ValueAnimator;

    new-instance v1, Lask$e$6;

    invoke-direct {v1, p0, p1}, Lask$e$6;-><init>(Lask$e;Lask$d;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1038
    iget-object p1, p0, Lask$e;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    const-string p1, "fvd:end"

    .line 1039
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1012
    :cond_2
    :goto_1
    invoke-interface {p1, v1}, Lask$d;->updateSoundVolume(F)V

    .line 1013
    invoke-interface {p1}, Lask$d;->changeState()V

    return-void
.end method

.method b(Lask$c;)V
    .locals 4

    .line 892
    invoke-virtual {p0}, Lask$e;->c()V

    .line 893
    invoke-virtual {p0}, Lask$e;->a()F

    move-result v0

    .line 894
    iget v1, p0, Lask$e;->g:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 896
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hvf "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AudioFocusModel"

    invoke-static {v3, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    cmpl-float v1, v0, v2

    if-nez v1, :cond_0

    .line 901
    iput v2, p0, Lask$e;->g:F

    .line 902
    invoke-interface {p1, v2}, Lask$c;->updateSoundVolume(F)V

    return-void

    :cond_0
    const/4 v1, 0x2

    .line 905
    new-array v1, v1, [F

    const/4 v3, 0x0

    aput v0, v1, v3

    const/4 v0, 0x1

    aput v2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lask$e;->c:Landroid/animation/ValueAnimator;

    .line 906
    iget-object v0, p0, Lask$e;->c:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 907
    iget-object v0, p0, Lask$e;->c:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lask$e;->b:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 908
    iget-object v0, p0, Lask$e;->c:Landroid/animation/ValueAnimator;

    new-instance v1, Lask$e$3;

    invoke-direct {v1, p0, p1}, Lask$e$3;-><init>(Lask$e;Lask$c;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 920
    iget-object p1, p0, Lask$e;->c:Landroid/animation/ValueAnimator;

    new-instance v0, Lask$e$4;

    invoke-direct {v0, p0}, Lask$e$4;-><init>(Lask$e;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 926
    iget-object p1, p0, Lask$e;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method b(Lask$d;)V
    .locals 6

    .line 1043
    invoke-virtual {p0}, Lask$e;->d()V

    .line 1045
    iget v0, p0, Lask$e;->g:F

    .line 1046
    iget v1, p0, Lask$e;->f:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const/high16 v4, 0x3f800000    # 1.0f

    if-lez v3, :cond_0

    cmpg-float v3, v1, v4

    if-gez v3, :cond_0

    .line 1047
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_0

    .line 1049
    :cond_0
    iget v1, p0, Lask$e;->g:F

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1051
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fvp() start = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " end = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "AudioFocusModel"

    invoke-static {v5, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    cmpl-float v3, v1, v0

    if-nez v3, :cond_1

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_1

    .line 1053
    invoke-interface {p1}, Lask$d;->changeState()V

    .line 1054
    invoke-interface {p1, v1}, Lask$d;->updateSoundVolume(F)V

    return-void

    :cond_1
    cmpl-float v2, v0, v2

    if-nez v2, :cond_2

    move v0, v4

    :cond_2
    const/4 v2, 0x2

    .line 1060
    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lask$e;->d:Landroid/animation/ValueAnimator;

    .line 1061
    iget-object v0, p0, Lask$e;->d:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1062
    iget-object v0, p0, Lask$e;->d:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lask$e;->b:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1063
    iget-object v0, p0, Lask$e;->d:Landroid/animation/ValueAnimator;

    new-instance v1, Lask$e$7;

    invoke-direct {v1, p0, p1}, Lask$e$7;-><init>(Lask$e;Lask$d;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1070
    iget-object v0, p0, Lask$e;->d:Landroid/animation/ValueAnimator;

    new-instance v1, Lask$e$8;

    invoke-direct {v1, p0, p1}, Lask$e$8;-><init>(Lask$e;Lask$d;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1087
    iget-object p1, p0, Lask$e;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    const-string p1, "fvp:end"

    .line 1088
    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method b()Z
    .locals 1

    .line 980
    iget-object v0, p0, Lask$e;->c:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lask$e;->d:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 981
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lask$e;->e:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 982
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method c()V
    .locals 1

    .line 986
    iget-object v0, p0, Lask$e;->c:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 987
    iget-object v0, p0, Lask$e;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method d()V
    .locals 2

    const-string v0, "AudioFocusModel"

    const-string v1, "svf: =========="

    .line 992
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    iget-object v0, p0, Lask$e;->d:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 994
    iget-object v0, p0, Lask$e;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 996
    :cond_0
    iget-object v0, p0, Lask$e;->e:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 997
    iget-object v0, p0, Lask$e;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method e()V
    .locals 2

    const-string v0, "AudioFocusModel"

    const-string v1, "rv: ="

    .line 1093
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    iget-object v0, p0, Lask$e;->c:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1095
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1097
    :cond_0
    iget-object v0, p0, Lask$e;->d:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 1098
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1100
    :cond_1
    iget-object v0, p0, Lask$e;->e:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 1101
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1103
    iput v0, p0, Lask$e;->g:F

    .line 1104
    iput v0, p0, Lask$e;->f:F

    return-void
.end method
