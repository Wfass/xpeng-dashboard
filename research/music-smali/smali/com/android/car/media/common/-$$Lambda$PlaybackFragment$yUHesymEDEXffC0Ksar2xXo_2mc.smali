.class public final synthetic Lcom/android/car/media/common/-$$Lambda$PlaybackFragment$yUHesymEDEXffC0Ksar2xXo_2mc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Landroid/util/Size;

.field private final synthetic f$1:Lcom/android/car/apps/common/CrossfadeImageView;


# direct methods
.method public synthetic constructor <init>(Landroid/util/Size;Lcom/android/car/apps/common/CrossfadeImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/media/common/-$$Lambda$PlaybackFragment$yUHesymEDEXffC0Ksar2xXo_2mc;->f$0:Landroid/util/Size;

    iput-object p2, p0, Lcom/android/car/media/common/-$$Lambda$PlaybackFragment$yUHesymEDEXffC0Ksar2xXo_2mc;->f$1:Lcom/android/car/apps/common/CrossfadeImageView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/car/media/common/-$$Lambda$PlaybackFragment$yUHesymEDEXffC0Ksar2xXo_2mc;->f$0:Landroid/util/Size;

    iget-object v1, p0, Lcom/android/car/media/common/-$$Lambda$PlaybackFragment$yUHesymEDEXffC0Ksar2xXo_2mc;->f$1:Lcom/android/car/apps/common/CrossfadeImageView;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, p1}, Lcom/android/car/media/common/PlaybackFragment;->lambda$onCreateView$3(Landroid/util/Size;Lcom/android/car/apps/common/CrossfadeImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
