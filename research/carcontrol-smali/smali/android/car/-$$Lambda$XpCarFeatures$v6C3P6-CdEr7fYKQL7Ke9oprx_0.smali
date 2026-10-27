.class public final synthetic Landroid/car/-$$Lambda$XpCarFeatures$v6C3P6-CdEr7fYKQL7Ke9oprx_0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:[I


# direct methods
.method public synthetic constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/-$$Lambda$XpCarFeatures$v6C3P6-CdEr7fYKQL7Ke9oprx_0;->f$0:[I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/car/-$$Lambda$XpCarFeatures$v6C3P6-CdEr7fYKQL7Ke9oprx_0;->f$0:[I

    check-cast p1, Landroid/view/Display;

    invoke-static {v0, p1}, Landroid/car/XpCarFeatures;->lambda$getICMPhysicalSize$1([ILandroid/view/Display;)V

    return-void
.end method
