.class Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a$1;
.super Ljava/lang/Object;
.source "FixedIndicatorView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a$1;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    mul-float v1, p1, p1

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    add-float/2addr v1, v0

    return v1
.end method
