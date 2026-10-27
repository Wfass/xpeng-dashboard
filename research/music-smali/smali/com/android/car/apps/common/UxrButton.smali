.class public Lcom/android/car/apps/common/UxrButton;
.super Landroid/widget/TextView;
.source "UxrButton.java"


# static fields
.field private static final a:[I


# instance fields
.field private b:Lair;

.field private c:Landroid/car/drivingstate/CarUxRestrictions;

.field private d:Landroid/view/View$OnClickListener;

.field private e:I

.field private final f:Landroid/os/Handler;

.field private final g:Lair$a;

.field private final h:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 45
    new-array v0, v0, [I

    sget v1, Lcom/android/car/apps/common/h$b;->state_ux_restricted:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lcom/android/car/apps/common/UxrButton;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 71
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/car/apps/common/UxrButton;->f:Landroid/os/Handler;

    .line 56
    new-instance v0, Lcom/android/car/apps/common/-$$Lambda$UxrButton$oxQoQfQYN1pOdc-byQNMcunBS7M;

    invoke-direct {v0, p0}, Lcom/android/car/apps/common/-$$Lambda$UxrButton$oxQoQfQYN1pOdc-byQNMcunBS7M;-><init>(Lcom/android/car/apps/common/UxrButton;)V

    iput-object v0, p0, Lcom/android/car/apps/common/UxrButton;->g:Lair$a;

    .line 59
    new-instance v0, Lcom/android/car/apps/common/-$$Lambda$UxrButton$EqvprQT3VEgZjrsWkDMGiNfjJZE;

    invoke-direct {v0, p0}, Lcom/android/car/apps/common/-$$Lambda$UxrButton$EqvprQT3VEgZjrsWkDMGiNfjJZE;-><init>(Lcom/android/car/apps/common/UxrButton;)V

    iput-object v0, p0, Lcom/android/car/apps/common/UxrButton;->h:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, v0}, Lcom/android/car/apps/common/UxrButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/car/apps/common/UxrButton;->f:Landroid/os/Handler;

    .line 56
    new-instance v0, Lcom/android/car/apps/common/-$$Lambda$UxrButton$oxQoQfQYN1pOdc-byQNMcunBS7M;

    invoke-direct {v0, p0}, Lcom/android/car/apps/common/-$$Lambda$UxrButton$oxQoQfQYN1pOdc-byQNMcunBS7M;-><init>(Lcom/android/car/apps/common/UxrButton;)V

    iput-object v0, p0, Lcom/android/car/apps/common/UxrButton;->g:Lair$a;

    .line 59
    new-instance v0, Lcom/android/car/apps/common/-$$Lambda$UxrButton$EqvprQT3VEgZjrsWkDMGiNfjJZE;

    invoke-direct {v0, p0}, Lcom/android/car/apps/common/-$$Lambda$UxrButton$EqvprQT3VEgZjrsWkDMGiNfjJZE;-><init>(Lcom/android/car/apps/common/UxrButton;)V

    iput-object v0, p0, Lcom/android/car/apps/common/UxrButton;->h:Landroid/view/View$OnClickListener;

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/car/apps/common/UxrButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    iput-object p3, p0, Lcom/android/car/apps/common/UxrButton;->f:Landroid/os/Handler;

    .line 56
    new-instance p3, Lcom/android/car/apps/common/-$$Lambda$UxrButton$oxQoQfQYN1pOdc-byQNMcunBS7M;

    invoke-direct {p3, p0}, Lcom/android/car/apps/common/-$$Lambda$UxrButton$oxQoQfQYN1pOdc-byQNMcunBS7M;-><init>(Lcom/android/car/apps/common/UxrButton;)V

    iput-object p3, p0, Lcom/android/car/apps/common/UxrButton;->g:Lair$a;

    .line 59
    new-instance p3, Lcom/android/car/apps/common/-$$Lambda$UxrButton$EqvprQT3VEgZjrsWkDMGiNfjJZE;

    invoke-direct {p3, p0}, Lcom/android/car/apps/common/-$$Lambda$UxrButton$EqvprQT3VEgZjrsWkDMGiNfjJZE;-><init>(Lcom/android/car/apps/common/UxrButton;)V

    iput-object p3, p0, Lcom/android/car/apps/common/UxrButton;->h:Landroid/view/View$OnClickListener;

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/car/apps/common/UxrButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    iput-object p3, p0, Lcom/android/car/apps/common/UxrButton;->f:Landroid/os/Handler;

    .line 56
    new-instance p3, Lcom/android/car/apps/common/-$$Lambda$UxrButton$oxQoQfQYN1pOdc-byQNMcunBS7M;

    invoke-direct {p3, p0}, Lcom/android/car/apps/common/-$$Lambda$UxrButton$oxQoQfQYN1pOdc-byQNMcunBS7M;-><init>(Lcom/android/car/apps/common/UxrButton;)V

    iput-object p3, p0, Lcom/android/car/apps/common/UxrButton;->g:Lair$a;

    .line 59
    new-instance p3, Lcom/android/car/apps/common/-$$Lambda$UxrButton$EqvprQT3VEgZjrsWkDMGiNfjJZE;

    invoke-direct {p3, p0}, Lcom/android/car/apps/common/-$$Lambda$UxrButton$EqvprQT3VEgZjrsWkDMGiNfjJZE;-><init>(Lcom/android/car/apps/common/UxrButton;)V

    iput-object p3, p0, Lcom/android/car/apps/common/UxrButton;->h:Landroid/view/View$OnClickListener;

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/car/apps/common/UxrButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 1

    .line 141
    iput-object p1, p0, Lcom/android/car/apps/common/UxrButton;->c:Landroid/car/drivingstate/CarUxRestrictions;

    .line 142
    iget-object p1, p0, Lcom/android/car/apps/common/UxrButton;->f:Landroid/os/Handler;

    new-instance v0, Lcom/android/car/apps/common/-$$Lambda$UxrButton$Al6ixzgWZz8yniH5UarPhCqlFbI;

    invoke-direct {v0, p0}, Lcom/android/car/apps/common/-$$Lambda$UxrButton$Al6ixzgWZz8yniH5UarPhCqlFbI;-><init>(Lcom/android/car/apps/common/UxrButton;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 91
    invoke-static {p1}, Lair;->a(Landroid/content/Context;)Lair;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/apps/common/UxrButton;->b:Lair;

    .line 92
    iget-object v0, p0, Lcom/android/car/apps/common/UxrButton;->h:Landroid/view/View$OnClickListener;

    invoke-super {p0, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    sget-object v0, Lcom/android/car/apps/common/h$j;->UxrButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 95
    :try_start_0
    sget p2, Lcom/android/car/apps/common/h$j;->UxrButton_carUxRestrictions:I

    const/16 v0, 0x1ff

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/android/car/apps/common/UxrButton;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    throw p2
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/car/apps/common/UxrButton;->d:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-direct {p0}, Lcom/android/car/apps/common/UxrButton;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/android/car/apps/common/UxrButton;->a()V

    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/android/car/apps/common/UxrButton;->d:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private b()Z
    .locals 2

    .line 137
    iget v0, p0, Lcom/android/car/apps/common/UxrButton;->e:I

    iget-object v1, p0, Lcom/android/car/apps/common/UxrButton;->c:Landroid/car/drivingstate/CarUxRestrictions;

    invoke-static {v0, v1}, Lair;->a(ILandroid/car/drivingstate/CarUxRestrictions;)Z

    move-result v0

    return v0
.end method

.method private synthetic c()V
    .locals 0

    .line 142
    invoke-virtual {p0}, Lcom/android/car/apps/common/UxrButton;->refreshDrawableState()V

    return-void
.end method

.method private synthetic d()V
    .locals 0

    .line 133
    invoke-virtual {p0}, Lcom/android/car/apps/common/UxrButton;->refreshDrawableState()V

    return-void
.end method

.method public static synthetic lambda$1HdtAKqRJS5ES59EDtMjwS8j0Zk(Lcom/android/car/apps/common/UxrButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/car/apps/common/UxrButton;->d()V

    return-void
.end method

.method public static synthetic lambda$Al6ixzgWZz8yniH5UarPhCqlFbI(Lcom/android/car/apps/common/UxrButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/car/apps/common/UxrButton;->c()V

    return-void
.end method

.method public static synthetic lambda$EqvprQT3VEgZjrsWkDMGiNfjJZE(Lcom/android/car/apps/common/UxrButton;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/apps/common/UxrButton;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$oxQoQfQYN1pOdc-byQNMcunBS7M(Lcom/android/car/apps/common/UxrButton;Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/apps/common/UxrButton;->a(Landroid/car/drivingstate/CarUxRestrictions;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .line 149
    invoke-virtual {p0}, Lcom/android/car/apps/common/UxrButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/car/apps/common/h$i;->restricted_while_driving:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 118
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 119
    iget-object v0, p0, Lcom/android/car/apps/common/UxrButton;->b:Lair;

    iget-object v1, p0, Lcom/android/car/apps/common/UxrButton;->g:Lair$a;

    invoke-virtual {v0, v1}, Lair;->a(Lair$a;)V

    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 104
    invoke-super {p0, p1}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 105
    invoke-direct {p0}, Lcom/android/car/apps/common/UxrButton;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Lcom/android/car/apps/common/UxrButton;->a:[I

    invoke-static {p1, v0}, Lcom/android/car/apps/common/UxrButton;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 124
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 125
    iget-object v0, p0, Lcom/android/car/apps/common/UxrButton;->b:Lair;

    iget-object v1, p0, Lcom/android/car/apps/common/UxrButton;->g:Lair$a;

    invoke-virtual {v0, v1}, Lair;->b(Lair$a;)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/android/car/apps/common/UxrButton;->d:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setUxRestrictions(I)V
    .locals 1

    .line 132
    iput p1, p0, Lcom/android/car/apps/common/UxrButton;->e:I

    .line 133
    iget-object p1, p0, Lcom/android/car/apps/common/UxrButton;->f:Landroid/os/Handler;

    new-instance v0, Lcom/android/car/apps/common/-$$Lambda$UxrButton$1HdtAKqRJS5ES59EDtMjwS8j0Zk;

    invoke-direct {v0, p0}, Lcom/android/car/apps/common/-$$Lambda$UxrButton$1HdtAKqRJS5ES59EDtMjwS8j0Zk;-><init>(Lcom/android/car/apps/common/UxrButton;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
