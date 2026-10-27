.class public final synthetic Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ADriveSystemManager$vZh6-PI5EjQ71LSCQVX7j8VPA7c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ADriveSystemManager$vZh6-PI5EjQ71LSCQVX7j8VPA7c;->f$0:Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ADriveSystemManager$vZh6-PI5EjQ71LSCQVX7j8VPA7c;->f$0:Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->lambda$observeData$3$ADriveSystemManager(Ljava/lang/Boolean;)V

    return-void
.end method
