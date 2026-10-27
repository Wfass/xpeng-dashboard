.class public final Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;
.super Landroid/widget/FrameLayout;
.source "CarUiRecyclerViewImpl.java"

# interfaces
.implements Lais$a;
.implements Lcom/android/car/ui/preference/PreferenceFragment$a;
.implements Lcom/android/car/ui/recyclerview/CarUiRecyclerView;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CustomViewStyleable"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl$a;
    }
.end annotation


# static fields
.field private static final LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CarUiRecyclerView"


# instance fields
.field private mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;"
        }
    .end annotation
.end field

.field private final mCarUxRestrictionsUtil:Lair;

.field private mDividerItemDecorationGrid:Lain;

.field private mDividerItemDecorationLinear:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

.field private mEnableDividers:Z

.field private mIsInitialized:Z

.field private mLayoutStyle:Lcom/android/car/ui/recyclerview/d;

.field private final mListener:Lair$a;

.field private mNumOfColumns:I

.field private final mOnLayoutCompletedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mScrollBar:Lcom/android/car/ui/recyclerview/o;

.field private mScrollBarClass:Ljava/lang/String;

.field private mScrollBarEnabled:Z

.field private mScrollBarPaddingBottom:I

.field private mScrollBarPaddingTop:I

.field private final mScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/car/ui/recyclerview/CarUiRecyclerView$c;",
            ">;"
        }
    .end annotation
