.class public final synthetic Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$pi7q3LTN90Hji5r1YOBVSjjqDSI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$pi7q3LTN90Hji5r1YOBVSjjqDSI;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    iput p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$pi7q3LTN90Hji5r1YOBVSjjqDSI;->f$1:I

    iput p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$pi7q3LTN90Hji5r1YOBVSjjqDSI;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$pi7q3LTN90Hji5r1YOBVSjjqDSI;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$pi7q3LTN90Hji5r1YOBVSjjqDSI;->f$1:I

    iget v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$ArsViewModel$pi7q3LTN90Hji5r1YOBVSjjqDSI;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->lambda$handleArsFoldStateChange$8$ArsViewModel(II)V

    return-void
.end method
