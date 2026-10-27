.class Ldb$e;
.super Ljava/lang/Object;
.source "MotionLayout.java"

# interfaces
.implements Ldb$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# static fields
.field private static b:Ldb$e;


# instance fields
.field a:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1230
    new-instance v0, Ldb$e;

    invoke-direct {v0}, Ldb$e;-><init>()V

    sput-object v0, Ldb$e;->b:Ldb$e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Ldb$e;
    .locals 2

    .line 1233
    sget-object v0, Ldb$e;->b:Ldb$e;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, v0, Ldb$e;->a:Landroid/view/VelocityTracker;

    .line 1234
    sget-object v0, Ldb$e;->b:Ldb$e;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1239
    iget-object v0, p0, Ldb$e;->a:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1240
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 1241
    iput-object v0, p0, Ldb$e;->a:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 1261
    iget-object v0, p0, Ldb$e;->a:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1262
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1254
    iget-object v0, p0, Ldb$e;->a:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1255
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public b()F
    .locals 1

    .line 1275
    iget-object v0, p0, Ldb$e;->a:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1276
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()F
    .locals 1

    .line 1283
    iget-object v0, p0, Ldb$e;->a:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1284
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