.end field

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    .line 86
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Landroid/util/AttributeSet;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 147
    invoke-direct {p0, p1, v0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 151
    invoke-direct {p0, p1, p2, v0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 156
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    new-instance v0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl$a;-><init>(Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl$1;)V

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mListener:Lair$a;

    .line 118
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mOnLayoutCompletedListeners:Ljava/util/Set;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mScrollListeners:Ljava/util/List;

    .line 127
    new-instance v0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl$1;

    invoke-direct {v0, p0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl$1;-><init>(Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;)V

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 157
    invoke-static {p1}, Lair;->a(Landroid/content/Context;)Lair;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mCarUxRestrictionsUtil:Lair;

    .line 158
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;)Ljava/util/List;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mScrollListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(I)I
    .locals 0

    .line 79
    invoke-static {p0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->toInternalScrollState(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;)Ljava/util/Set;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mOnLayoutCompletedListeners:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private addItemDecorations(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 2

    .line 540
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mDividerItemDecorationGrid:Lain;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 541
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mDividerItemDecorationLinear:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 543
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_1

    .line 544
    iget-boolean v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mEnableDividers:Z

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mDividerItemDecorationGrid:Lain;

    .line 546
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 545
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 548
    :cond_0
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->setNumOfColumns(I)V

    goto :goto_0

    .line 550
    :cond_1
    iget-boolean p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mEnableDividers:Z

    if-eqz p1, :cond_2

    .line 551
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mDividerItemDecorationLinear:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 552
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 551
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V
    .locals 7

    const-string v0, ": Could not instantiate the LayoutManager: "

    if-eqz p2, :cond_1

    .line 860
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 861
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 862
    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 865
    :try_start_0
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 867
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_0

    .line 869
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    .line 872
    invoke-static {p2, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 873
    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 877
    :try_start_1
    sget-object v5, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 878
    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const/4 v6, 0x4

    .line 879
    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v2

    aput-object p3, v6, v4

    const/4 p1, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v6, p1

    const/4 p1, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v6, p1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v6

    goto :goto_1

    :catch_0
    move-exception p1

    .line 882
    :try_start_2
    new-array p4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, p4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    .line 889
    :goto_1
    :try_start_3
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 890
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, p1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto/16 :goto_2

    :catch_1
    move-exception p4

    .line 884
    invoke-virtual {p4, p1}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 885
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Error creating LayoutManager "

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p1, p5, p4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception p1

    .line 904
    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Class is not a LayoutManager "

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    :catch_3
    move-exception p1

    .line 901
    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Cannot access non-public constructor "

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    :catch_4
    move-exception p1

    .line 898
    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    :catch_5
    move-exception p1

    .line 895
    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    :catch_6
    move-exception p1

    .line 892
    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Unable to find LayoutManager "

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    :cond_1
    :goto_2
    return-void
.end method

.method private createOrientationHelper()Landroidx/recyclerview/widget/OrientationHelper;
    .locals 2

    .line 768
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mLayoutStyle:Lcom/android/car/ui/recyclerview/d;

    invoke-interface {v0}, Lcom/android/car/ui/recyclerview/d;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 769
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-static {v0}, Landroidx/recyclerview/widget/OrientationHelper;->createVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    return-object v0

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-static {v0}, Landroidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    return-object v0
.end method

.method private createScrollBarFromConfig(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .line 796
    :try_start_0
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mScrollBarClass:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 797
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mScrollBarClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-class v0, Lcom/android/car/ui/recyclerview/j;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const/4 v1, 0x0

    .line 804
    :try_start_1
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x1

    .line 805
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 806
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/ui/recyclerview/o;

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mScrollBar:Lcom/android/car/ui/recyclerview/o;
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 812
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mScrollBar:Lcom/android/car/ui/recyclerview/o;

    iget-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-interface {v0, p1, v1, p2}, Lcom/android/car/ui/recyclerview/o;->a(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    .line 814
    iget p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mScrollBarPaddingTop:I

    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->getPaddingTop()I

    move-result p2

    add-int/2addr p1, p2

    iget p2, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mScrollBarPaddingBottom:I

    .line 815
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    .line 814
    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->setScrollBarPadding(II)V

    return-void

    :catch_0
    move-exception p1

    .line 808
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error creating scroll bar component: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mScrollBarClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 800
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error loading scroll bar component: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mScrollBarClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 915
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    .line 916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "."

    .line 918
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p2

    .line 921
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .line 172
    sget-object v0, Lcom/android/car/ui/e$j;->CarUiRecyclerView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/car/ui/e$b;->car_ui_scrollbar_enable:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mScrollBarEnabled:Z

    .line 179
    sget v2, Lcom/android/car/ui/e$g;->car_ui_recycler_view_no_scrollbar:I

    .line 181
    sget v3, Lcom/android/car/ui/e$j;->CarUiRecyclerView_carUiSize:I

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mSize:I

    .line 182
    iget-boolean v3, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mScrollBarEnabled:Z

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    .line 183
    iget v3, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mSize:I

    if-eqz v3, :cond_2

    if-eq v3, v5, :cond_1

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    sget v2, Lcom/android/car/ui/e$g;->car_ui_recycler_view:I

    goto :goto_0

    .line 188
    :cond_1
    sget v2, Lcom/android/car/ui/e$g;->car_ui_recycler_view_medium:I

    goto :goto_0

    .line 185
    :cond_2
    sget v2, Lcom/android/car/ui/e$g;->car_ui_recycler_view_small:I

    .line 195
    :cond_3
    :goto_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 196
    invoke-virtual {v3, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 197
    sget v3, Lcom/android/car/ui/e$e;->car_ui_recycler_view:I

    invoke-static {v2, v3}, Laiq;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 198
    instance-of v6, v3, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewContainer;

    if-eqz v6, :cond_4

    .line 201
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v3, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_1

    .line 203
    :cond_4
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v3, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 206
    :goto_1
    sget v3, Lcom/android/car/ui/e$j;->CarUiRecyclerView_rotaryScrollEnabled:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 208
    sget v6, Lcom/android/car/ui/e$j;->CarUiRecyclerView_android_orientation:I

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 210
    iget-object v7, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, v7, v3, v6}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->initRotaryScroll(Landroid/view/ViewGroup;ZI)V

    .line 212
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/android/car/ui/e$c;->car_ui_scrollbar_padding_top:I

    .line 213
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mScrollBarPaddingTop:I

    .line 214
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/android/car/ui/e$c;->car_ui_scrollbar_padding_bottom:I

    .line 215
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mScrollBarPaddingBottom:I

    .line 217
    sget v3, Lcom/android/car/ui/e$j;->CarUiRecyclerView_layoutStyle:I

    .line 218
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 219
    sget v6, Lcom/android/car/ui/e$j;->CarUiRecyclerView_numOfColumns:I

    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mNumOfColumns:I

    .line 220
    sget v4, Lcom/android/car/ui/e$j;->CarUiRecyclerView_enableDivider:I

    .line 221
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mEnableDividers:Z

    .line 223
    new-instance v4, Laio;

    sget v6, Lcom/android/car/ui/e$d;->car_ui_recyclerview_divider:I

    .line 224
    invoke-static {p1, v6}, Ldj;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {v4, v6}, Laio;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mDividerItemDecorationLinear:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 226
    new-instance v4, Lain;

    sget v6, Lcom/android/car/ui/e$d;->car_ui_divider:I

    .line 228
    invoke-static {p1, v6}, Ldj;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    sget v7, Lcom/android/car/ui/e$d;->car_ui_divider:I

    .line 229
    invoke-static {p1, v7}, Ldj;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget v8, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mNumOfColumns:I

    invoke-direct {v4, v6, v7, v8}, Lain;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    iput-object v4, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mDividerItemDecorationGrid:Lain;

    .line 232
    iput-boolean v5, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mIsInitialized:Z

    .line 235
    iget-object v4, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 237
    sget v4, Lcom/android/car/ui/e$j;->CarUiRecyclerView_layoutManager:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 238
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p1

    move-object v9, p2

    move v10, p3

    .line 239
    invoke-direct/range {v6 .. v11}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V

    goto :goto_2

    :cond_5
    if-ne v3, v5, :cond_6

    .line 241
    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->getContext()Landroid/content/Context;

    move-result-object p3

    iget v3, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mNumOfColumns:I

    invoke-direct {p2, p3, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, p2}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_2

    .line 245
    :cond_6
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 248
    :goto_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 250
    iget-boolean p2, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mScrollBarEnabled:Z

    if-nez p2, :cond_7

    return-void

    .line 254
    :cond_7
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVerticalScrollBarEnabled(Z)V

    .line 255
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHorizontalScrollBarEnabled(Z)V

    .line 257
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/car/ui/e$h;->car_ui_scrollbar_component:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mScrollBarClass:Ljava/lang/String;

    .line 258
    sget p2, Lcom/android/car/ui/e$e;->car_ui_scroll_bar:I

    invoke-static {v2, p2}, Laiq;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->createScrollBarFromConfig(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method private initRotaryScroll(Landroid/view/ViewGroup;ZI)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 566
    :goto_0
    invoke-static {p1, v1}, Lais;->a(Landroid/view/View;Z)V

    :cond_1
    const/4 p3, 0x0

    if-eqz p2, :cond_2

    .line 573
    new-instance v1, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiRecyclerViewImpl$JdGTJtXZUdN45TiWfZNVAnIEB40;

    invoke-direct {v1, p1}, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiRecyclerViewImpl$JdGTJtXZUdN45TiWfZNVAnIEB40;-><init>(Landroid/view/ViewGroup;)V

    goto :goto_1

    :cond_2
    move-object v1, p3

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 587
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    const/high16 v1, 0x20000

    .line 591
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 595
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setDefaultFocusHighlightEnabled(Z)V

    if-eqz p2, :cond_3

    .line 599
    new-instance p3, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiRecyclerViewImpl$nIIkbjdoyFICD8YWJrscDfPiBYk;

    invoke-direct {p3, p0}, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiRecyclerViewImpl$nIIkbjdoyFICD8YWJrscDfPiBYk;-><init>(Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;)V

    :cond_3
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    if-nez p2, :cond_4

    const-string p2, "com.android.car.ui.utils.ROTARY_CONTAINER"

    .line 605
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method static synthetic lambda$initRotaryScroll$0(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 574
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 575
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result p1

    const/high16 v0, 0x400000

    if-ne p1, v0, :cond_0

    .line 576
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/16 p2, 0x2002

    .line 577
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 578
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private setNumOfColumns(I)V
    .locals 1

    .line 632
    iput p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mNumOfColumns:I

    .line 633
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mDividerItemDecorationGrid:Lain;

    if-eqz p1, :cond_0

    .line 634
    iget v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mNumOfColumns:I

    invoke-virtual {p1, v0}, Lain;->a(I)V

    :cond_0
    return-void
.end method

.method private setScrollBarPadding(II)V
    .locals 1

    .line 714
    iget-boolean v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mScrollBarEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mScrollBar:Lcom/android/car/ui/recyclerview/o;

    if-eqz v0, :cond_0

    .line 715
    invoke-interface {v0, p1, p2}, Lcom/android/car/ui/recyclerview/o;->a(II)V

    :cond_0
    return-void
.end method

.method private static toInternalScrollState(I)I
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V

    return-void
.end method

.method public addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    return-void
.end method

.method public addOnLayoutCompleteListener(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mOnLayoutCompletedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addOnScrollListener(Lcom/android/car/ui/recyclerview/CarUiRecyclerView$c;)V
    .locals 2

    .line 443
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public canScrollHorizontally(I)Z
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result p1

    return p1
.end method

.method public canScrollVertically(I)Z
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p1

    return p1
.end method

.method public clearOnChildAttachStateChangeListeners()V
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->clearOnChildAttachStateChangeListeners()V

    return-void
.end method

.method public clearOnScrollListeners()V
    .locals 2

    .line 456
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 457
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public findFirstCompletelyVisibleItemPosition()I
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 507
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    return v0
.end method

.method public findFirstVisibleItemPosition()I
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 513
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    return v0
.end method

.method public findLastCompletelyVisibleItemPosition()I
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 519
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    return v0
.end method

.method public findLastVisibleItemPosition()I
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 525
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    return v0
.end method

.method public findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;"
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    return-object v0
.end method

.method public getChildLayoutPosition(Landroid/view/View;)I
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public getEndAfterPadding()I
    .locals 1

    .line 777
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mLayoutStyle:Lcom/android/car/ui/recyclerview/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 778
    :cond_0
    invoke-direct {p0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->createOrientationHelper()Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    return v0
.end method

.method public getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object p1

    return-object p1
.end method

.method public getItemDecorationCount()I
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    return v0
.end method

.method public getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutStyle()Lcom/android/car/ui/recyclerview/d;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mLayoutStyle:Lcom/android/car/ui/recyclerview/d;

    return-object v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .line 676
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public getRecyclerViewChildAt(I)Landroid/view/View;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRecyclerViewChildCount()I
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getScrollState()I
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    invoke-static {v0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->toInternalScrollState(I)I

    move-result v0

    return v0
.end method

.method public getStartAfterPadding()I
    .locals 1

    .line 783
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mLayoutStyle:Lcom/android/car/ui/recyclerview/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 784
    :cond_0
    invoke-direct {p0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->createOrientationHelper()Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    return v0
.end method

.method public getTotalSpace()I
    .locals 1

    .line 789
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mLayoutStyle:Lcom/android/car/ui/recyclerview/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 790
    :cond_0
    invoke-direct {p0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->createOrientationHelper()Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public hasFixedSize()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public invalidateItemDecorations()V
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    return-void
.end method

.method public isLayoutCompleted()Z
    .locals 1

    .line 361
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$initRotaryScroll$1$CarUiRecyclerViewImpl(Landroid/view/View;Z)V
    .locals 0

    .line 600
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mScrollBar:Lcom/android/car/ui/recyclerview/o;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/android/car/ui/recyclerview/o;->a(Z)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 640
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 641
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mCarUxRestrictionsUtil:Lair;

    iget-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mListener:Lair$a;

    invoke-virtual {v0, v1}, Lair;->a(Lair$a;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 646
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 647
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mCarUxRestrictionsUtil:Lair;

    iget-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mListener:Lair$a;

    invoke-virtual {v0, v1}, Lair;->b(Lair$a;)V

    return-void
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 1

    .line 696
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public removeItemDecorationAt(I)V
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    return-void
.end method

.method public removeOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    return-void
.end method

.method public removeOnLayoutCompleteListener(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mOnLayoutCompletedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeOnScrollListener(Lcom/android/car/ui/recyclerview/CarUiRecyclerView$c;)V
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 623
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mScrollListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 624
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 611
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 612
    iget-boolean v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mScrollBar:Lcom/android/car/ui/recyclerview/o;

    if-eqz v0, :cond_1

    .line 616
    invoke-interface {v0}, Lcom/android/car/ui/recyclerview/o;->b()V

    :cond_1
    return-void
.end method

.method public scrollBy(II)V
    .locals 1

    .line 706
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    return-void
.end method

.method public scrollToPosition(I)V
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    .line 737
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mScrollBar:Lcom/android/car/ui/recyclerview/o;

    if-eqz v0, :cond_0

    .line 740
    invoke-interface {v0, p1}, Lcom/android/car/ui/recyclerview/o;->a(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    instance-of v1, v0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView$b;

    if-eqz v1, :cond_1

    .line 743
    check-cast v0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView$b;

    invoke-interface {v0, p0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView$b;->b(Lcom/android/car/ui/recyclerview/CarUiRecyclerView;)V

    .line 745
    :cond_1
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 746
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 747
    instance-of v0, p1, Lcom/android/car/ui/recyclerview/CarUiRecyclerView$b;

    if-eqz v0, :cond_2

    .line 748
    check-cast p1, Lcom/android/car/ui/recyclerview/CarUiRecyclerView$b;

    invoke-interface {p1, p0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView$b;->a(Lcom/android/car/ui/recyclerview/CarUiRecyclerView;)V

    :cond_2
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const-string v1, "com.android.car.ui.utils.HORIZONTALLY_SCROLLABLE"

    .line 722
    invoke-virtual {v1, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.car.ui.utils.VERTICALLY_SCROLLABLE"

    .line 723
    invoke-virtual {v1, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 724
    :goto_0
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->getLayoutStyle()Lcom/android/car/ui/recyclerview/d;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 725
    :cond_2
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->getLayoutStyle()Lcom/android/car/ui/recyclerview/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/car/ui/recyclerview/d;->c()I

    move-result v0

    .line 726
    :goto_1
    iget-object v2, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, v2, v1, v0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->initRotaryScroll(Landroid/view/ViewGroup;ZI)V

    if-nez v1, :cond_3

    .line 731
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 1

    .line 759
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    return-void
.end method

.method public setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V
    .locals 1

    .line 754
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    .line 263
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 264
    invoke-static {p1}, Lcom/android/car/ui/recyclerview/b;->a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/android/car/ui/recyclerview/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->setLayoutStyle(Lcom/android/car/ui/recyclerview/d;)V

    goto :goto_0

    .line 266
    :cond_0
    invoke-static {p1}, Lcom/android/car/ui/recyclerview/e;->a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/android/car/ui/recyclerview/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->setLayoutStyle(Lcom/android/car/ui/recyclerview/d;)V

    :goto_0
    return-void
.end method

.method public setLayoutStyle(Lcom/android/car/ui/recyclerview/d;)V
    .locals 9

    .line 288
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mLayoutStyle:Lcom/android/car/ui/recyclerview/d;

    if-nez p1, :cond_0

    .line 290
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void

    .line 295
    :cond_0
    invoke-interface {p1}, Lcom/android/car/ui/recyclerview/d;->b()I

    move-result v0

    if-nez v0, :cond_1

    .line 296
    new-instance v0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl$2;

    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 297
    invoke-interface {p1}, Lcom/android/car/ui/recyclerview/d;->c()I

    move-result v2

    .line 298
    invoke-interface {p1}, Lcom/android/car/ui/recyclerview/d;->d()Z

    move-result p1

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl$2;-><init>(Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;Landroid/content/Context;IZ)V

    goto :goto_0

    .line 312
    :cond_1
    new-instance v0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl$3;

    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 313
    invoke-interface {p1}, Lcom/android/car/ui/recyclerview/d;->a()I

    move-result v6

    .line 314
    invoke-interface {p1}, Lcom/android/car/ui/recyclerview/d;->c()I

    move-result v7

    .line 315
    invoke-interface {p1}, Lcom/android/car/ui/recyclerview/d;->d()Z

    move-result v8

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl$3;-><init>(Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;Landroid/content/Context;IIZ)V

    .line 329
    instance-of v1, p1, Lcom/android/car/ui/recyclerview/b;

    if-eqz v1, :cond_2

    .line 330
    move-object v1, v0

    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager;

    check-cast p1, Lcom/android/car/ui/recyclerview/b;

    .line 331
    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/b;->e()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object p1

    .line 330
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 336
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mIsInitialized:Z

    if-eqz p1, :cond_3

    .line 337
    invoke-direct {p0, v0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->addItemDecorations(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 339
    :cond_3
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;)V
    .locals 1

    .line 764
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 3

    .line 652
    iget-boolean v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mScrollBarEnabled:Z

    if-eqz v0, :cond_0

    .line 653
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->findFirstVisibleItemPosition()I

    move-result v0

    .line 654
    iget v1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mScrollBarPaddingTop:I

    add-int/2addr v1, p2

    iget v2, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mScrollBarPaddingBottom:I

    add-int/2addr v2, p4

    invoke-direct {p0, v1, v2}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->setScrollBarPadding(II)V

    .line 656
    invoke-virtual {p0, v0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->scrollToPosition(I)V

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, v1, p4}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    .line 659
    invoke-super {p0, p1, v1, p3, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 3

    .line 664
    iget-boolean v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mScrollBarEnabled:Z

    if-eqz v0, :cond_0

    .line 665
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->findFirstVisibleItemPosition()I

    move-result v0

    .line 666
    iget v1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mScrollBarPaddingTop:I

    add-int/2addr v1, p2

    iget v2, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mScrollBarPaddingBottom:I

    add-int/2addr v2, p4

    invoke-direct {p0, v1, v2}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->setScrollBarPadding(II)V

    .line 668
    invoke-virtual {p0, v0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->scrollToPosition(I)V

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, v1, p4}, Landroidx/recyclerview/widget/RecyclerView;->setPaddingRelative(IIII)V

    .line 671
    invoke-super {p0, p1, v1, p3, v1}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    return-void
.end method

.method public setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 532
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_0
    return-void
.end method

.method public smoothScrollBy(II)V
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 1

    .line 691
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method
