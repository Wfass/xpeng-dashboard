.class public Ldd$a;
.super Ljava/lang/Object;
.source "MotionScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldd$a$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:F

.field private final j:Ldd;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcr;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lde;

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ldd$a$a;",
            ">;"
        }
    .end annotation
.end field

.field private n:I

.field private o:Z

.field private p:I

.field private q:I

.field private r:I


# direct methods
.method public constructor <init>(ILdd;II)V
    .locals 4

    .line 913
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 474
    iput v0, p0, Ldd$a;->a:I

    const/4 v1, 0x0

    .line 475
    iput-boolean v1, p0, Ldd$a;->b:Z

    .line 476
    iput v0, p0, Ldd$a;->c:I

    .line 477
    iput v0, p0, Ldd$a;->d:I

    .line 478
    iput v1, p0, Ldd$a;->e:I

    const/4 v2, 0x0

    .line 479
    iput-object v2, p0, Ldd$a;->f:Ljava/lang/String;

    .line 480
    iput v0, p0, Ldd$a;->g:I

    const/16 v3, 0x190

    .line 481
    iput v3, p0, Ldd$a;->h:I

    const/4 v3, 0x0

    .line 482
    iput v3, p0, Ldd$a;->i:F

    .line 484
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Ldd$a;->k:Ljava/util/ArrayList;

    .line 485
    iput-object v2, p0, Ldd$a;->l:Lde;

    .line 486
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Ldd$a;->m:Ljava/util/ArrayList;

    .line 487
    iput v1, p0, Ldd$a;->n:I

    .line 493
    iput-boolean v1, p0, Ldd$a;->o:Z

    .line 494
    iput v0, p0, Ldd$a;->p:I

    .line 495
    iput v1, p0, Ldd$a;->q:I

    .line 496
    iput v1, p0, Ldd$a;->r:I

    .line 914
    iput p1, p0, Ldd$a;->a:I

    .line 915
    iput-object p2, p0, Ldd$a;->j:Ldd;

    .line 916
    iput p3, p0, Ldd$a;->d:I

    .line 917
    iput p4, p0, Ldd$a;->c:I

    .line 918
    invoke-static {p2}, Ldd;->b(Ldd;)I

    move-result p1

    iput p1, p0, Ldd$a;->h:I

    .line 919
    invoke-static {p2}, Ldd;->c(Ldd;)I

    move-result p1

    iput p1, p0, Ldd$a;->q:I

    return-void
.end method

