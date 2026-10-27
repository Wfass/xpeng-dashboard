.class public final synthetic L-$$Lambda$ais$5NnwLA-O11YrJkRDQoYDEAVUsVA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private final synthetic f$0:Landroid/view/View;

.field private final synthetic f$1:Lais$a;

.field private final synthetic f$2:[Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final synthetic f$3:[Ljava/lang/Runnable;

.field private final synthetic f$4:[Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lais$a;[Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;[Ljava/lang/Runnable;[Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L-$$Lambda$ais$5NnwLA-O11YrJkRDQoYDEAVUsVA;->f$0:Landroid/view/View;

    iput-object p2, p0, L-$$Lambda$ais$5NnwLA-O11YrJkRDQoYDEAVUsVA;->f$1:Lais$a;

    iput-object p3, p0, L-$$Lambda$ais$5NnwLA-O11YrJkRDQoYDEAVUsVA;->f$2:[Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object p4, p0, L-$$Lambda$ais$5NnwLA-O11YrJkRDQoYDEAVUsVA;->f$3:[Ljava/lang/Runnable;

    iput-object p5, p0, L-$$Lambda$ais$5NnwLA-O11YrJkRDQoYDEAVUsVA;->f$4:[Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 5

    iget-object v0, p0, L-$$Lambda$ais$5NnwLA-O11YrJkRDQoYDEAVUsVA;->f$0:Landroid/view/View;

    iget-object v1, p0, L-$$Lambda$ais$5NnwLA-O11YrJkRDQoYDEAVUsVA;->f$1:Lais$a;

    iget-object v2, p0, L-$$Lambda$ais$5NnwLA-O11YrJkRDQoYDEAVUsVA;->f$2:[Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object v3, p0, L-$$Lambda$ais$5NnwLA-O11YrJkRDQoYDEAVUsVA;->f$3:[Ljava/lang/Runnable;

    iget-object v4, p0, L-$$Lambda$ais$5NnwLA-O11YrJkRDQoYDEAVUsVA;->f$4:[Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3, v4}, Lais;->lambda$5NnwLA-O11YrJkRDQoYDEAVUsVA(Landroid/view/View;Lais$a;[Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;[Ljava/lang/Runnable;[Ljava/lang/Runnable;)V

    return-void
.end method
