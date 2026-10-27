.class Lcom/android/car/CarProjectionService$2;
.super Ljava/lang/Object;
.source "CarProjectionService.java"

# interfaces
.implements Lcom/android/car/CarInputService$KeyEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarProjectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/CarProjectionService;


# direct methods
.method constructor <init>(Lcom/android/car/CarProjectionService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/CarProjectionService;

    .line 54
    iput-object p1, p0, Lcom/android/car/CarProjectionService$2;->this$0:Lcom/android/car/CarProjectionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 57
    iget-object v0, p0, Lcom/android/car/CarProjectionService$2;->this$0:Lcom/android/car/CarProjectionService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/car/CarProjectionService;->access$000(Lcom/android/car/CarProjectionService;Z)V

    .line 58
    return v1
.end method