.method constructor <init>(Ldd;Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    .line 922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 474
    iput v0, p0, Ldd$a;->a:I

    const/4 v1, 0x0

    .line 475
    iput-boolean v1, p0, Ldd$a;->b:Z

    .line 476
    iput v0, p0, Ldd$a;->c:I

    .line 477
    iput v0, p0, Ldd$a;->d:I

    .line 478
    iput v1, p0, Ldd$a;->e:I

    const/4 v2, 0x0

    .line 479
    iput-object v2, p0, Ldd$a;->f:Ljava/lang/String;

    .line 480
    iput v0, p0, Ldd$a;->g:I

    const/16 v3, 0x190

    .line 481
    iput v3, p0, Ldd$a;->h:I

    const/4 v3, 0x0

    .line 482
    iput v3, p0, Ldd$a;->i:F

    .line 484
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Ldd$a;->k:Ljava/util/ArrayList;

    .line 485
    iput-object v2, p0, Ldd$a;->l:Lde;

    .line 486
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Ldd$a;->m:Ljava/util/ArrayList;

    .line 487
    iput v1, p0, Ldd$a;->n:I

    .line 493
    iput-boolean v1, p0, Ldd$a;->o:Z

    .line 494
    iput v0, p0, Ldd$a;->p:I

    .line 495
    iput v1, p0, Ldd$a;->q:I

    .line 496
    iput v1, p0, Ldd$a;->r:I

    .line 923
    invoke-static {p1}, Ldd;->b(Ldd;)I

    move-result v0

    iput v0, p0, Ldd$a;->h:I

    .line 924
    invoke-static {p1}, Ldd;->c(Ldd;)I

    move-result v0

    iput v0, p0, Ldd$a;->q:I

    .line 925
    iput-object p1, p0, Ldd$a;->j:Ldd;

    .line 926
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Ldd$a;->a(Ldd;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Ldd;Ldd$a;)V
    .locals 4

    .line 885
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 474
    iput v0, p0, Ldd$a;->a:I

    const/4 v1, 0x0

    .line 475
    iput-boolean v1, p0, Ldd$a;->b:Z

    .line 476
    iput v0, p0, Ldd$a;->c:I

    .line 477
    iput v0, p0, Ldd$a;->d:I

    .line 478
    iput v1, p0, Ldd$a;->e:I

    const/4 v2, 0x0

    .line 479
    iput-object v2, p0, Ldd$a;->f:Ljava/lang/String;

    .line 480
    iput v0, p0, Ldd$a;->g:I

    const/16 v3, 0x190

    .line 481
    iput v3, p0, Ldd$a;->h:I

    const/4 v3, 0x0

    .line 482
    iput v3, p0, Ldd$a;->i:F

    .line 484
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Ldd$a;->k:Ljava/util/ArrayList;

    .line 485
    iput-object v2, p0, Ldd$a;->l:Lde;

    .line 486
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Ldd$a;->m:Ljava/util/ArrayList;

    .line 487
    iput v1, p0, Ldd$a;->n:I

    .line 493
    iput-boolean v1, p0, Ldd$a;->o:Z

    .line 494
    iput v0, p0, Ldd$a;->p:I

    .line 495
    iput v1, p0, Ldd$a;->q:I

    .line 496
    iput v1, p0, Ldd$a;->r:I

    .line 886
    iput-object p1, p0, Ldd$a;->j:Ldd;

    .line 887
    invoke-static {p1}, Ldd;->b(Ldd;)I

    move-result p1

    iput p1, p0, Ldd$a;->h:I

    if-eqz p2, :cond_0

    .line 889
    iget p1, p2, Ldd$a;->p:I

    iput p1, p0, Ldd$a;->p:I

    .line 890
    iget p1, p2, Ldd$a;->e:I

    iput p1, p0, Ldd$a;->e:I

    .line 891
    iget-object p1, p2, Ldd$a;->f:Ljava/lang/String;

    iput-object p1, p0, Ldd$a;->f:Ljava/lang/String;

    .line 892
    iget p1, p2, Ldd$a;->g:I

    iput p1, p0, Ldd$a;->g:I

    .line 893
    iget p1, p2, Ldd$a;->h:I

    iput p1, p0, Ldd$a;->h:I

    .line 894
    iget-object p1, p2, Ldd$a;->k:Ljava/util/ArrayList;

    iput-object p1, p0, Ldd$a;->k:Ljava/util/ArrayList;

    .line 895
    iget p1, p2, Ldd$a;->i:F

    iput p1, p0, Ldd$a;->i:F

    .line 896
    iget p1, p2, Ldd$a;->q:I

    iput p1, p0, Ldd$a;->q:I

    :cond_0
    return-void
.end method

.method static synthetic a(Ldd$a;)I
    .locals 0

    .line 473
    iget p0, p0, Ldd$a;->c:I

    return p0
.end method

.method static synthetic a(Ldd$a;I)I
    .locals 0

    .line 473
    iput p1, p0, Ldd$a;->d:I

    return p1
.end method

.method static synthetic a(Ldd$a;Lde;)Lde;
    .locals 0

    .line 473
    iput-object p1, p0, Ldd$a;->l:Lde;

    return-object p1
.end method

.method private a(Ldd;Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 9

    .line 959
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ge v2, v0, :cond_10

    .line 961
    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 962
    sget v6, Landroidx/constraintlayout/widget/h$b;->Transition_constraintSetEnd:I

    const-string v7, "xml"

    const-string v8, "layout"

    if-ne v5, v6, :cond_1

    .line 963
    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Ldd$a;->c:I

    .line 964
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Ldd$a;->c:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    .line 965
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 966
    new-instance v3, Landroidx/constraintlayout/widget/d;

    invoke-direct {v3}, Landroidx/constraintlayout/widget/d;-><init>()V

    .line 967
    iget v4, p0, Ldd$a;->c:I

    invoke-virtual {v3, p2, v4}, Landroidx/constraintlayout/widget/d;->b(Landroid/content/Context;I)V

    .line 968
    invoke-static {p1}, Ldd;->d(Ldd;)Landroid/util/SparseArray;

    move-result-object v4

    iget v5, p0, Ldd$a;->c:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 972
    :cond_0
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 973
    iget v3, p0, Ldd$a;->c:I

    invoke-static {p1, p2, v3}, Ldd;->a(Ldd;Landroid/content/Context;I)I

    move-result v3

    .line 974
    iput v3, p0, Ldd$a;->c:I

    goto/16 :goto_1

    .line 976
    :cond_1
    sget v6, Landroidx/constraintlayout/widget/h$b;->Transition_constraintSetStart:I

    if-ne v5, v6, :cond_3

    .line 977
    iget v3, p0, Ldd$a;->d:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Ldd$a;->d:I

    .line 978
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Ldd$a;->d:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    .line 979
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 980
    new-instance v3, Landroidx/constraintlayout/widget/d;

    invoke-direct {v3}, Landroidx/constraintlayout/widget/d;-><init>()V

    .line 981
    iget v4, p0, Ldd$a;->d:I

    invoke-virtual {v3, p2, v4}, Landroidx/constraintlayout/widget/d;->b(Landroid/content/Context;I)V

    .line 982
    invoke-static {p1}, Ldd;->d(Ldd;)Landroid/util/SparseArray;

    move-result-object v4

    iget v5, p0, Ldd$a;->d:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 983
    :cond_2
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 984
    iget v3, p0, Ldd$a;->d:I

    invoke-static {p1, p2, v3}, Ldd;->a(Ldd;Landroid/content/Context;I)I

    move-result v3

    .line 985
    iput v3, p0, Ldd$a;->d:I

    goto/16 :goto_1

    .line 987
    :cond_3
    sget v6, Landroidx/constraintlayout/widget/h$b;->Transition_motionInterpolator:I

    if-ne v5, v6, :cond_7

    .line 988
    invoke-virtual {p3, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    .line 990
    iget v7, v6, Landroid/util/TypedValue;->type:I

    const/4 v8, -0x2

    if-ne v7, v3, :cond_4

    .line 991
    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Ldd$a;->g:I

    .line 992
    iget v3, p0, Ldd$a;->g:I

    if-eq v3, v4, :cond_f

    .line 993
    iput v8, p0, Ldd$a;->e:I

    goto/16 :goto_1

    .line 995
    :cond_4
    iget v3, v6, Landroid/util/TypedValue;->type:I

    const/4 v6, 0x3

    if-ne v3, v6, :cond_6

    .line 996
    invoke-virtual {p3, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ldd$a;->f:Ljava/lang/String;

    .line 997
    iget-object v3, p0, Ldd$a;->f:Ljava/lang/String;

    if-eqz v3, :cond_f

    const-string v6, "/"

    .line 998
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_5

    .line 999
    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Ldd$a;->g:I

    .line 1000
    iput v8, p0, Ldd$a;->e:I

    goto/16 :goto_1

    .line 1002
    :cond_5
    iput v4, p0, Ldd$a;->e:I

    goto/16 :goto_1

    .line 1006
    :cond_6
    iget v3, p0, Ldd$a;->e:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Ldd$a;->e:I

    goto/16 :goto_1

    .line 1009
    :cond_7
    sget v3, Landroidx/constraintlayout/widget/h$b;->Transition_duration:I

    if-ne v5, v3, :cond_8

    .line 1010
    iget v3, p0, Ldd$a;->h:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Ldd$a;->h:I

    .line 1011
    iget v3, p0, Ldd$a;->h:I

    const/16 v4, 0x8

    if-ge v3, v4, :cond_f

    .line 1012
    iput v4, p0, Ldd$a;->h:I

    goto :goto_1

    .line 1014
    :cond_8
    sget v3, Landroidx/constraintlayout/widget/h$b;->Transition_staggered:I

    if-ne v5, v3, :cond_9

    .line 1015
    iget v3, p0, Ldd$a;->i:F

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Ldd$a;->i:F

    goto :goto_1

    .line 1016
    :cond_9
    sget v3, Landroidx/constraintlayout/widget/h$b;->Transition_autoTransition:I

    if-ne v5, v3, :cond_a

    .line 1017
    iget v3, p0, Ldd$a;->n:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Ldd$a;->n:I

    goto :goto_1

    .line 1018
    :cond_a
    sget v3, Landroidx/constraintlayout/widget/h$b;->Transition_android_id:I

    if-ne v5, v3, :cond_b

    .line 1019
    iget v3, p0, Ldd$a;->a:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Ldd$a;->a:I

    goto :goto_1

    .line 1020
    :cond_b
    sget v3, Landroidx/constraintlayout/widget/h$b;->Transition_transitionDisable:I

    if-ne v5, v3, :cond_c

    .line 1021
    iget-boolean v3, p0, Ldd$a;->o:Z

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Ldd$a;->o:Z

    goto :goto_1

    .line 1022
    :cond_c
    sget v3, Landroidx/constraintlayout/widget/h$b;->Transition_pathMotionArc:I

    if-ne v5, v3, :cond_d

    .line 1023
    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Ldd$a;->p:I

    goto :goto_1

    .line 1024
    :cond_d
    sget v3, Landroidx/constraintlayout/widget/h$b;->Transition_layoutDuringTransition:I

    if-ne v5, v3, :cond_e

    .line 1025
    invoke-virtual {p3, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Ldd$a;->q:I

    goto :goto_1

    .line 1026
    :cond_e
    sget v3, Landroidx/constraintlayout/widget/h$b;->Transition_transitionFlags:I

    if-ne v5, v3, :cond_f

    .line 1027
    invoke-virtual {p3, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Ldd$a;->r:I

    :cond_f
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1030
    :cond_10
    iget p1, p0, Ldd$a;->d:I

    if-ne p1, v4, :cond_11

    .line 1031
    iput-boolean v3, p0, Ldd$a;->b:Z

    :cond_11
    return-void
.end method

.method private a(Ldd;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 953
    sget-object v0, Landroidx/constraintlayout/widget/h$b;->Transition:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 954
    invoke-direct {p0, p1, p2, p3}, Ldd$a;->a(Ldd;Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 955
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic b(Ldd$a;)I
    .locals 0

    .line 473
    iget p0, p0, Ldd$a;->d:I

    return p0
.end method

.method static synthetic b(Ldd$a;I)I
    .locals 0

    .line 473
    iput p1, p0, Ldd$a;->c:I

    return p1
.end method

.method static synthetic c(Ldd$a;)Lde;
    .locals 0

    .line 473
    iget-object p0, p0, Ldd$a;->l:Lde;

    return-object p0
.end method

.method static synthetic d(Ldd$a;)I
    .locals 0

    .line 473
    iget p0, p0, Ldd$a;->a:I

    return p0
.end method

.method static synthetic e(Ldd$a;)Ljava/util/ArrayList;
    .locals 0

    .line 473
    iget-object p0, p0, Ldd$a;->m:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic f(Ldd$a;)Z
    .locals 0

    .line 473
    iget-boolean p0, p0, Ldd$a;->o:Z

    return p0
.end method

.method static synthetic g(Ldd$a;)I
    .locals 0

    .line 473
    iget p0, p0, Ldd$a;->n:I

    return p0
.end method

.method static synthetic h(Ldd$a;)Ldd;
    .locals 0

    .line 473
    iget-object p0, p0, Ldd$a;->j:Ldd;

    return-object p0
.end method

.method static synthetic i(Ldd$a;)Z
    .locals 0

    .line 473
    iget-boolean p0, p0, Ldd$a;->b:Z

    return p0
.end method

.method static synthetic j(Ldd$a;)Ljava/util/ArrayList;
    .locals 0

    .line 473
    iget-object p0, p0, Ldd$a;->k:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic k(Ldd$a;)I
    .locals 0

    .line 473
    iget p0, p0, Ldd$a;->e:I

    return p0
.end method

.method static synthetic l(Ldd$a;)Ljava/lang/String;
    .locals 0

    .line 473
    iget-object p0, p0, Ldd$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic m(Ldd$a;)I
    .locals 0

    .line 473
    iget p0, p0, Ldd$a;->g:I

    return p0
.end method

.method static synthetic n(Ldd$a;)I
    .locals 0

    .line 473
    iget p0, p0, Ldd$a;->h:I

    return p0
.end method

.method static synthetic o(Ldd$a;)I
    .locals 0

    .line 473
    iget p0, p0, Ldd$a;->p:I

    return p0
.end method

.method static synthetic p(Ldd$a;)F
    .locals 0

    .line 473
    iget p0, p0, Ldd$a;->i:F

    return p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 539
    iget v0, p0, Ldd$a;->q:I

    return v0
.end method

.method public a(I)V
    .locals 1

    const/16 v0, 0x8

    .line 605
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Ldd$a;->h:I

    return-void
.end method

.method public a(ILjava/lang/String;I)V
    .locals 0

    .line 947
    iput p1, p0, Ldd$a;->e:I

    .line 948
    iput-object p2, p0, Ldd$a;->f:Ljava/lang/String;

    .line 949
    iput p3, p0, Ldd$a;->g:I

    return-void
.end method

.method public a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    .line 547
    iget-object v0, p0, Ldd$a;->m:Ljava/util/ArrayList;

    new-instance v1, Ldd$a$a;

    invoke-direct {v1, p1, p0, p2}, Ldd$a$a;-><init>(Landroid/content/Context;Ldd$a;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcr;)V
    .locals 1

    .line 634
    iget-object v0, p0, Ldd$a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()I
    .locals 1

    .line 568
    iget v0, p0, Ldd$a;->n:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .line 673
    iput p1, p0, Ldd$a;->p:I

    return-void
.end method

.method public c()I
    .locals 1

    .line 586
    iget v0, p0, Ldd$a;->c:I

    return v0
.end method

.method public c(I)Z
    .locals 1

    .line 740
    iget v0, p0, Ldd$a;->r:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d()I
    .locals 1

    .line 595
    iget v0, p0, Ldd$a;->d:I

    return v0
.end method

.method public e()Lde;
    .locals 1

    .line 652
    iget-object v0, p0, Ldd$a;->l:Lde;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 691
    iget-boolean v0, p0, Ldd$a;->o:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
