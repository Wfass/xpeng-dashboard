.class public final synthetic Lcom/android/car/media/common/-$$Lambda$PlaybackFragment$APhxhNehpSTgDijfSEU0Gd9eePw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/s;


# instance fields
.field private final synthetic f$0:Z

.field private final synthetic f$1:Landroid/view/View;

.field private final synthetic f$2:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(ZLandroid/view/View;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/car/media/common/-$$Lambda$PlaybackFragment$APhxhNehpSTgDijfSEU0Gd9eePw;->f$0:Z

    iput-object p2, p0, Lcom/android/car/media/common/-$$Lambda$PlaybackFragment$APhxhNehpSTgDijfSEU0Gd9eePw;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/android/car/media/common/-$$Lambda$PlaybackFragment$APhxhNehpSTgDijfSEU0Gd9eePw;->f$2:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/car/media/common/-$$Lambda$PlaybackFragment$APhxhNehpSTgDijfSEU0Gd9eePw;->f$0:Z

    iget-object v1, p0, Lcom/android/car/media/common/-$$Lambda$PlaybackFragment$APhxhNehpSTgDijfSEU0Gd9eePw;->f$1:Landroid/view/View;

    iget-object v2, p0, Lcom/android/car/media/common/-$$Lambda$PlaybackFragment$APhxhNehpSTgDijfSEU0Gd9eePw;->f$2:Landroid/widget/ImageView;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2, p1}, Lcom/android/car/media/common/PlaybackFragment;->lambda$onCreateView$1(ZLandroid/view/View;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method
