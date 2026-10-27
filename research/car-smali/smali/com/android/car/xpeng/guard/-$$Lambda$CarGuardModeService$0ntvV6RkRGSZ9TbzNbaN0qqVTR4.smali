.class public final synthetic Lcom/android/car/xpeng/guard/-$$Lambda$CarGuardModeService$0ntvV6RkRGSZ9TbzNbaN0qqVTR4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/car/xpeng/guard/CarGuardModeService;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/xpeng/guard/CarGuardModeService;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/xpeng/guard/-$$Lambda$CarGuardModeService$0ntvV6RkRGSZ9TbzNbaN0qqVTR4;->f$0:Lcom/android/car/xpeng/guard/CarGuardModeService;

    iput p2, p0, Lcom/android/car/xpeng/guard/-$$Lambda$CarGuardModeService$0ntvV6RkRGSZ9TbzNbaN0qqVTR4;->f$1:I

    iput p3, p0, Lcom/android/car/xpeng/guard/-$$Lambda$CarGuardModeService$0ntvV6RkRGSZ9TbzNbaN0qqVTR4;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/car/xpeng/guard/-$$Lambda$CarGuardModeService$0ntvV6RkRGSZ9TbzNbaN0qqVTR4;->f$0:Lcom/android/car/xpeng/guard/CarGuardModeService;

    iget v1, p0, Lcom/android/car/xpeng/guard/-$$Lambda$CarGuardModeService$0ntvV6RkRGSZ9TbzNbaN0qqVTR4;->f$1:I

    iget v2, p0, Lcom/android/car/xpeng/guard/-$$Lambda$CarGuardModeService$0ntvV6RkRGSZ9TbzNbaN0qqVTR4;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/android/car/xpeng/guard/CarGuardModeService;->lambda$dispatchCarGuardModeLevel$1(Lcom/android/car/xpeng/guard/CarGuardModeService;II)V

    return-void
.end method
